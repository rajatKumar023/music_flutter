import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  color: Colors.white,
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
                color: Colors.white,
              )
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 2,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Artists, Songs or Podcasts',
                hintStyle: TextStyle(color: Colors.white),
              ),
            ),
          ),
//          SizedBox(
//            height: 20.0,
//          ),
//          Expanded(
//            child: GridView.builder(
//              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                crossAxisCount: 2,
//                crossAxisSpacing: 10.0,
//                mainAxisSpacing: 10.0,
//              ),
//              itemCount: 14,
////              controller: controller,
//              itemBuilder: (BuildContext context, int index) {
//                return Container(
//                  height: 100.0,
//                  width: 200.0,
//                  decoration: BoxDecoration(
//                    borderRadius: BorderRadius.all(
//                      Radius.circular(10.0),
//                    ),
//                    color: Colors.grey,
//                  ),
//                );
//              },
//            ),
//          ),
        ],
      ),
    );
  }
}
