import 'package:cached_network_image/cached_network_image.dart';
import 'package:clean_snap/src/common/const/global_variable.dart';
import 'package:clean_snap/src/features/home/pages/attend_call_screen.dart';
import 'package:flutter/material.dart';

class CallScreenBlue extends StatefulWidget {
  const CallScreenBlue({super.key});

  @override
  State<CallScreenBlue> createState() => _CallScreenBlueState();
}

class _CallScreenBlueState extends State<CallScreenBlue> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => AttendCallScreen(),));
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorScheme(context).primary,
      appBar: AppBar(
        backgroundColor: colorScheme(context).primary,
        leading: Transform.scale(
          scale: 0.8,  // Scale down the widget to half its original size
          child: OutlinedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: OutlinedButton.styleFrom(
              shape: CircleBorder(),  // Circular shape
              side: BorderSide(color: Colors.white),  // White border
              padding: EdgeInsets.zero,  // No padding, to reduce button size
              minimumSize: Size(10, 10),  // Minimum button size
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,  // Shrink button to fit content
              fixedSize: Size(30, 30),  // Fix button size
            ),
            child: Icon(
              Icons.arrow_back,
              color: colorScheme(context).onPrimary,  // Icon color
              size: 20,  // Adjust the icon size to match smaller button
            ),
          ),
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
          Text('LUCY',style: textTheme(context).headlineLarge!.copyWith(fontSize: 25,fontWeight: FontWeight.w700,color: colorScheme(context).onPrimary,letterSpacing: 0),),
          SizedBox(height: 10,),
          Text('CALLING',style: textTheme(context).headlineSmall!.copyWith(fontSize: 18,fontWeight: FontWeight.w500,color: colorScheme(context).onPrimary,letterSpacing: 0),),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.volume_down,size: 40,color: colorScheme(context).onPrimary,),
              Icon(Icons.pause,size: 40,color: colorScheme(context).onPrimary,),
              Icon(Icons.apps,size: 40,color: colorScheme(context).onPrimary,),
            ],
          ),
          SizedBox(height: 80,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.videocam,size: 40,color: colorScheme(context).onPrimary,),
              Icon(Icons.add_call,size: 40,color: colorScheme(context).onPrimary,),
              Icon(Icons.mic,size: 40,color: colorScheme(context).onPrimary,),
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
