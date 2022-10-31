class YourActivities{
  
String? _image;
String? _title;

YourActivities(this._image, this._title);


  String get title => _title!;

  set title(String value) {
    _title = value;
  }

  String get image => _image!;

  set image(String value) {
    _image = value;
  }

}