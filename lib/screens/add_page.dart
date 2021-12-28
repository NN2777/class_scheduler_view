import 'package:flutter/material.dart';
import '../warna/custom_warna.dart';
import '../form/add_item_form.dart';
import '../form/app_bar_title.dart';

class AddScreen extends StatelessWidget {
  final FocusNode _titleMatkulFocusNode = FocusNode();
  final FocusNode _jamMatkulFocusNode = FocusNode();
  final FocusNode _linkKelasFocusNode = FocusNode();
  final FocusNode _linkAbsenFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _titleMatkulFocusNode.unfocus();
        _jamMatkulFocusNode.unfocus();
        _linkKelasFocusNode.unfocus();
        _linkAbsenFocusNode.unfocus();
      },
      child: Scaffold(
        backgroundColor: CustomColors.colorBackground,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: CustomColors.appPurple2,
          title: AppBarTitle(),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              bottom: 20.0,
            ),
            child: AddItemForm(
              titleMatkulFocusNode: _titleMatkulFocusNode,
              jamMatkulFocusNode: _jamMatkulFocusNode,
              linkKelasFocusNode: _linkKelasFocusNode,
              linkAbsenFocusNode: _linkAbsenFocusNode,
            ),
          ),
        ),
      ),
    );
  }
}
