import 'package:flutter/material.dart';

class TabBarCustom extends StatelessWidget {
  const TabBarCustom({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(
          25.0,
        ),
      ),
      child: TabBar(
        controller: _tabController,
        // give the indicator a decoration (color and border radius)
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(
            25.0,
          ),
          color: Colors.blueAccent,
        ),
        labelColor: Colors.white,
        unselectedLabelColor: Colors.black,
        tabs: [
          // first tab [you can add an icon using the icon property]
          Tab(
            text: 'Online',
          ),

          // second tab [you can add an icon using the icon property]
          Tab(
            text: 'Offline',
          ),
        ],
      ),
    );
  }
}
