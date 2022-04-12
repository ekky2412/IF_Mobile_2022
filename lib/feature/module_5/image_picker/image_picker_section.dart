import 'dart:io';
import 'package:flutter/material.dart';
import 'package:mobile_b/tools/common_submit_button.dart';
import 'image_picker_helper.dart';

class ImagePickerSection extends StatefulWidget {
  const ImagePickerSection({Key? key}) : super(key: key);

  @override
  _ImagePickerSectionState createState() => _ImagePickerSectionState();
}

class _ImagePickerSectionState extends State<ImagePickerSection> {
  String imagePath = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _imageSection(),
          _buttonSectionGallery(),
          _buttonSectionCamera(),
        ],
      ),
    );
  }

  Widget _buttonSectionCamera() {
    return CommonSubmitButton(
        labelButton: "Import Dari Camera",
        submitCallback: (value){
          imagePath = "";
          ImagePickerHelper().getImageFromCamera((value) => _processImage(value));
        });
  }

  Widget _buttonSectionGallery() {
    return CommonSubmitButton(
        labelButton: "Import Dari Gallery",
        submitCallback: (value){
          imagePath = "";
          ImagePickerHelper().getImageFromGallery((value) => _processImage(value));
        });
  }

  Widget _imageSection() {
    if(imagePath.isEmpty) {
      return Container(
        child: Text("Gambar Tidak Ada"),
      );
    }
    return Container(
      child: Image.file(File(imagePath), width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height/2,),
    );
  }

  void _processImage(String? value) {
    if(value != null) {
      setState((){
        imagePath = value;
      });
    }
  }

}




