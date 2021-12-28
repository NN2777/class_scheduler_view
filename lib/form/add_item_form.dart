import 'package:flutter/material.dart';
import '../warna/custom_warna.dart';
import '../model/database.dart';
import '../model/validator.dart';

import 'custom_form_field.dart';

class AddItemForm extends StatefulWidget {
  final FocusNode titleMatkulFocusNode;
  final FocusNode jamMatkulFocusNode;
  final FocusNode linkKelasFocusNode;
  final FocusNode linkAbsenFocusNode;

  const AddItemForm({
    required this.titleMatkulFocusNode,
    required this.jamMatkulFocusNode,
    required this.linkKelasFocusNode,
    required this.linkAbsenFocusNode,
  });

  @override
  _AddItemFormState createState() => _AddItemFormState();
}

class _AddItemFormState extends State<AddItemForm> {
  final _addItemFormKey = GlobalKey<FormState>();

  bool _isProcessing = false;

  final TextEditingController _titleMatkulController = TextEditingController();
  final TextEditingController _jamMatkulController = TextEditingController();
  final TextEditingController _linkKelasController = TextEditingController();
  final TextEditingController _linkAbsenController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _addItemFormKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
              right: 8.0,
              bottom: 12.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 12.0),
                const Text(
                  'Course Name',
                  style: TextStyle(
                    color: CustomColors.appPurple1,
                    fontSize: 22.0,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                CustomFormField(
                  isLabelEnabled: false,
                  controller: _titleMatkulController,
                  focusNode: widget.titleMatkulFocusNode,
                  keyboardType: TextInputType.text,
                  inputAction: TextInputAction.next,
                  validator: (value) => Validator.validateField(
                    value: value,
                  ),
                  label: 'Course Name',
                  hint: 'Please Enter Course Name',
                ),
                const SizedBox(height: 12.0),
                const Text(
                  'Course Time',
                  style: TextStyle(
                    color: CustomColors.appPurple1,
                    fontSize: 22.0,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                CustomFormField(
                  isLabelEnabled: false,
                  controller: _jamMatkulController,
                  focusNode: widget.jamMatkulFocusNode,
                  keyboardType: TextInputType.text,
                  inputAction: TextInputAction.next,
                  validator: (value) => Validator.validateField(
                    value: value,
                  ),
                  label: 'Course Time',
                  hint: 'Please Enter Course Time',
                ),
                const SizedBox(height: 12.0),
                const Text(
                  'Class Link Absen',
                  style: TextStyle(
                    color: CustomColors.appPurple1,
                    fontSize: 22.0,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                CustomFormField(
                  isLabelEnabled: false,
                  controller: _linkAbsenController,
                  focusNode: widget.linkAbsenFocusNode,
                  keyboardType: TextInputType.text,
                  inputAction: TextInputAction.next,
                  validator: (value) => Validator.validateField(
                    value: value,
                  ),
                  label: 'Class link Absen',
                  hint: 'Please Enter Link for Absen',
                ),
                const SizedBox(height: 12.0),
                const Text(
                  'Class Link Meet',
                  style: TextStyle(
                    color: CustomColors.appPurple1,
                    fontSize: 22.0,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                CustomFormField(
                  isLabelEnabled: false,
                  controller: _linkKelasController,
                  focusNode: widget.linkKelasFocusNode,
                  keyboardType: TextInputType.text,
                  inputAction: TextInputAction.next,
                  validator: (value) => Validator.validateField(
                    value: value,
                  ),
                  label: 'Class Link Meet',
                  hint: 'Please Enter Class Link for Online Meeting',
                ),
              ],
            ),
          ),
          _isProcessing
              ? const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                      CustomColors.appPurple3,
                    ),
                  ),
                )
              : Container(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        CustomColors.appPurple1,
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () async {
                      widget.titleMatkulFocusNode.unfocus();
                      widget.jamMatkulFocusNode.unfocus();
                      widget.linkKelasFocusNode.unfocus();
                      widget.linkAbsenFocusNode.unfocus();

                      if (_addItemFormKey.currentState!.validate()) {
                        setState(() {
                          _isProcessing = true;
                        });

                        await Database.addItem(
                          titleMatkul: _titleMatkulController.text,
                          jamMatkul: _jamMatkulController.text,
                          linkKelas: _linkKelasController.text,
                          linkAbsen: _linkAbsenController.text,
                        );

                        setState(() {
                          _isProcessing = false;
                        });

                        Navigator.of(context).pop();
                      }
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
                      child: Text(
                        'ADD ITEM',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: CustomColors.firebaseGrey,
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
