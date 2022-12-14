// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product/app/style/style.dart';

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
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: BlocBuilder<SearchBloc, SearchState>(
          buildWhen: (p, c) => p.categories.length != c.categories.length,
          builder: (context, state) {
            return Visibility(
              visible: state.categories.isNotEmpty,
              child: FloatingActionButton(
                onPressed: () {},
                child: const Icon(Icons.swap_vert),
              ),
            );
          },
        ),
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SearchField(),
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
                          ListTile(
                            title: Text(
                              l.you_recently_searched,
                              style: AppTextStyles.h4(),
                            ),
                          ),
                          for (var item in state.lastEnterTexts)
                            ListTile(
                              title: Text(item),
                              onTap: () =>
                                  bloc.add(SearchEventFind(find: item, l: l)),
                              leading: const Icon(Icons.history),
                              trailing: IconButton(
                                icon: const Icon(Icons.clear),
                                onPressed: () {},
                              ),
                            ),
                        ],
                      );
                    }
                    if (state.statusSearch.isSuccess) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          _BuildCategories(),
                          _BuildListProducts(),
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

class _BuildListProducts extends StatelessWidget {
  const _BuildListProducts();

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SearchBloc>();

    return Expanded(
      child: BlocBuilder<SearchBloc, SearchState>(
        buildWhen: (p, c) =>
            p.isUpdateListProduct != c.isUpdateListProduct ||
            p.productsFileredLength != c.productsFileredLength,
        builder: (context, state) {
          return ListView.builder(
            padding: const EdgeInsets.only(bottom: 100),
            itemCount: state.productsFiltered.length,
            itemBuilder: (context, i) {
              final product = state.productsFiltered[i];

              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                ),
                child: SearchItem(
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
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class _BuildCategories extends StatelessWidget {
  const _BuildCategories();

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SearchBloc>();


    return BlocBuilder<SearchBloc, SearchState>(
      buildWhen: (p, c) =>
          p.isShowMenuSelectedCategory != c.isShowMenuSelectedCategory ||
          p.productsFileredLength != c.productsFileredLength,
      builder: (context, state) {
        return Row(
          children: [
            Visibility(
              visible: state.isShowMenuSelectedCategory,
              child: IconButton(
                onPressed: () => bloc
                  ..add(
                    SearchEventFindSelectedCategory(
                      context: context,
                      isOpenPageCategories: true,
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
                        padding: const EdgeInsets.only(
                          right: 8,
                        ),
                        child: ChoiceChip(
                          label: Text(v.name),
                          selected: v.isActive,
                          // ignore: prefer-extracting-callbacks
                          onSelected: (value) {
                            // bloc.add(
                            //   SearchEventFindSelectedCategory(idCategory: v.id),
                            // );

                            if (value) {
                              bloc.add(
                                SearchEventFindSelectedCategory(
                                  context: context,
                                  idCategory: v.id,
                                ),
                              );
                            }
                          },
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
