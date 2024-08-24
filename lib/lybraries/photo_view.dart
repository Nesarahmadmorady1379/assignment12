import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class PhotoViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo View Example'),
      ),
      body: Center(
        child: Container(
          child: PhotoView(
            imageProvider: NetworkImage('https://placekitten.com/800/400'),
          ),
        ),
      ),
    );
  }
}
