import 'package:flutter/material.dart';
import 'package:music_flutter/customs/bottom_navigation_bar.dart';
import 'package:music_flutter/customs/store_observer.dart';
import 'package:music_flutter/presentations/search_page.dart';
import 'package:music_flutter/presentations/song_view.dart';
import 'package:music_flutter/stores/album_store.dart';
import 'package:music_flutter/stores/songs_store.dart';
import 'package:music_flutter/stores/tab_bar_store.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    if (Provider.of<AlbumStore>(context).albumsList.isEmpty) {
      Provider.of<AlbumStore>(context).fetchAlbums();
    }

    if (Provider.of<SongsStore>(context).songsList.isEmpty) {
      Provider.of<SongsStore>(context).fetchSongs();
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(32, 33, 37, 1),
        bottomNavigationBar: CustomBottomNavigationBar(),
        body: StoreObserver<TabBarStore>(
          builder: (TabBarStore tabBarStore, BuildContext context) {
            return Container(
              height: screenHeight,
              width: screenWidth,
              child: _getSelectedPage(tabBarStore),
            );
          },
        ),
      ),
    );
  }

  _getSelectedPage(TabBarStore tabBarStore) {
    switch (tabBarStore.selectedTabBar) {
      case 0:
        return _getAllSongs();
        break;
      case 1:
        return Container();
        break;
      case 2:
        return SearchPage();
        break;
      case 3:
        return Container();
        break;
      case 4:
        return Container();
        break;
    }
  }

  Widget _getAllSongs() {
    return StoreObserver<SongsStore>(
      builder: (SongsStore songsStore, BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: songsStore.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemCount: songsStore.songsList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return SongView(
                      songInfo: songsStore.songsList[index],
                    );
                  },
                ),
        );
      },
    );
  }
}
