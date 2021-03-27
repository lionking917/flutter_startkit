import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_prj/constant/colors.dart';
import 'package:test_prj/providers/base_items_provider.dart';
import 'package:test_prj/providers/horizontal_items.dart';
import 'package:test_prj/providers/vertical_items.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key key}) : super(key: key);

  static const routeName = '/screen_2';

  @override
  Widget build(BuildContext context) {
    var horizontalItemsProvider = new HorizontalItemsProvider();
    var verticalItemsProvider = new VerticalItemsProvider();

    return Container(
        color: ProjectColor.white,

        child: SafeArea(
            child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 76),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    child: Text(
                        'Section 1 (${horizontalItemsProvider.itemsCount})',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: ProjectColor.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold)),
                  ),
                  Scrollbar(
                      child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: getWidgets(context, horizontalItemsProvider))),
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    child: Text(
                        'Section 2 (${verticalItemsProvider.itemsCount})',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: ProjectColor.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold)),
                  ),
                  Expanded(
                      child: Scrollbar(
                          child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: getWidgets(context, verticalItemsProvider,
                                  isHorizontal: false))))
                ],
              ),
            ),
            Positioned(
                top: 28,
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
        )));
  }

  Widget getWidgets(BuildContext context, BaseItemsProvider itemsProvider,
      {bool isHorizontal = true}) {
    List<Widget> list = <Widget>[];
    for (var i = 0; i < itemsProvider.itemsCount; i++) {
      list.add(Container(
        width: isHorizontal ? 350 : MediaQuery.of(context).size.width - 32,
        height: 150,
        margin: EdgeInsets.only(
            left: isHorizontal
                ? i == 0
                    ? 16
                    : 8
                : 16,
            right: isHorizontal
                ? i == itemsProvider.itemsCount - 1
                    ? 16
                    : 8
                : 16,
            top: isHorizontal
                ? 16
                : i == 0
                    ? 16
                    : 8,
            bottom: isHorizontal
                ? 16
                : i == itemsProvider.itemsCount - 1
                    ? 16
                    : 8),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: ProjectColor.white,
          borderRadius: BorderRadius.all(Radius.circular(16)),
          boxShadow: [
            BoxShadow(
                color: ProjectColor.black.withOpacity(0.25), blurRadius: 16),
          ],
        ),
        child: Text(itemsProvider.generateItemAt(i + 1),
            style: TextStyle(
                color: ProjectColor.black,
                fontSize: 24,
                fontWeight: FontWeight.bold)),
      ));
    }
    if (isHorizontal) {
      return Row(children: list);
    } else {
      return Column(children: list);
    }
  }
}
