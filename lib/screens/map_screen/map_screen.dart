import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:treeis/core/k_colors.dart';
import 'package:treeis/core/k_sizedboxes.dart';
import 'package:treeis/core/k_text_styles.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            const Text(
              '17',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 23),
            ),
            const Text(
              ' mins',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ],
        ),
        actions: [
          Row(
            children: [
              Text(
                '1.8 km',
                style: k_map_appbar_distance,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.circle,
                  color: kLigtBlue,
                  size: 6,
                ),
              ),
              Text(
                '11:48 am',
                style: k_map_appbar_distance,
              ),
              width_20
            ],
          ),
        ],
      ),
      body: InkWell(
        onTap: () => _modalBottomSheetMenu(context),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 100,
          color: Colors.black26,
        ),
      ),
    );
  }

  void _modalBottomSheetMenu(context) {
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        context: context,
        builder: (builder) {
          return Container(
            height: 350.0,
            color: Colors.transparent,
            child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0))),
                child: Column(
                  children: [
                    Row(
                      children: [
                        width_20,
                        Icon(
                          Icons.location_on,
                          color: kBlue,
                          size: 22,
                        ),
                        width_5,
                        Text(
                          'DELIVERY LOCATION',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: kBlue),
                        ),
                        const Spacer(),
                        Text(
                          '0DN0000569',
                          style: k_map_appbar_distance,
                        ),
                        width_20
                      ],
                    ),
                    const Center(
                      child: Text("This is a modal sheet"),
                    ),
                  ],
                )),
          );
        });
  }
}
