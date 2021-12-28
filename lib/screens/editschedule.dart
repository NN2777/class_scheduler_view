import 'package:flutter/material.dart';
import '../warna/custom_warna.dart';
import '../model/database.dart';
import '../form/app_bar_title.dart';
import '../form/edit_item_form.dart';

class EditScreen extends StatefulWidget {
  final String currentTitleMatkul;
  final String currentJamMatkul;
  final String currentlinkKelas;
  final String currentlinkAbsen;
  final String documentId;

  EditScreen({
    required this.currentTitleMatkul,
    required this.currentJamMatkul,
    required this.currentlinkKelas,
    required this.currentlinkAbsen,
    required this.documentId,
  });

  @override
  _EditScreenState createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  final FocusNode _titleMatkulFocusNode = FocusNode();
  final FocusNode _jamMatkulFocusNode = FocusNode();
  final FocusNode _linkKelasFocusNode = FocusNode();
  final FocusNode _linkAbsenFocusNode = FocusNode();

  bool _isDeleting = false;

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
          actions: [
            _isDeleting
                ? const Padding(
                    padding: EdgeInsets.only(
                      top: 10.0,
                      bottom: 10.0,
                      right: 16.0,
                    ),
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        Colors.redAccent,
                      ),
                      strokeWidth: 3,
                    ),
                  )
                : IconButton(
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.redAccent,
                      size: 32,
                    ),
                    onPressed: () async {
                      setState(() {
                        _isDeleting = true;
                      });

                      await Database.deleteItem(
                        docId: widget.documentId,
                      );

                      setState(() {
                        _isDeleting = false;
                      });

                      Navigator.of(context).pop();
                    },
                  ),
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              bottom: 20.0,
            ),
            child: EditItemForm(
              documentId: widget.documentId,
              titleMatkulFocusNode: _titleMatkulFocusNode,
              jamMatkulFocusNode: _jamMatkulFocusNode,
              linkKelasFocusNode: _linkKelasFocusNode,
              linkAbsenFocusNode: _linkAbsenFocusNode,
              currentTitleMatkul: widget.currentTitleMatkul,
              currentJamMatkul: widget.currentJamMatkul,
              currentlinkKelas: widget.currentlinkKelas,
              currentlinkAbsen: widget.currentlinkAbsen,
            ),
          ),
        ),
      ),
    );
  }
}
