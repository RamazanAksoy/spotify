class Playlist{
  
String? _image;
String? _title;

Playlist(this._image, this._title);


  String get title => _title!;

  set title(String value) {
    _title = value;
  }

  String get image => _image!;

  set image(String value) {
    _image = value;
  }

}