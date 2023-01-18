


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List All = [
  {
    'icon' : Icon(Icons.language,size: 30,color: Colors.grey,),
    'title' : "Language",
    'subtitle' : "English",
  },
  {
    'icon' : Icon(Icons.cloud_outlined,size: 30,color: Colors.grey,),
    'title' : "Environment",
    'subtitle' : "Production",
  },
];


List All2 = [
  {
    'icon1' : Icon(Icons.call,size: 30,color: Colors.grey,),
    'title1' : "Phonenumber",
  },
  {
    'icon1' : Icon(Icons.email,size: 30,color: Colors.grey,),
    'title1' : "Email",
  },
  {
    'icon1' : Icon(Icons.logout,size: 30,color: Colors.grey,),
    'title1' : "Sign out",
  },
];

List All3 = [
  {
    'icon2' : Icon(Icons.phonelink_lock,size: 30,color: Colors.grey,),
    'title2' : "Lock app in background",
    'value' : Global.switchvalue,
  },
  {
    'icon2' : Icon(Icons.fingerprint,size: 30,color: Colors.grey,),
    'title2' : "Use fingerprint",
    'value' : Global.switchvalue,
  },
  {
    'icon2' : Icon(Icons.lock,size: 30,color: Colors.grey,),
    'title2' : "Change password",
    'value' : Global.switchvalue,
  },
];

List All4 = [
  {
    'icon3' : Icon(Icons.picture_as_pdf,size: 30,color: Colors.grey,),
    'title3' : "Terms of Service",
  },
  {
    'icon3' : Icon(Icons.collections_bookmark,size: 30,color: Colors.grey,),
    'title3' : "Open source licenses",
  },
];





class Global{
  static bool isIOS = false;
  static bool switchvalue = false;
}