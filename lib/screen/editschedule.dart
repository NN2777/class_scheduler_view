import 'package:flutter/material.dart';

void main() {
  runApp(EditSchedule());
}

class EditSchedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.list_outlined,
                size: 34,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Text(
                'Scheduler',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'SCHEDULER',
                    style: TextStyle(fontFamily: 'Poppins', fontSize: 24.0),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                    padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                    child: Text(
                      'Nama Hari',
                      style: TextStyle(fontFamily: 'Poppins', fontSize: 34.0),
                    )),
                Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      'dd-mm-yy',
                      style: TextStyle(fontFamily: 'Poppins'),
                    )),
                Container(
                  width: MediaQuery.of(context).size.width * 0.64,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 0, right: 0, top: 10, bottom: 10),
                        child: Text(
                          'Nama Matkul',
                          style: TextStyle(fontFamily: 'Poppins'),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 2.0,
                            color: Color(0xffD2D2DC),
                          ),
                          borderRadius: BorderRadius.circular(5),
                          // boxShadow: [
                          //   BoxShadow(
                          //     offset: Offset(0, 10),
                          //     blurRadius: 50,
                          //     color: Colors.grey,
                          //   ),
                          // ],
                        ),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 8, right: 8),
                              child: Icon(
                                Icons.book_online,
                                color: Colors.grey,
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                onChanged: (value) {},
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,

                                  // surffix isn't working properly  with SVG
                                  // thats why we use row
                                  // suffixIcon: SvgPicture.asset("assets/icons/search.svg"),
                                ),
                              ),
                            ),
                            // SvgPicture.asset("assets/icons/search.svg"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 0, right: 0, top: 10, bottom: 10),
                        child: Text(
                          'Jam',
                          style: TextStyle(fontFamily: 'Poppins'),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 2.0,
                            color: Color(0xffD2D2DC),
                          ),
                          borderRadius: BorderRadius.circular(0),
                          // boxShadow: [
                          //   BoxShadow(
                          //     offset: Offset(0, 10),
                          //     blurRadius: 50,
                          //     color: Colors.grey,
                          //   ),
                          // ],
                        ),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 8, right: 8),
                              child: Icon(
                                Icons.access_time,
                                color: Colors.grey,
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                onChanged: (value) {},
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  // surffix isn't working properly  with SVG
                                  // thats why we use row
                                  // suffixIcon: SvgPicture.asset("assets/icons/search.svg"),
                                ),
                              ),
                            ),
                            // SvgPicture.asset("assets/icons/search.svg"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 0, right: 0, top: 10, bottom: 10),
                        child: Text(
                          'Link Zoom',
                          style: TextStyle(fontFamily: 'Poppins'),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 2.0,
                            color: Color(0xffD2D2DC),
                          ),
                          borderRadius: BorderRadius.circular(0),
                          // boxShadow: [
                          //   BoxShadow(
                          //     offset: Offset(0, 10),
                          //     blurRadius: 50,
                          //     color: Colors.grey,
                          //   ),
                          // ],
                        ),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 8, right: 8),
                              child: Icon(
                                Icons.link,
                                color: Colors.grey,
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                onChanged: (value) {},
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  // surffix isn't working properly  with SVG
                                  // thats why we use row
                                  // suffixIcon: SvgPicture.asset("assets/icons/search.svg"),
                                ),
                              ),
                            ),
                            // SvgPicture.asset("assets/icons/search.svg"),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 0, right: 0, top: 10, bottom: 10),
                        child: Text(
                          'Link Absen',
                          style: TextStyle(fontFamily: 'Poppins'),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 2.0,
                            color: Color(0xffD2D2DC),
                          ),
                          borderRadius: BorderRadius.circular(0),
                          // boxShadow: [
                          //   BoxShadow(
                          //     offset: Offset(0, 10),
                          //     blurRadius: 50,
                          //     color: Colors.grey,
                          //   ),
                          // ],
                        ),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 8, right: 8),
                              child: Icon(
                                Icons.link_sharp,
                                color: Colors.grey,
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                onChanged: (value) {},
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  // surffix isn't working properly  with SVG
                                  // thats why we use row
                                  // suffixIcon: SvgPicture.asset("assets/icons/search.svg"),
                                ),
                              ),
                            ),
                            // SvgPicture.asset("assets/icons/search.svg"),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: 44,
                            decoration: BoxDecoration(
                              color: Color(0xff43426D),
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 10),
                                  blurRadius: 50,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                            child: TextButton(
                              style: TextButton.styleFrom(
                                textStyle: const TextStyle(fontSize: 20),
                              ),
                              onPressed: () {},
                              child: const Text('SAVE',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Poppins',
                                      fontSize: 14)),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.04,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: 44,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 10),
                                  blurRadius: 50,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                            child: TextButton(
                              style: TextButton.styleFrom(
                                textStyle: const TextStyle(fontSize: 20),
                              ),
                              onPressed: () {},
                              child: const Text('NO',
                                  style: TextStyle(
                                      color: Color(0xff43426D),
                                      fontFamily: 'Poppins',
                                      fontSize: 14)),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
