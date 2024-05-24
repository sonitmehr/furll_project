import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/image_data.dart';
import '../provider/collage_provider.dart';

class DraggableImage extends StatefulWidget {
  final ImageData imageData;

  DraggableImage(this.imageData);

  @override
  _DraggableImageState createState() => _DraggableImageState();
}

class _DraggableImageState extends State<DraggableImage> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: widget.imageData.position.dx,
      top: widget.imageData.position.dy,
      child: Draggable<ImageData>(
        data: widget.imageData,
        feedback: Image.asset(widget.imageData.path,
            width: 100,
            color: Colors.black.withOpacity(0.5),
            colorBlendMode: BlendMode.darken),
        childWhenDragging: Container(),
        child: Image.asset(widget.imageData.path, width: 100),
        onDragEnd: (dragDetails) {
          setState(() {
            widget.imageData.position = dragDetails.offset;
            List<ImageData> newImages = [];
            Collage.images.forEach((element) {
              if (element.path != widget.imageData.path) {
                newImages.add(element);
                print(element.path);
              }
            });

            newImages.add(widget.imageData);
            Collage.images = newImages;
          });
          setState(() {});
        },
      ),
    );
  }
}
