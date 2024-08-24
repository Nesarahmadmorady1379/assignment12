import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';

class FlexColorPickerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flex Color Picker Example'),
      ),
      body: Center(
        child: ColorPicker(
          color: Colors.blue,
          onColorChanged: (Color color) {
            // Handle color change
          },
          pickersEnabled: <ColorPickerType, bool>{
            ColorPickerType.wheel: true,
          },
        ),
      ),
    );
  }
}
