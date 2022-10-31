class TopMixes{

String? _image;
String? _title;
String? _text;

TopMixes(this._image, this._title, this._text);

String get text => _text!;

  set text(String value) {
    _text = value;
  }

  String get title => _title!;

  set title(String value) {
    _title = value;
  }

  String get image => _image!;

  set image(String value) {
    _image = value;
  }
}