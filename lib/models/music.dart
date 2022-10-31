class Music{
  
String? _image;
String? _title;
String? _text;
bool? _favorite;

Music(this._image, this._title, this._text, this._favorite);

String get text => _text!;

  set text(String value) {
    _text = value;
  }


  bool get favorite => _favorite!;

  set favorite(bool value) {
    _favorite = value;
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