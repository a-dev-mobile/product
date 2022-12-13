import 'package:dio_log/dio_log.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:product/app/common_cubits/common_cubits.dart';
import 'package:product/app/style/style.dart';

import 'package:product/core/widget/widget.dart';

import 'package:product/feature/debug_menu/debug_menu.dart';
import 'package:product/feature/overlay_widget/overlay_widget.dart';
import 'package:product/global_const.dart';

class OverlayWidget extends StatefulWidget {
  const OverlayWidget({
    super.key,
    required this.child,
    required this.goRouterState,
  });
  final Widget child;
  final GoRouterState goRouterState;

  @override
  State<OverlayWidget> createState() => _OverlayWidgetState();
}

class _OverlayWidgetState extends State<OverlayWidget> {
  @override
  void initState() {
    super.initState();

    context.read<InternetCubit>().check();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<RemoteConfigCubit, RemoteConfigState>(
          listener: (context, state) {
            if (state.isNeedUpdate) {
              final _ = showModalBottomSheet<void>(
                context: context,
                enableDrag: false,
                isDismissible: false,
                useRootNavigator: true,
                isScrollControlled: true,
                builder: (context) {
                  return const IgnorePopView(child: UpdateAppPage());
                },
              );
            }
          },
        ),
        BlocListener<DebugCubit, DebugState>(
          listenWhen: (p, c) => p.isShowBtnHttpLog != c.isShowBtnHttpLog,
          listener: (context, state) {
            if (state.isShowBtnHttpLog) {
              final _ = showDebugBtn(context);
            } else {
              final _ = dismissDebugBtn();
            }
          },
        ),
      ],
      child: Scaffold(
        body: Stack(
          children: [
            widget.child,
            BlocBuilder<InternetCubit, bool?>(
              builder: (context, state) => SnackbarInternet(isVisible: state),
            ),
            if (IS_DEBUG)
              Positioned(
                bottom: 0,
                left: 0,
                child: Text(
                  widget.goRouterState.location,
                  style: AppTextStyles.s20w600h24(Colors.red),
                ),
              ),
            if (IS_DEBUG)
              Positioned(
                bottom: 2,
                right: 10,
                child: OutlinedButton(
                  style: TextButton.styleFrom(
                    minimumSize: Size.zero,
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  onPressed: () =>
                      GoRouter.of(context).pushNamed(DebugMenuPage.name),
                  child: Text(
                    'debug',
                    style: AppTextStyles.s20w600h24(),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
