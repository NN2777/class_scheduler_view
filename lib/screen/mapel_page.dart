import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../boxes.dart';
import '../model/mapel.dart';
import 'mapel_dialog.dart';

class MapelPage extends StatefulWidget {
  @override
  _MapelPageState createState() => _MapelPageState();
}

class _MapelPageState extends State<MapelPage> {
  @override
  void dispose() {
    Hive.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Class Scheduller'),
          centerTitle: true,
        ),
        body: ValueListenableBuilder<Box<Mapel>>(
          valueListenable: Boxes.getMapels().listenable(),
          builder: (context, box, _) {
            final mapels = box.values.toList().cast<Mapel>();

            return buildContent(mapels);
          },
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => showDialog(
            context: context,
            builder: (context) => MapelDialog(
              onClickedDone: addMapel,
            ),
          ),
        ),
      );

  Widget buildContent(List<Mapel> mapels) {
    if (mapels.isEmpty) {
      return Center(
        child: Text(
          'No Mapels yet!',
          style: TextStyle(fontSize: 24),
        ),
      );
    } else {
      return Column(
        children: [
          SizedBox(height: 24),
          Text(
            'Jadwal Matakuliah',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.green,
            ),
          ),
          SizedBox(height: 24),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(8),
              itemCount: mapels.length,
              itemBuilder: (BuildContext context, int index) {
                final mapel = mapels[index];

                return buildMapel(context, mapel);
              },
            ),
          ),
        ],
      );
    }
  }

  Widget buildMapel(
    BuildContext context,
    Mapel mapel,
  ) {
    final title = mapel.title;
    final kelas = mapel.kelas;
    final jam = mapel.jam;

    return Card(
      color: Colors.white,
      child: ExpansionTile(
        tilePadding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
        title: Text(
          title,
          maxLines: 2,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        subtitle: Text(jam),
        trailing: Text(
          kelas,
          style: TextStyle(
              color: Colors.green, fontWeight: FontWeight.bold, fontSize: 16),
        ),
        children: [
          buildButtons(context, mapel),
        ],
      ),
    );
  }

  Widget buildButtons(BuildContext context, Mapel mapel) => Row(
        children: [
          Expanded(
            child: TextButton.icon(
              label: Text('Edit'),
              icon: Icon(Icons.edit),
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => MapelDialog(
                    mapel: mapel,
                    onClickedDone: (title, kelas, jam) =>
                        editMapel(mapel, title, kelas, jam),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: TextButton.icon(
              label: Text('Delete'),
              icon: Icon(Icons.delete),
              onPressed: () => deleteMapel(mapel),
            ),
          )
        ],
      );

  Future addMapel(String title, String kelas, String jam) async {
    final mapel = Mapel()
      ..title = title
      ..jam = jam
      ..kelas = kelas;

    final box = Boxes.getMapels();
    box.add(mapel);
  }

  void editMapel(
    Mapel mapel,
    String title,
    String kelas,
    String jam,
  ) {
    mapel.title = title;
    mapel.kelas = kelas;
    mapel.jam = jam;

    mapel.save();
  }

  void deleteMapel(Mapel mapel) {
    mapel.delete();
  }
}
