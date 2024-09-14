import 'package:flutter/material.dart';
import 'package:medmap/screen/map/map.dart';
class emergencybody extends StatefulWidget {
  const emergencybody({Key? key}) : super(key: key);

  @override
  State<emergencybody> createState() => _emergencybodyState();
}

class _emergencybodyState extends State<emergencybody> {
  List<Map<String, dynamic>> data = [
    {
      "msg1": "Thrikkakara Municipal Co-operative Hospital",
      "text1": "3km",

    },
    {
      "msg1": "Sunrise Hospital",
      "text1": "4.9km",

    },
  ];

  @override
  Widget build(BuildContext context) {
    return
        Container(
          height: 600,
          child: Container(
            height: 500,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    margin: EdgeInsets.only(left: 15, right: 10, top: 5),
                    height: 180,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 25,top: 25),
                          child: Text(
                                data[index]["msg1"],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontFamily: "Manjari"),
                              ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 25,top: 25),
                          child: Text(
                            data[index]["text1"],
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize: 23,
                                fontFamily: "Manjari"),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              child: Container(
                                padding: EdgeInsets.only(right: 10,bottom: 10),
                                child: Center(
                                  child: Icon(
                                    Icons.directions,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => map(),),);
                                });
                              },
                            ),
                            InkWell(
                              child: Container(
                                padding: EdgeInsets.only(right: 10,bottom: 10),
                                child: Center(
                                  child: Icon(
                                    Icons.public,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  // Navigator.push(
                                  //   context,
                                  //   PageTransition(
                                  //       type: PageTransitionType.rightToLeft,
                                  //       child: Exer(data: data[index]),
                                  //       duration: Duration(milliseconds: 400)
                                  //   ),
                                  // );
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //     builder: (context) =>
                                  //         Exer(data: data[index]),
                                  //   ),
                                  // );
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ));
              },
            ),
          ),

    );
  }
}
