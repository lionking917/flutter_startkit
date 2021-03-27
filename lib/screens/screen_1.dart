import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_prj/constant/colors.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key key}) : super(key: key);

  static const routeName = '/screen_1';

  @override
  Widget build(BuildContext context) => Container(
      color: Color(0xFFE5E5E5),
      padding: EdgeInsets.only(left: 16, right: 16),
      child: SafeArea(
          child: Center(
              child: Container(
                  constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height - 48),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    color: ProjectColor.white,
                  ),
                  child: Wrap(
                    children: [
                      Stack(
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    top: 16, left: 16, right: 16),
                                child: Text('Title',
                                    style: TextStyle(
                                        color: ProjectColor.black,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                margin: EdgeInsets.all(16),
                                child: Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis convallis justo non nisi placerat maximus.',
                                    style: TextStyle(
                                        color: ProjectColor.black,
                                        fontSize: 14)),
                              ),
                              IntrinsicHeight(
                                  child: Container(
                                      constraints:
                                          BoxConstraints(maxHeight: 400),
                                      child: Scrollbar(
                                        child: SingleChildScrollView(
                                            scrollDirection: Axis.vertical,
                                            child: Container(
                                              padding: EdgeInsets.all(16),
                                              color: Color(0xFFDFDEDE),
                                              child: Text(
                                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis convallis justo non nisi placerat maximus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis convallis justo non nisi placerat maximus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis convallis justo non nisi placerat maximus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis convallis justo non nisi placerat maximus.Duis convallis justo non nisi placerat maximus.Duis convallis justo non nisi placerat maximus.Duis convallis justo non nisi placerat maximus.Duis convallis justo non nisi placerat maximus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis convallis justo non nisi placerat maximus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis convallis justo non nisi placerat maximus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis convallis justo non nisi placerat maximus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis convallis justo non nisi placerat maximus.Duis convallis justo non nisi placerat maximus.Duis convallis justo non nisi placerat maximus.Duis convallis justo non nisi placerat maximus.Duis convallis justo non nisi placerat maximus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis convallis justo non nisi placerat maximus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis convallis justo non nisi placerat maximus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis convallis justo non nisi placerat maximus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis convallis justo non nisi placerat maximus.Duis convallis justo non nisi placerat maximus.Duis convallis justo non nisi placerat maximus.Duis convallis justo non nisi placerat maximus.Duis convallis justo non nisi placerat maximus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis convallis justo non nisi placerat maximus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis convallis justo non nisi placerat maximus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis convallis justo non nisi placerat maximus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis convallis justo non nisi placerat maximus.Duis convallis justo non nisi placerat maximus.Duis convallis justo non nisi placerat maximus.Duis convallis justo non nisi placerat maximus.Duis convallis justo non nisi placerat maximus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis convallis justo non nisi placerat maximus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis convallis justo non nisi placerat maximus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis convallis justo non nisi placerat maximus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis convallis justo non nisi placerat maximus.Duis convallis justo non nisi placerat maximus.Duis convallis justo non nisi placerat maximus.Duis convallis justo non nisi placerat maximus.Duis convallis justo non nisi placerat maximus.',
                                                  style: TextStyle(
                                                      color: ProjectColor.black,
                                                      fontSize: 14)),
                                            )),
                                      ))),
                              Container(
                                  padding: EdgeInsets.all(16),
                                  child: SizedBox(
                                      width: 140,
                                      height: 44,
                                      child: ElevatedButton(
                                          child: Text('TEST BUTTON',
                                              style: TextStyle(
                                                  color: ProjectColor.white,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold)),
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Color(0xFFDB00FF)),
                                              shape: MaterialStateProperty.all<
                                                      RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                              ))),
                                          onPressed: () {})))
                            ],
                          ),
                          Positioned(
                              top: 10,
                              right: 10,
                              child: GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Icon(
                                    Icons.close,
                                    color: ProjectColor.black,
                                    size: 30,
                                  )))
                        ],
                      )
                    ],
                  )))));
}
