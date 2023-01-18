import 'package:flutter/material.dart';

import 'global.dart';


class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {

  bool switchvalue = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 20,bottom: 30,right: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Common",style: TextStyle(color: Colors.red,fontWeight: FontWeight.w700),),
              ],
            ),
          ),
          ...All.map((e) =>
              Container(
                height: 70,
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        Column(
                          children: [
                            Container(
                              child: e['icon'],
                            ),
                          ],
                        ),
                        SizedBox(width: 35,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10.0),
                              child: Text("${e['title']}",style: TextStyle(color: Colors.black,fontSize: 20),),
                            ),
                            Text("${e['subtitle']},",style: TextStyle(color: Colors.grey,fontSize: 18),),
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      endIndent: 15,
                      indent: 15,
                      thickness: 1,
                      color: Colors.black26,
                    ),
                  ],
                ),
              ),
          ).toList(),
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 20,bottom: 30,right: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Account",style: TextStyle(color: Colors.red,fontWeight: FontWeight.w700),),
              ],
            ),
          ),
          ...All2.map((e) =>
              Container(
                height: 70,
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        Container(
                          child: e['icon1'],
                        ),
                        SizedBox(width: 35,),
                        Text("${e['title1']}",style: TextStyle(color: Colors.black,fontSize: 20),)
                      ],
                    ),
                    SizedBox(height: 15,),
                    Divider(
                      endIndent: 15,
                      indent: 15,
                      thickness: 1,
                      color: Colors.black26,
                    ),
                  ],
                ),
              ),
          ).toList(),
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 20,bottom: 30,right: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Security",style: TextStyle(color: Colors.red,fontWeight: FontWeight.w700),),
              ],
            ),
          ),
          ...All3.map((e) =>
              Container(
                height: 70,
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        Container(
                          child: e['icon2'],
                        ),
                        SizedBox(width: 35,),
                        Text("${e['title2']}",style: TextStyle(color: Colors.black,fontSize: 20),),
                        Spacer(),
                        Switch(
                          activeColor: Colors.red,
                            value: e['value'],
                            onChanged: (val) {
                              setState(() {
                                e['value'] = val;
                              });
                            }),
                        SizedBox(width: 10,),
                      ],
                    ),
                    SizedBox(height: 6,),
                    Divider(
                      endIndent: 15,
                      indent: 15,
                      thickness: 1,
                      color: Colors.black26,
                    ),
                  ],
                ),
              ),
          ).toList(),
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 20,bottom: 30,right: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Misc",style: TextStyle(color: Colors.red,fontWeight: FontWeight.w700),),
              ],
            ),
          ),
          ...All4.map((e) =>
              Container(
                width: double.infinity,
                height: 70,
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        Container(
                          child: e['icon3'],
                        ),
                        SizedBox(width: 35,),
                        Text("${e['title3']}",style: TextStyle(color: Colors.black,fontSize: 20),),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Divider(
                      endIndent: 15,
                      indent: 15,
                      thickness: 1,
                      color: Colors.black26,
                    ),
                  ],
                ),
              ),
          ).toList(),
        ],
      ),
    );
  }
}
