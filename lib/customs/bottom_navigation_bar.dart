import 'package:flutter/material.dart';
import 'package:music_flutter/customs/store_observer.dart';
import 'package:music_flutter/stores/tab_bar_store.dart';
import 'package:music_flutter/utils/styles.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreObserver<TabBarStore>(
      builder: (TabBarStore tabBarStore, BuildContext context) {
        return Stack(
          children: <Widget>[
            Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 53.0,
                decoration: BoxDecoration(
                  color: Styles.PRIMARY_COLOR,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0),
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  tabBarItem(
                    tabBarStore: tabBarStore,
                    index: 0,
                    iconData: Icons.home,
                  ),
                  tabBarItem(
                    tabBarStore: tabBarStore,
                    index: 1,
                    iconData: Icons.music_note,
                  ),
                  tabBarItem(
                    tabBarStore: tabBarStore,
                    index: 2,
                    iconData: Icons.search,
                  ),
                  tabBarItem(
                      tabBarStore: tabBarStore,
                      index: 3,
                      iconData: Icons.queue_music),
                  tabBarItem(
                    tabBarStore: tabBarStore,
                    index: 4,
                    iconData: Icons.person,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  tabBarItem({TabBarStore tabBarStore, int index, IconData iconData}) {
    return Container(
      padding: EdgeInsets.all(
        tabBarStore.selectedTabBar == index ? 1.0 : 0.0,
      ),
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: GestureDetector(
        onTap: () {
          if (tabBarStore.selectedTabBar != index) {
            tabBarStore.changeTabBar(index);
          }
        },
        child: Icon(
          iconData,
          color:
              tabBarStore.selectedTabBar == index ? Colors.black : Colors.grey,
          size: 30.0,
        ),
      ),
    );
  }
}
