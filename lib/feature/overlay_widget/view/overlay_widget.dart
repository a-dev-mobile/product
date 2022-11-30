import 'package:dio_log/dio_log.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:product/app/style/style.dart';

import 'package:product/core/widget/widget.dart';
import 'package:product/feature/debug_menu/debug_menu.dart';
import 'package:product/feature/overlay_widget/overlay_widget.dart';
import 'package:product/navigation/navigation.dart';

import '../../../app/common_cubits/common_cubits.dart';

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
            Positioned(
              bottom: 0,
              left: 0,
              child: Text(
                widget.goRouterState.location,
                style: AppTextStyle.BOLD_18(color: Colors.red),
              ),
            ),
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
                  style: AppTextStyle.BOLD_18(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
