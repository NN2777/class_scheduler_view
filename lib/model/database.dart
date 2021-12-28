import 'package:cloud_firestore/cloud_firestore.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final CollectionReference _mainCollection = _firestore.collection('kuliah');

class Database {
  static String? userUid;

  static Future<void> addItem({
    required String titleMatkul,
    required String jamMatkul,
    required String linkKelas,
    required String linkAbsen,
  }) async {
    DocumentReference documentReferencer =
        _mainCollection.doc(userUid).collection('items').doc();

    Map<String, dynamic> data = <String, dynamic>{
      "titleMatkul": titleMatkul,
      "jamMatkul": jamMatkul,
      "linkKelas": linkKelas,
      "linkAbsen": linkAbsen,
    };

    await documentReferencer
        .set(data)
        .whenComplete(
            () => print("The course data has been added to the Database"))
        .catchError((e) => print(e));
  }

  static Future<void> updateItem({
    required String titleMatkul,
    required String jamMatkul,
    required String linkKelas,
    required String linkAbsen,
    required String docId,
  }) async {
    DocumentReference documentReferencer =
        _mainCollection.doc(userUid).collection('items').doc(docId);

    Map<String, dynamic> data = <String, dynamic>{
      "titleMatkul": titleMatkul,
      "jamMatkul": jamMatkul,
      "linkKelas": linkKelas,
      "linkAbsen": linkAbsen,
    };

    await documentReferencer
        .update(data)
        .whenComplete(
            () => print("The course data has been updated to the Database"))
        .catchError((e) => print(e));
  }

  static Stream<QuerySnapshot> readItems() {
    CollectionReference kuliahItemCollection =
        _mainCollection.doc(userUid).collection('items');

    return kuliahItemCollection.snapshots();
  }

  static Future<void> deleteItem({
    required String docId,
  }) async {
    DocumentReference documentReferencer =
        _mainCollection.doc(userUid).collection('items').doc(docId);

    await documentReferencer
        .delete()
        .whenComplete(
            () => print('The course data has been deleted from the Database'))
        .catchError((e) => print(e));
  }
}
