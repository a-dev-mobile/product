// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:product/core/storage/storage.dart';
import 'package:product/core/widget/page_load.dart';
import 'package:product/feature/category/category.dart';

import 'package:product/navigation/navigation.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  static const path = '/category';
  static const name = 'category';
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CategoryCubit(
            router: context.read<AppRouter>(),
            storage: context.read<LocalStorage>(),
          )..load(),
        ),
      ],
      child: const _CategoryPage(),
    );
  }
}

class _CategoryPage extends StatelessWidget {
  const _CategoryPage();

  @override
  Widget build(BuildContext context) {
    // final l = context.l10n;
    final cubit = context.read<CategoryCubit>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Категория'),
      ),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: BlocBuilder<CategoryCubit, CategoryState>(
              // buildWhen: (p, c) => p.isLoad != c.isLoad,
              builder: (context, state) {
                if (state.isLoad) return const PageLoad();

                return ListView(
                  shrinkWrap: true,
                  children: [
                    for (var i in state.categories)
                      RadioListTile<bool>(
                        title: Text(i.name),
                        value: i.isActive,
                        groupValue: true,
                        // ignore: prefer-extracting-callbacks
                        onChanged: (v) {
                          cubit
                            ..selected(value: !v!, category: i)
                            ..goBack(context);
                        },
                      ),
                  ],
                );
              },
            ),
          ),
      ),
    );
  }
}
