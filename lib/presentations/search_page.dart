import 'package:flutter/material.dart';
import 'package:music_flutter/customs/store_observer.dart';
import 'package:music_flutter/presentations/search_list_item.dart';
import 'package:music_flutter/stores/album_store.dart';
import 'package:music_flutter/utils/styles.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool isSearchSelected;

  @override
  void initState() {
    super.initState();

    isSearchSelected = false;
  }

  @override
  Widget build(BuildContext context) {
    return isSearchSelected
        ? StoreObserver<AlbumStore>(
            builder: (AlbumStore albumStore, BuildContext context) {
              return Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 55.0,
                    color: Styles.TERTIARY_COLOR,
                    child: Center(
                      child: TextField(
                        autofocus: true,
                        cursorColor: Styles.SECONDARY_COLOR,
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Styles.SECONDARY_COLOR,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: GestureDetector(
                            child: Icon(
                              Icons.arrow_back,
                              color: Styles.SECONDARY_COLOR,
                            ),
                            onTap: () {
                              setState(() {
                                isSearchSelected = false;
                              });
                            },
                          ),
                          suffixIcon: Icon(
                            Icons.search,
                            color: Styles.SECONDARY_COLOR,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Recent Search',
                          style: TextStyle(
                            color: Styles.SECONDARY_COLOR,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Icon(
                          Icons.access_time,
                          color: Styles.TERTIARY_COLOR,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: albumStore.albumsList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 15.0),
                          child: SearchListItem(
                            albumInfo: albumStore.albumsList[index],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          )
        : Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Search',
                      style: TextStyle(
                        color: Styles.SECONDARY_COLOR,
                        fontSize: 45.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Icon(
                      Icons.search,
                      size: 45,
                      color: Styles.SECONDARY_COLOR,
                    )
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isSearchSelected = true;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    height: 50.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Styles.SECONDARY_COLOR,
                        width: 2,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Search for songs, artists...',
                        style: TextStyle(
                          color: Styles.SECONDARY_COLOR,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
