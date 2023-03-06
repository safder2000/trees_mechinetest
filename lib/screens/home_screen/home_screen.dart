import 'package:flutter/material.dart';
import 'package:treeis/core/k_colors.dart';
import 'package:treeis/core/k_sizedboxes.dart';
import 'package:treeis/screens/home_screen/orders_in_queue_screen.dart';
import 'package:treeis/screens/home_screen/widgets/tab_bar_custom.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        toolbarHeight: 65,
        shadowColor: Colors.black26,
        title: Center(
          child: TabBarCustom(tabController: _tabController),
        ),
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 35.0,
            backgroundColor: Colors.black54,
            child: CircleAvatar(
              radius: 19.0,
              backgroundImage: NetworkImage(
                  "https://img.freepik.com/premium-vector/brunette-man-avatar-portrait-young-guy-vector-illustration-face_217290-1035.jpg?w=2000"),
              backgroundColor: Colors.transparent,
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: kRed,
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kBlue,
        onPressed: () {},
        child: const Icon(Icons.navigation_rounded),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: const BottomAppBar(
        color: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  // first tab bar view widget
                  OnlineOrderQueueScreen(),

                  // second tab bar view widget
                  Center(
                    child: Text(
                      'Buy Nw',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
