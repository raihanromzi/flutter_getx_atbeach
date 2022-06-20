import 'package:atbeach_app/app/widget/app_color_theme.dart';
import 'package:atbeach_app/app/widget/circular_indicator_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: AppColorTheme.primaryDark,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Column(
                    children: const [
                      Text(
                        'atBeach',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: AppColorTheme.line,
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              )
            ];
          },
          body: DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  // ignore: avoid_unnecessary_containers
                  Container(
                    child: Column(
                      children: [
                        TabBar(
                            indicator: CircleTabIndicator(
                                color: AppColorTheme.line, radius: 4),
                            tabs: const [
                              Tab(
                                text: "Popular",
                              ),
                              Tab(
                                text: "Gallery",
                              ),
                            ]),
                      ],
                    ),
                  ),
                  // Expanded(
                  //     child: TabBarView(
                  //   children: [
                  //     StaggeredGridView.countBuilder(
                  //       crossAxisCount: 4,
                  //       itemCount: 10,
                  //       itemBuilder: (context, index) => Container(
                  //         color: Colors.green,
                  //         child: Text('Item $index'),
                  //       ),
                  //       staggeredTileBuilder: (index) => StaggeredTile.count(
                  //         index == 0 ? 2 : 1,
                  //         index == 0 ? 2 : 1,
                  //       ),
                  //     ),
                  //     const Text('Hello Page')
                  //   ],
                  // ))
                ],
              )),
        ),
      ),
    );
  }
}
