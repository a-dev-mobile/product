import 'package:flutter/material.dart';

class SearchField extends StatefulWidget {
  const SearchField({
    super.key,
    required this.onChanged,
    required this.onClean,
    required this.initText,
  });

  final void Function(String value)? onChanged;
  final void Function() onClean;
  final String initText;
  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController(text: widget.initText);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: widget.onChanged,
      keyboardType: TextInputType.name,
      // autofocus: true,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          icon: const Icon(Icons.clear),
          // ignore: prefer-extracting-callbacks
          onPressed: () {
            controller.text = '';
            widget.onClean();
          },
        ),
        // labelText: 'Найти продукт',
        hintText: 'Найти продукт',
        // fillColor: Theme.of(context).colorScheme.onSecondary,

        focusedBorder: InputBorder.none,
        border: InputBorder.none,
        enabledBorder: InputBorder.none,
      ),
    );
  }
}
