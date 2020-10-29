import 'package:flutter/material.dart';
class PageModel{
  String _title , _describtion , _image;
  IconData _icons;

  PageModel(this._title, this._describtion, this._image, this._icons);

  set icons(IconData value) {
    _icons = value;
  }

  set image(value) {
    _image = value;
  }

  set describtion(value) {
    _describtion = value;
  }

  set title(String value) {
    _title = value;
  }

  IconData get icons => _icons;

  get image => _image;

  get describtion => _describtion;

  String get title => _title;


}