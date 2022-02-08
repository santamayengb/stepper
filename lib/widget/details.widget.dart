import 'package:flutter/material.dart';

import '../core/fw_input_decoration.dart';

class DetailWidget extends StatefulWidget {
  const DetailWidget({Key? key}) : super(key: key);

  @override
  _DetailWidgetState createState() => _DetailWidgetState();
}

class _DetailWidgetState extends State<DetailWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Restaurant Details"),
        const SizedBox(height: 10),
        TextFormField(
          decoration: fwInputDecoration("Restaurant Name"),
          validator: fwValidator,
        ),
        const SizedBox(height: 10),
        TextFormField(
          decoration: fwInputDecoration("Restaurant Address"),
        ),
        const SizedBox(height: 10),
        TextFormField(
          decoration: fwInputDecoration("Restaurant Alternate Address"),
        ),
        const SizedBox(height: 10),
        TextFormField(
          decoration: fwInputDecoration("Restaurant Phone number"),
        ),
        const SizedBox(height: 10),
        TextFormField(
          decoration: fwInputDecoration("Restaurant Alt Phone number"),
        ),
        const SizedBox(height: 10),
        TextFormField(
          decoration: fwInputDecoration("Location"),
        ),
      ],
    );
  }

// logiccs

  String? fwValidator(v) {
    if (v == null || v.isEmpty) {
      return "Required";
    }
    return null;
  }

  //designs

}
