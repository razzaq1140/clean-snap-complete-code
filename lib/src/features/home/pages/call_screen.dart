import 'package:cached_network_image/cached_network_image.dart';
import 'package:clean_snap/src/common/const/global_variable.dart';
import 'package:clean_snap/src/features/home/pages/call_blue.dart';
import 'package:flutter/material.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  void initState() {
    super.initState();
     Future.delayed(Duration(seconds: 2),() {
      Navigator.push(context, MaterialPageRoute(builder: (context) => CallScreenBlue(),));

    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorScheme(context).onError,
      appBar: AppBar(
        backgroundColor: colorScheme(context).onError,
        leading: IconButton.outlined(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          style: IconButton.styleFrom(padding: EdgeInsets.all(8), iconSize: 20),
        ),
        centerTitle: true,
        surfaceTintColor: colorScheme(context).onError,
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              radius: 40,
              backgroundImage: CachedNetworkImageProvider('https://images.pexels.com/photos/3763188/pexels-photo-3763188.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
            ),
          ),
          SizedBox(height: 15,),
          Text('LUCY',style: textTheme(context).headlineLarge!.copyWith(fontSize: 25,fontWeight: FontWeight.w700,color: colorScheme(context).primary,letterSpacing: 0),),
          SizedBox(height: 10,),
          Text('CALLING',style: textTheme(context).headlineSmall!.copyWith(fontSize: 18,fontWeight: FontWeight.w500,color: colorScheme(context).onSecondary,letterSpacing: 0),),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.volume_down,size: 40,color: colorScheme(context).secondary,),
              Icon(Icons.pause,size: 40,color: colorScheme(context).secondary,),
              Icon(Icons.apps,size: 40,color: colorScheme(context).secondary,),
            ],
          ),
          SizedBox(height: 80,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.videocam,size: 40,color: colorScheme(context).secondary,),
              Icon(Icons.add_call,size: 40,color: colorScheme(context).secondary,),
              Icon(Icons.mic,size: 40,color: colorScheme(context).secondary,),
            ],
          ),
          SizedBox(height: 120,),
          CircleAvatar(
            radius: 35,
            backgroundColor: colorScheme(context).error,
            child: Icon(Icons.call_end),
          )
        ],
      ),
    );
  }
}
