import 'package:clean_snap/src/common/providers/bottam_bar/bottam_bar_provider.dart';
import 'package:clean_snap/src/features/profile/provider/switch_provider.dart';
import 'package:clean_snap/src/router/routes.dart';
import 'package:clean_snap/src/theme/theme.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';




void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
      DevicePreview(
          enabled: !kReleaseMode,
          builder: (context) => const MyApp())
  );
}
//This is my device height and width -- Samsung Galaxy J6.git changing the main.dart file main changing kia hai.
//752.0
//360.0
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BottamBarProvider(),),
        ChangeNotifierProvider(create: (context) => SwitchProvider(),),
      ],
      child: MaterialApp.router(
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        theme: AppTheme.instance.lightTheme,
        debugShowCheckedModeBanner: false,
        routerDelegate: MyAppRouter.router.routerDelegate,
        routeInformationParser: MyAppRouter.router.routeInformationParser,
        routeInformationProvider: MyAppRouter.router.routeInformationProvider,
        // home: BottamBarWidget(),
      ),
    );
  }
}