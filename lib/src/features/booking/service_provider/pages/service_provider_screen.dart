import 'package:clean_snap/src/common/const/global_variable.dart';
import 'package:clean_snap/src/features/booking/service_provider/pages/service_provider_screen_2.dart';
import 'package:clean_snap/src/features/home/pages/home_screen.dart';
import 'package:flutter/material.dart';

class ServiceProviderScreen extends StatefulWidget {
  const ServiceProviderScreen({super.key});

  @override
  State<ServiceProviderScreen> createState() => _ServiceProviderScreenState();
}

class _ServiceProviderScreenState extends State<ServiceProviderScreen> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(Duration(seconds: 3));
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ServiceProviderScreen2()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorScheme(context).onError,
      appBar: AppBar(
        backgroundColor: colorScheme(context).onError,
        title: Text(
          'Service Provider',
          style: textTheme(context)
              .titleMedium!
              .copyWith(color: colorScheme(context).onSecondary),
        ),
        leading: IconButton.outlined(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
          style: IconButton.styleFrom(padding: EdgeInsets.all(8), iconSize: 20),
        ),
        surfaceTintColor: colorScheme(context).onError,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Find and book professional cleaners',
              style: textTheme(context).labelMedium!.copyWith(
                color: colorScheme(context).onSurface,
                fontWeight: FontWeight.w600,
                letterSpacing: 0,
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.3),
          CircularProgressIndicator(
            // valueColor: AlwaysStoppedAnimation<Color>(colorScheme(context).primary),
            // backgroundColor: colorScheme(context).onError,
            backgroundColor: colorScheme(context).surface,
            strokeWidth: 8.0,
          ),
          SizedBox(height: 20),
          Text(
            'Fetching available cleaners...',
            style: textTheme(context).labelLarge!.copyWith(
              color: colorScheme(context).onSecondary,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
