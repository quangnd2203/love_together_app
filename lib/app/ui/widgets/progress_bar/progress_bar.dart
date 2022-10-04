import 'package:flutter/cupertino.dart';

class ProgressBar extends LeafRenderObjectWidget{

  const ProgressBar(this.thumbColor, this.barColor, this.thumbSize, {super.key});

  final Color thumbColor;
  final Color barColor;
  final double thumbSize;

  @override
  RenderObject createRenderObject(BuildContext context) {
    // TODO: implement createRenderObject
    throw UnimplementedError();
  }


  @override
  void updateRenderObject(BuildContext context, covariant RenderObject renderObject) {
    // TODO: implement updateRenderObject
    super.updateRenderObject(context, renderObject);
  }


}
