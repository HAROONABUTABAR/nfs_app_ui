import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

import 'image_title_section.dart';

class ImageListView extends StatefulWidget {
  const ImageListView(
      {super.key, required this.startIndex, this.duration = 30});

  final int startIndex;

  final int duration;

  @override
  ImageListViewState createState() => ImageListViewState();
}

class ImageListViewState extends State<ImageListView> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController();

    _scrollController.addListener(() {
      //Detect if is at the end of list view
      if (_scrollController.position.atEdge) {
        _autoScroll();
      }
    });

    //Add this to make sure that controller has been attacted to List View
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _autoScroll();
    });
  }

  _autoScroll() {
    final currentScrollPosition = _scrollController.offset;

    final scrollEndPosition = _scrollController.position.maxScrollExtent;

    scheduleMicrotask(() {
      _scrollController.animateTo(
        currentScrollPosition == scrollEndPosition ? 0 : scrollEndPosition,
        duration: Duration(seconds: widget.duration),
        curve: Curves.linear,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 1.96 * pi,
      child: SizedBox(
        height: 130,
        child: ListView.builder(
          controller: _scrollController,
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return ImageTileSection(
                image:
                    'assets/images/nts_list_images/${widget.startIndex + index}.png');
          },
        ),
      ),
    );
  }
}
