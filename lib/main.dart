import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/helper/screen_size.dart';
import 'core/initial/dependecy/config.dart';
import 'future/spacex/view/home/home_page.dart';

void main() async {
  await _init();
  runApp(const AppnationCaseApp());
}

Future<void> _init() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.top]);
  setup();
}

class AppnationCaseApp extends StatelessWidget {
  const AppnationCaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SpaceX-mission',
      builder: (context, child) {
        getIt<ScreenSize>().screenSize = MediaQuery.of(context).size;
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: child!,
        );
      },
     
      home: const HomePage(),
    );
  }
}
