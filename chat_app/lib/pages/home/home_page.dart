import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;

  HomePage({this.title});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MainAxisAlignment mainAxisAlignment;

  @override
  void initState() {
    mainAxisAlignment = MainAxisAlignment.start;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.white,
                    ),
                    //TODO Create Animation with change of Application theme
                    child: Row(
                      mainAxisAlignment: mainAxisAlignment,
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (mainAxisAlignment == MainAxisAlignment.start) {
                              setState(() {
                                mainAxisAlignment = MainAxisAlignment.end;
                              });
                            } else {
                              setState(() {
                                mainAxisAlignment = MainAxisAlignment.start;
                              });
                            }
                          },
                          child: Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: TextButton(
                child: Text('Enter chat'),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
