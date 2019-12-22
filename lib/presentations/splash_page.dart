import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:music_flutter/stores/songs_store.dart';
import 'package:music_flutter/utils/styles.dart';
import 'package:provider/provider.dart';

import 'home_page.dart';

class SplashPage extends StatelessWidget {
  static const String routeNamed = 'SplashPage';

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((v) {
      _navigateToScreen(context);
    });
    return Scaffold(
      backgroundColor: Styles.PRIMARY_COLOR,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: const Center(
          child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Styles.TERTIARY_COLOR),),
        ),
      ),
    );
  }

  void _navigateToScreen(BuildContext context) {
    Provider.of<SongsStore>(context).fetchSongs();
    when((_) => !Provider.of<SongsStore>(context).isLoading, () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    });
  }
}
