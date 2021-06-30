import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      height: 80,
      child: Row(
        children: [
          Icon(Icons.search),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: ("Search Movies here"),
                border: InputBorder.none,
              ),
            ),
          ),
          Icon(Icons.settings_input_hdmi),
        ],
      ),
    );
  }
}
