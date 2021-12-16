import 'package:flutter/material.dart';

import '../model/mapel.dart';

class MapelDialog extends StatefulWidget {
  final Mapel? mapel;
  final Function(String title, String kelas, String jam) onClickedDone;

  const MapelDialog({
    Key? key,
    this.mapel,
    required this.onClickedDone,
  }) : super(key: key);

  @override
  _MapelDialogState createState() => _MapelDialogState();
}

class _MapelDialogState extends State<MapelDialog> {
  final formKey = GlobalKey<FormState>();
  final titleController = TextEditingController();
  final kelasController = TextEditingController();
  final jamController = TextEditingController();

  bool isExpense = true;

  @override
  void initState() {
    super.initState();

    if (widget.mapel != null) {
      final mapel = widget.mapel!;

      titleController.text = mapel.title;
      kelasController.text = mapel.kelas;
      jamController.text = mapel.jam;
    }
  }

  @override
  void dispose() {
    titleController.dispose();
    kelasController.dispose();
    jamController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isEditing = widget.mapel != null;
    final title = isEditing ? 'Edit mapel' : 'Add mapel';

    return AlertDialog(
      title: Text(title),
      content: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(height: 8),
              buildTitle(),
              SizedBox(height: 8),
              buildKelas(),
              SizedBox(height: 8),
              buildJam(),
            ],
          ),
        ),
      ),
      actions: <Widget>[
        buildCancelButton(context),
        buildAddButton(context, isEditing: isEditing),
      ],
    );
  }

  Widget buildTitle() => TextFormField(
        controller: titleController,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Enter Mapel Title',
        ),
        validator: (title) =>
            title != null && title.isEmpty ? 'Enter a Mapel Title' : null,
      );

  Widget buildKelas() => TextFormField(
        controller: kelasController,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Enter Kelas',
        ),
        validator: (kelas) =>
            kelas != null && kelas.isEmpty ? 'Enter a link kelas' : null,
      );
  Widget buildJam() => TextFormField(
        controller: jamController,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Enter Jam',
        ),
        validator: (jam) => jam != null && jam.isEmpty ? 'Enter a jam' : null,
      );

  Widget buildCancelButton(BuildContext context) => TextButton(
        child: Text('Cancel'),
        onPressed: () => Navigator.of(context).pop(),
      );

  Widget buildAddButton(BuildContext context, {required bool isEditing}) {
    final text = isEditing ? 'Save' : 'Add';

    return TextButton(
      child: Text(text),
      onPressed: () async {
        final isValid = formKey.currentState!.validate();

        if (isValid) {
          final title = titleController.text;
          final kelas = kelasController.text;
          final jam = jamController.text;
          widget.onClickedDone(title, kelas, jam);

          Navigator.of(context).pop();
        }
      },
    );
  }
}
