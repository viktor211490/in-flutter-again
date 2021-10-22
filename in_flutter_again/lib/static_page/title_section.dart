import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 8),
            child: const Text('Oeschinen Lake Compground',
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Text(
            'Kanderstag, Switzerland',
            style: TextStyle(color: Colors.grey[500]),
          )
        ],
      )),
      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      const Text('41'),
    ],
  ),
);




