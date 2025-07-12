import 'package:flutter/widgets.dart';

@immutable
class ImageConstants {
  //Dışarıdan bir variable oluşmasın diye
  ImageConstants._();

  final String microphone = 'ic_microphone'.toPNG;
  final String logo = 'ic_logo'.toPNG;
}

extension _StringPath on String {
  String get toPNG => 'assets/icons/$this.png';
}
