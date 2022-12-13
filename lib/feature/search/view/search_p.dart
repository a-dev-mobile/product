// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:product/core/storage/local_storage.dart';
import 'package:product/core/widget/clean_focus.dart';
import 'package:product/core/widget/page_load.dart';
import 'package:product/data_base/data_base.dart';
import 'package:product/feature/search/search.dart';
import 'package:product/l10n/l10n.dart';
import 'package:product/navigation/app_router.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  static const path = '/search-page';
  static const name = 'search_page';

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SearchBloc(
            storage: context.read<LocalStorage>(),
            db: context.read<AppDatabase>(),
            router: context.read<AppRouter>(),
            cubitLocale: context.read(),
          )..add(const SearchEventStarted()),
        ),
      ],
      child: const _SearchView(),
    );
  }
}

class _SearchView extends StatelessWidget {
  const _SearchView();

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SearchBloc>();
    final l = context.l10n;

    return ClearFocus(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BlocBuilder<SearchBloc, SearchState>(
                buildWhen: (p, c) => p.validSearch.value != c.validSearch.value,
                builder: (context, state) {
                  return SearchField(
                    onChanged: (String value) =>
                        bloc.add(SearchEventFind(find: value, l: l)),
                    onClean: () => bloc.add(const SearchEventClean()),
                    initText: state.validSearch.value,
                  );
                },
              ),
              Expanded(
                child: BlocBuilder<SearchBloc, SearchState>(
                  buildWhen: (p, c) => p.statusSearch != c.statusSearch,
                  builder: (context, state) {
                    // print('--${state.statusSearch}');
                    if (state.statusSearch.isInitial) {
                      if (state.lastEnterTexts.isEmpty) {
                        return const Center(
                          child: Text('введите текст поиска'),
                        );
                      }

                      return ListView(
                        children: [
                          const Text('Вы недавно искали'),
                          for (var item in state.lastEnterTexts)
                            ListTile(
                              title: Text(item),
                              onTap: () =>
                                  bloc.add(SearchEventFind(find: item, l: l)),
                              leading: const Icon(Icons.access_time_outlined),
                              trailing: IconButton(
                                icon: const Icon(Icons.delete),
                                onPressed: () {},
                              ),
                            ),
                        ],
                      );
                    }
                    if (state.statusSearch.isSuccess) {
                      return Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BlocBuilder<SearchBloc, SearchState>(
                                buildWhen: (p, c) =>
                                    p.isShowMenuSelectedCategory !=
                                        c.isShowMenuSelectedCategory ||
                                    p.isUpdateSelectedCategory !=
                                        c.isUpdateSelectedCategory,
                                builder: (context, state) {
                                  return Row(
                                    children: [
                                      Visibility(
                                        visible:
                                            state.isShowMenuSelectedCategory,
                                        child: IconButton(
                                          onPressed: () => bloc
                                            ..add(
                                              SearchEventGoToCategories(
                                                context,
                                              ),
                                            ),
                                          icon: const Icon(Icons.menu),
                                        ),
                                      ),
                                      Expanded(
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            children: [
                                              for (var v in state.categories)
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    right: 8,
                                                  ),
                                                  child: ChoiceChip(
                                                    label: Text(v.name),
                                                    selected: v.isActive,
                                                    onSelected: (value) =>
                                                        bloc.add(
                                                      SearchEventChangeActiveCategory(
                                                        v.name,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                              Expanded(
                                child: BlocBuilder<SearchBloc, SearchState>(
                                  buildWhen: (p, c) =>
                                      p.isUpdateListProduct !=
                                      c.isUpdateListProduct,
                                  builder: (context, state) {
                                    return ListView.builder(
                                      itemCount: state.listProducts.length,
                                      itemBuilder: (context, i) {
                                        final product = state.listProducts[i];

                                        return SearchItem(
                                          product: product,
                                          onDecrement: () => bloc.add(
                                            SearchEventDecrementWeight(
                                              id: product.id,
                                            ),
                                          ),
                                          onIncrement: () => bloc.add(
                                            SearchEventIncrementWeight(
                                              id: product.id,
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                          // ProductFilter(
                          //   onSort: () {},
                          //   onFilter: () {
                          //     print('filter');
                          //   },
                          // ignore: prefer-extracting-callbacks
                          // onSort: () => showModalBottomSheet<void>(
                          //   context: context,
                          //   builder: (context) {
                          //     return SortBottomSheet(
                          //       cubit: cubitSort,
                          //     );
                          // },
                          // ),
                          // ),
                        ],
                      );
                    }
                    if (state.statusSearch.isEmpty) {
                      return const Center(child: Text('пусто'));
                    }

                    // if (state is SearchStateError) {
                    //   return AppErrorMsg(msg: state.msg);
                    // }
                    if (state.statusSearch.isFailure) {
                      return Center(child: Text('ошибка ${state.msgError}'));
                    }
                    return const PageLoad();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
