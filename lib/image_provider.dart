
import 'package:flutter/material.dart';

class Favorite extends ChangeNotifier{
  List<String> _items=[];
  List<String> get items=>_items;
  List<String> _image=[];
  List<String> get image=>_image;

  void checked(String item,String image){
    final isexist=_items.contains(item);
    if(isexist){
      _items.remove(item);
      _image.remove(image);
    }
    else
      {
        _items.add(item);
        _image.add(image);
      }
    notifyListeners();
  }
  bool isexist(String item){
    final isexist=_items.contains(item);
    return isexist;
  }
}