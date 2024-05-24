import 'package:flutter/material.dart';
import 'package:furll_project/provider/collage_provider.dart';
import 'package:furll_project/resources/colors.dart';
import 'package:furll_project/widgets/app_bar.dart';
import 'package:furll_project/widgets/custom_button.dart';
import 'package:furll_project/widgets/thick_divider.dart';
import 'package:provider/provider.dart';

import '../models/image_data.dart';

class CollageScreen extends StatefulWidget {
  @override
  _CollageScreenState createState() => _CollageScreenState();
}

class _CollageScreenState extends State<CollageScreen> {
  List<ImageData> images = [
    ImageData('assets/image1.png', Offset(50, 50)),
    ImageData('assets/image2.png', Offset(150, 150)),
    ImageData('assets/image3.png', Offset(250, 250)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        name: 'Edit Frame',
      ),
      body: Column(
        children: [
          ThickDivider(thickness: 20, color: TColor.secondary50),
          Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            height: 500,
            child: Stack(
              children: Collage.images
                  .map((imageData) => DraggableImage(imageData: imageData))
                  .toList(),
            ),
          ),
          ThickDivider(thickness: 25, color: TColor.secondary50),
          SizedBox(
            height: 5,
          ),
          CustomButton(
            text: 'Save',
            textColor: Theme.of(context).scaffoldBackgroundColor,
            buttonColor: TColor.primary5,
            borderColor: Colors.transparent,
            onPressed: () => null,
          ),
          CustomButton(
            text: 'Cancel',
            onPressed: () => null,
            textColor: TColor.primary5,
            buttonColor: Theme.of(context).scaffoldBackgroundColor,
            borderColor: TColor.primary5,
          ),
        ],
      ),
    );
  }
}

class DraggableImage extends StatefulWidget {
  final ImageData imageData;
  final bool isDraggable;
  DraggableImage({required this.imageData, this.isDraggable = true});

  @override
  _DraggableImageState createState() => _DraggableImageState();
}

class _DraggableImageState extends State<DraggableImage> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: widget.imageData.position.dx,
      top: widget.imageData.position.dy,
      child: (widget.isDraggable)
          ? Draggable<ImageData>(
              data: widget.imageData,
              feedback: Image.asset(widget.imageData.path,
                  width: 100,
                  color: Colors.black.withOpacity(0.5),
                  colorBlendMode: BlendMode.darken),
              childWhenDragging: Container(),
              child: Image.asset(widget.imageData.path, width: 100),
              onDragEnd: (dragDetails) {
                if (widget.isDraggable) {
                  return;
                }
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
            )
          : Image.asset(widget.imageData.path, width: 100),
    );
  }
}
