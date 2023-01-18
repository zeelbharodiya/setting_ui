import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pr1_setting_ui/page1.dart';

import 'global.dart';


void main() {
  runApp(
    Myapp(),
  );
}


class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {


  @override
  Widget build(BuildContext context) {
    return (Global.isIOS == false) ? MaterialApp(
      debugShowCheckedModeBanner: false,
     home: Scaffold(
       appBar: AppBar(
         title: Text("Setting UI",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w600),),
         centerTitle: false,
         backgroundColor: Colors.red,
         actions: [
           Switch(
               activeTrackColor: Colors.green,
               activeColor: Colors.white,
               value: Global.isIOS,
               inactiveTrackColor: Colors.white60,
               onChanged: (val) {
                 setState(() {
                   Global.isIOS = val;
                 });
               }),
         ],
       ),
       body: PageOne(),
     ),
    ) : CupertinoApp(
      debugShowCheckedModeBanner: false,
       home: CupertinoPageScaffold(
         backgroundColor: Colors.grey[200],
         navigationBar: CupertinoNavigationBar(
           backgroundColor: Colors.red,
            middle: Text("Setting UI",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w600),),
            trailing: CupertinoSwitch(
                activeColor: Colors.green,
                value: Global.isIOS,
                onChanged: (val) {
                  setState(() {
                    Global.isIOS = val;
                  });
                }),
         ),
         child: SingleChildScrollView(
           child: Column(
             children: [
               Padding(
                 padding: const EdgeInsets.only(top: 20,left: 20,bottom: 20,right: 20),
                 child: Row(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("Common",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w700),),
                   ],
                 ),
               ),
               ...All.map((e) =>
                   Container(
                     height: 50,
                     decoration: BoxDecoration(
                       color: Colors.white,
                         border: Border(bottom: BorderSide(width: 0.4,color: Colors.grey)),
                     ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Row(
                           children: [
                             SizedBox(width: 15,),
                             e['icon'],
                             SizedBox(width: 15,),
                             Text("${e['title']}",style: TextStyle(color: Colors.grey,fontSize: 18),),
                             Spacer(),
                             Text("${e['subtitle']},",style: TextStyle(color: Colors.grey,fontSize: 18),),
                             SizedBox(width: 10,),
                             Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 20,),
                             SizedBox(width: 10,),
                           ],
                         ),
                       ],
                     ),
                   ),
               ).toList(),
               Padding(
                 padding: const EdgeInsets.only(top: 20,left: 20,bottom: 20,right: 20),
                 child: Row(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("Account",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w700),),
                   ],
                 ),
               ),
               ...All2.map((e) =>
                   Container(
                     height: 50,
                     decoration: BoxDecoration(
                       color: Colors.white,
                       border: Border(bottom: BorderSide(width: 0.4,color: Colors.grey)),
                     ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Row(
                           children: [
                             SizedBox(width: 15,),
                             e['icon1'],
                             SizedBox(width: 15,),
                             Text("${e['title1']}",style: TextStyle(color: Colors.grey,fontSize: 18),),
                             Spacer(),
                             Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 20,),
                             SizedBox(width: 10,),
                           ],
                         ),
                       ],
                     ),
                   ),
               ).toList(),
               Padding(
                 padding: const EdgeInsets.only(top: 20,left: 20,bottom: 20,right: 20),
                 child: Row(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("Security",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w700),),
                   ],
                 ),
               ),
               ...All3.map((e) =>
                   Container(
                     height: 50,
                     decoration: BoxDecoration(
                       color: Colors.white,
                       border: Border(bottom: BorderSide(width: 0.4,color: Colors.grey)),
                     ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Row(
                           children: [
                             SizedBox(width: 15,),
                             e['icon2'],
                             SizedBox(width: 15,),
                             Text("${e['title2']}",style: TextStyle(color: Colors.grey,fontSize: 18),),
                             Spacer(),
                             CupertinoSwitch(value: e['value'],
                                 activeColor: Colors.red,
                                 onChanged: (val) {
                               setState(() {
                                 e['value'] = val;
                               });
                             }),
                             SizedBox(width: 10,),
                           ],
                         ),
                       ],
                     ),
                   ),
               ).toList(),
               Padding(
                 padding: const EdgeInsets.only(top: 20,left: 20,bottom: 20,right: 20),
                 child: Row(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("Misc",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w700),),
                   ],
                 ),
               ),
               ...All4.map((e) =>
                   Container(
                     height: 50,
                     decoration: BoxDecoration(
                       color: Colors.white,
                       border: Border(bottom: BorderSide(width: 0.4,color: Colors.grey)),
                     ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Row(
                           children: [
                             SizedBox(width: 15,),
                             e['icon3'],
                             SizedBox(width: 15,),
                             Text("${e['title3']}",style: TextStyle(color: Colors.grey,fontSize: 18),),
                             Spacer(),
                             Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 20,),
                             SizedBox(width: 10,),
                           ],
                         ),
                       ],
                     ),
                   ),
               ).toList(),
             ],
           ),
         ),
       ),
    );
  }
}
