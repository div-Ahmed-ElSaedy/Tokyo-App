// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:tokeapp/models/num_model.dart';

class infoItem extends StatelessWidget {
  const infoItem({super.key, required this.press});
  final phrasesInfo press;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: const Color(0xFFD7E1FD),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              '${press.toku} ( ${press.en} )',
              style: const TextStyle(
                fontSize: 22,
              ),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: IconButton(
              splashColor: const Color(0xFF666666),
              onPressed: () {
                press.playSound();
              },
              icon: const Icon(
                Icons.play_arrow,
                size: 35,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
