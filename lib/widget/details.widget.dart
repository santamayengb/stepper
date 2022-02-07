import 'package:flutter/material.dart';

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

  InputDecoration fwInputDecoration(String title) {
    return InputDecoration(
      label: Text(title),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Color.fromARGB(0, 0, 0, 0),
          width: 2,
        ),
      ),
      filled: true,
      fillColor: Colors.grey[300],
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0x00000000),
          width: 1,
        ),
      ),
    );
  }
}
