import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:clean_snap/src/common/const/global_variable.dart';
import 'package:clean_snap/src/features/bottam_bar/bottam_bar.dart';
import 'package:clean_snap/src/features/home/pages/booking_confirmation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottamSheet extends StatefulWidget {
  const BottamSheet({super.key});

  @override
  State<BottamSheet> createState() => _BottamSheetState();
}

class _BottamSheetState extends State<BottamSheet> {

  int _countDown = 30;
  Timer? timer;

  // @override
  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance.addPostFrameCallback((_) async{
  //     await Future.delayed(Duration(seconds: 3));
  //     // bottamSheet();
  //   });
  //   _startCount();
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      _startCount();
    });
  }

  _startCount(){
    timer = Timer.periodic(Duration(seconds: 1), (timer){
      if(_countDown > 0){
        setState(() {
          _countDown--;
        });
      }else{
        setState(() {
          timer.cancel();
          navigateBookingScreen();
        });
      }
    });
  }

  void navigateBookingScreen(){
    Navigator.pop(context);
  }

  @override
  void dispose() {
    super.dispose();
    timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      // height: 700,
      width: double.infinity,
      decoration: BoxDecoration(
          color: colorScheme(context).onError,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          )
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('New Booking Request',style: textTheme(context).titleMedium!.copyWith(color: colorScheme(context).onSecondary,letterSpacing: 0),),
              IconButton(icon: Icon(Icons.cancel_outlined,size: 35,color: colorScheme(context).onSurface,),onPressed: (){
                Navigator.pop(context);
              },),
            ],
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: colorScheme(context).onPrimary,
                borderRadius: BorderRadius.circular(15)
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Service Name',style: textTheme(context).titleSmall!.copyWith(letterSpacing: 0,fontSize: 16,fontWeight: FontWeight.w500,color: colorScheme(context).onSecondary)),
                        SizedBox(height: 3,),
                        Row(
                          children: [
                            Text('Date:',style: textTheme(context).labelSmall!.copyWith(fontWeight: FontWeight.w600,color: colorScheme(context).onSurface)),
                            Text('22 Mar 2021, Sunday',style: textTheme(context).labelSmall!.copyWith(fontWeight: FontWeight.w600,color: colorScheme(context).onSecondary)),
                          ],),
                        SizedBox(height: 3,),
                        Row(
                          children: [
                            Text('Time:',style: textTheme(context).labelSmall!.copyWith(fontWeight: FontWeight.w600,color: colorScheme(context).onSurface)),
                            Text('10:00 AM',style: textTheme(context).labelSmall!.copyWith(fontWeight: FontWeight.w600,color: colorScheme(context).onSecondary)),
                          ],),
                        SizedBox(height: 3,),
                        Row(
                          children: [
                            Text('Location:',style: textTheme(context).labelSmall!.copyWith(fontWeight: FontWeight.w600,color: colorScheme(context).onSurface)),
                            Text('City, Country',style: textTheme(context).labelSmall!.copyWith(fontWeight: FontWeight.w600,color: colorScheme(context).onSecondary)),
                          ],),
                        SizedBox(height: 3,),
                        Row(
                          children: [
                            Text('Estimated Duration:',style: textTheme(context).labelSmall!.copyWith(fontWeight: FontWeight.w600,color: colorScheme(context).onSurface)),
                            Text('2 hours',style: textTheme(context).labelSmall!.copyWith(fontWeight: FontWeight.w600,color: colorScheme(context).onSecondary)),
                          ],),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        Text(r'$340',style: textTheme(context).headlineMedium!.copyWith(color: colorScheme(context).primary,fontSize: 24,fontWeight: FontWeight.w600),),
                        const SizedBox(height: 8,),
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: colorScheme(context).surface.withOpacity(0.3)
                          ),
                          child: Column(
                            children: [
                              Text('|||',style: textTheme(context).titleMedium!.copyWith(color: colorScheme(context).primary,fontWeight: FontWeight.w900),),
                              Text('Map',style: textTheme(context).labelSmall!.copyWith(letterSpacing: 0,color: colorScheme(context).onSecondary),),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 8,),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: colorScheme(context).onPrimary,
                borderRadius: BorderRadius.circular(15)
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 63,
                      width: 63,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: CachedNetworkImage(
                            imageUrl: 'https://images.pexels.com/photos/262391/pexels-photo-262391.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                            fit: BoxFit.cover,
                          )),
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('James pinto',style: textTheme(context).bodyLarge!.copyWith(fontSize: 11,fontWeight: FontWeight.w500,color: colorScheme(context).onSecondary)),
                        Row(children: [
                          Icon(Icons.star_rate_rounded,size: 15,color: colorScheme(context).primary,),
                          Text('4.7',style: textTheme(context).bodyLarge!.copyWith(fontSize: 11,fontWeight: FontWeight.w600,color: colorScheme(context).onSecondary)),
                        ],),
                        Text('Job name',style: textTheme(context).bodyLarge!.copyWith(fontWeight: FontWeight.w600,color: colorScheme(context).onSecondary),),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: colorScheme(context).surface.withOpacity(0.3)
                          ),
                          child: Column(
                            children: [
                              Icon(Icons.mail,color: colorScheme(context).primary,),
                              Text('Chat',style: textTheme(context).labelSmall!.copyWith(letterSpacing: 0,color: colorScheme(context).onSecondary),),
                            ],
                          ),
                        ),
                        const SizedBox(width: 5,),
                        Container(
                          padding: const EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: colorScheme(context).surface.withOpacity(0.3)
                          ),
                          child: Column(
                            children: [
                              Icon(CupertinoIcons.phone_circle_fill,color: colorScheme(context).primary,),
                              Text('Call',style: textTheme(context).labelSmall!.copyWith(letterSpacing: 0,color: colorScheme(context).onSecondary),),
                            ],
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ],
            ),
          ),
          // SizedBox(height: 8,),
          // Container(
          //   width: double.infinity,
          //   padding: const EdgeInsets.all(8),
          //   decoration: BoxDecoration(
          //       color: colorScheme(context).onPrimary,
          //       borderRadius: BorderRadius.circular(15)
          //   ),
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Text('Special Instructions',style: textTheme(context).labelLarge,),
          //       Text('Focus on the kitchen and living room areas. and also dinning room.',style: textTheme(context).labelSmall!.copyWith(color: colorScheme(context).onSecondary,letterSpacing: 0),),
          //     ],
          //   ),
          // ),
         Spacer(),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: colorScheme(context).onPrimary,
                borderRadius: BorderRadius.circular(15)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 46,
                    width: 120,
                    decoration: BoxDecoration(
                        color: colorScheme(context).surface.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                      child: Text('Decline',style: textTheme(context).titleSmall!.copyWith(fontWeight: FontWeight.w600,letterSpacing: 0,color: colorScheme(context).primary),),
                    ),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: colorScheme(context).surface.withOpacity(0.3),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Text(_countDown.toString() ,style: textTheme(context).labelSmall!.copyWith(color: colorScheme(context).primary),),

                      CircularProgressIndicator(
                        value: _countDown / 30,
                        color: colorScheme(context).primary,
                        strokeWidth: 3,
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => BookingConfirmationScreen(),));
                  },
                  child: Container(
                    height: 46,
                    width: 120,
                    decoration: BoxDecoration(
                        color: colorScheme(context).primary,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                      child: Text('Accept',style: textTheme(context).titleSmall!.copyWith(fontWeight: FontWeight.w600,letterSpacing: 0,color: colorScheme(context).onPrimary),),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
