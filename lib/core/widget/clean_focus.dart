import 'package:flutter/widgets.dart';

class ClearFocus extends StatelessWidget {
  const ClearFocus({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        // final focusScope = FocusScope.of(context);

        // Wrong way
        // focusScope.unfocus();

        // Method1
        // if (!focusScope.hasPrimaryFocus) {
        //   focusScope.focusedChild?.unfocus();
        // }

        // Method2
        FocusManager.instance.primaryFocus?.unfocus();

        // Method3
        // WidgetsBinding.instance?.focusManager.primaryFocus?.unfocus();
      },
      child: child,
    );
  }
}
