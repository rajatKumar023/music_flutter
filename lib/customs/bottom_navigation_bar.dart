import 'package:flutter/material.dart';
import 'package:music_flutter/customs/store_observer.dart';
import 'package:music_flutter/stores/tab_bar_store.dart';

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
                height: 55.0,
                decoration: BoxDecoration(
                  color: Colors.black,
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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(50.0),
        ),
        color: tabBarStore.selectedTabBar == index
            ? Colors.white
            : Colors.transparent,
      ),
      padding: EdgeInsets.all(
        tabBarStore.selectedTabBar == index ? 4.0 : 0.0,
      ),
      margin: EdgeInsets.only(
          bottom: tabBarStore.selectedTabBar == index ? 15.0 : 5.0),
      child: InkWell(
        onTap: () {
          if (tabBarStore.selectedTabBar != index) {
            tabBarStore.changeTabBar(index);
          }
        },
        child: Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            color: tabBarStore.selectedTabBar == index
                ? Colors.black
                : Colors.transparent,
          ),
          child: Icon(
            iconData,
            color:Colors.white,
            size: 30.0,
          ),
        ),
      ),
    );
  }
}
