import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product/core/utils/utils.dart';
import 'package:product/feature/search/bloc/bloc.dart';
import 'package:product/l10n/l10n.dart';

class WeightField extends StatefulWidget {
  const WeightField({
    super.key,
    required this.weight,
    required this.idProduct,
  });

  final int weight;
  final int idProduct;
  @override
  State<WeightField> createState() => _WeightFieldState();
}

class _WeightFieldState extends State<WeightField> {
  late final TextEditingController _controller;
  final FocusNode myFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();

    _controller = TextEditingController(
      text: MyNumberFormat.weight(widget.weight),
    );

    myFocusNode.addListener(() {
      if (!myFocusNode.hasFocus) {
        context.read<SearchBloc>().add(
              SearchEventUpdateUnfocusWeight(
                id: widget.idProduct,
                weight: int.parse(_controller.text),
              ),
            );
      }
    });
  }

  @override
  void dispose() {
    myFocusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    log(myFocusNode.toString());
    final l = context.l10n;

    return SizedBox(
      width: 100,
      child: TextField(
        focusNode: myFocusNode,
        textAlign: TextAlign.center,
        controller: _controller,
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(6),
          FilteringTextInputFormatter.digitsOnly,
        ],
        onChanged: (value) {},
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 8),
          suffix: Text(
            l.g,
          ),
          // for ND
        ),
      ),
    );
  }
}
