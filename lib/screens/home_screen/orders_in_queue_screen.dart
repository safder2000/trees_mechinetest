import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:treeis/core/k_sizedboxes.dart';
import 'package:treeis/screens/home_screen/widgets/button.dart';
import 'package:treeis/screens/home_screen/widgets/order_tile.dart';

class OnlineOrderQueueScreen extends StatelessWidget {
  const OnlineOrderQueueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Order in Queue',
              style:
                  TextStyle(fontWeight: FontWeight.w600, color: Colors.black45),
            ),
          ],
        ),
        height_10,
        ListView.builder(
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) => OrderTile(),
          itemCount: 4,
        ),
      ],
    );
  }
}
