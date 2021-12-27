import 'package:flutter/material.dart';

void main() {
  runApp(EditSchedule());
}

class EditSchedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scheduler'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Text('SCHEDULER'),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: Text(
                  'Nama Hari',
                  style: Theme.of(context).textTheme.headline4,
                )),
            Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  'dd-mm-yy',
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
                      style: TextStyle(fontFamily: 'Keep Calm'),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 2.0, color: Colors.purple),
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
                      style: TextStyle(fontFamily: 'Keep Calm'),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Colors.white,
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
                      style: TextStyle(fontFamily: 'Keep Calm'),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Colors.white,
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
                      style: TextStyle(fontFamily: 'Keep Calm'),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Colors.white,
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
