import 'package:flutter/material.dart';

class Browse{
  
Color? _startColor;
Color? _endColor;
String? _text;

Browse(this._startColor, this._endColor, this._text);

String get text => _text!;

  set text(String value) {
    _text = value;
  }

  Color get endColor => _endColor!;

  set title(Color value) {
    _endColor = value;
  }

  Color get startColor => _startColor!;

  set image(Color value) {
    _startColor = value;
  }
}