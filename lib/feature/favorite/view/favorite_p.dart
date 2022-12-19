import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product/core/widget/page_load.dart';

import 'package:product/feature/favorite/favorite.dart';
import 'package:product/l10n/l10n.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});
  static const path = '/favorite';
  static const name = 'favorite';

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FavoriteCubit(db: context.read(), storage: context.read())
                ..load(),
        ),
      ],
      child: const _FavoritePage(),
    );
  }
}

class _FavoritePage extends StatelessWidget {
  const _FavoritePage();

  @override
  Widget build(BuildContext context) {
    // final cubit = context.read<FavoriteCubit>();
    final l = context.l10n;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text(l.favorite)),
        body: BlocBuilder<FavoriteCubit, FavoriteState>(
          buildWhen: (p, c) => p.isLoad != c.isLoad,
          builder: (context, state) {
            if (state.isLoad) return const PageLoad();

            return ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              itemCount: state.uiModel.length,
              itemBuilder: (context, index) {
                final i = state.uiModel[index];
                
                return ListTile(
                  title: Text(i.name),
                  subtitle: Text(i.weight.toString()),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
