import 'package:flutter/material.dart';
import 'package:stepper/core/assets.dart';

import '../core/fw_input_decoration.dart';

class UploadWidget extends StatefulWidget {
  const UploadWidget({Key? key}) : super(key: key);

  @override
  _UploadWidgetState createState() => _UploadWidgetState();
}

class _UploadWidgetState extends State<UploadWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Restaurant Cover Image",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        Text(
          "This image will appear as photo cover of your restaurant in customer app",
          style: TextStyle(color: Colors.grey[600]),
        ),
        const SizedBox(height: 10),
        Container(
          height: 200,
          width: double.infinity,
          color: Colors.red,
          child: Image.asset(Assets.image.coverImage),
        ),
        const SizedBox(height: 10),
        const Text("Restaurant logo",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 100,
            width: 100,
            color: Colors.red,
            child: Image.asset(Assets.image.logo, fit: BoxFit.cover),
          ),
        ),
        TextFormField(
          decoration: fwInputDecoration("Aadhaar Card"),
        )
      ],
    );
  }
}
