import 'package:flutter/material.dart';
import 'package:new_farah/presentation/base/style/resours/string_manger.dart';
import 'package:new_farah/presentation/base/style/resours/value_app.dart';

import '../../base/style/resours/color_manger.dart';
import '../../base/style/resours/string _app.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   //   backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(StringManger.doaa ,style: TextStyle(color:  Colors.teal),),
      ),
      body: ListView.separated(
        itemCount: list.length,
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.only(left: AppSize.p10, right:AppSize.p10),
            child: Card(  elevation: 10,
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppSize.p20),
                    color: Colors.teal,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all( AppSize.p8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ListTile(
                            trailing: CircleAvatar(
                              backgroundColor: ColorManger.white,
                              child: ListView.builder(
                                  itemCount: listAssma.length,
                                  itemBuilder: (context, i) {
                                    return Text(
                                      listAssma[i],
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          color:  ColorManger.blue,
                                          fontSize: AppFon.fo20),
                                    );
                                  }),
                            ),
                            title: Text(
                              list[i],
                              textAlign: TextAlign.right,
                              style: const TextStyle(
                                  color:ColorManger.white, fontSize: AppSize.p22),
                            )),
                      ],
                    ),
                  )),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            height: 13,
          );
        },
      ),
    );
  }
}
