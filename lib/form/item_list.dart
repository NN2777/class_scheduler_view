import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../warna/custom_warna.dart';
import '../screens/editschedule.dart';
import '../model/database.dart';
import 'package:url_launcher/url_launcher.dart';

class ItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: Database.readItems(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Text('Something went wrong');
        } else if (snapshot.hasData || snapshot.data != null) {
          return ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(height: 8.0),
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              var noteInfo = snapshot.data!.docs[index].data()!;
              String docID = snapshot.data!.docs[index].id;
              String titleMatkul = noteInfo['titleMatkul'];
              String jamMatkul = noteInfo['jamMatkul'];
              String linkKelas = noteInfo['linkKelas'];
              String linkAbsen = noteInfo['linkAbsen'];
              String _url = 'https://flutter.dev';

              void _launchAbsen() async {
                if (!await launch(_url)) throw 'Could not launch $_url';
              }

              void _launchKelas() async {
                if (!await launch(_url)) throw 'Could not launch $_url';
              }

              return Ink(
                decoration: BoxDecoration(
                  //color: CustomColors.firebaseGrey.withOpacity(0.1),
                  color: CustomColors.firebaseGrey,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EditScreen(
                        currentTitleMatkul: titleMatkul,
                        currentJamMatkul: jamMatkul,
                        currentlinkKelas: linkKelas,
                        currentlinkAbsen: linkAbsen,
                        documentId: docID,
                      ),
                    ),
                  ),
                  leading: Text(
                    titleMatkul,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Column(
                    children: [
                      Text(
                        jamMatkul,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      GestureDetector(
                        child: Text(
                          linkAbsen,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        onTap: _launchAbsen,
                      ),
                    ],
                  ),
                  trailing: IconButton(
                    icon: const Icon(
                      Icons.link_rounded,
                    ),
                    onPressed: _launchKelas,
                  ),
                ),
              );
            },
          );
        }

        return const Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(
              CustomColors.appPurple2,
            ),
          ),
        );
      },
    );
  }
}
