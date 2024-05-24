import 'package:flutter/material.dart';

import '../models/image_data.dart';

class CollageProvider extends ChangeNotifier {
  List<ImageData> _images = [
    ImageData('assets/image1.png', Offset(50, 50)),
    ImageData('assets/image2.png', Offset(150, 150)),
    ImageData('assets/image3.png', Offset(250, 250)),
  ];

  List<ImageData> get images => _images;

  void updatePosition(int index, Offset newPosition) {
    _images[index].position = newPosition;
    notifyListeners();
  }
}

class Collage {
  static List<ImageData> images = [
    ImageData('assets/image1.png', Offset(0, 0)),
    ImageData('assets/image2.png', Offset(50, 50)),
    ImageData('assets/image3.png', Offset(100, 100)),
  ];
}
