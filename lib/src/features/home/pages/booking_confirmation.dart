import 'package:cached_network_image/cached_network_image.dart';
import 'package:clean_snap/src/common/const/global_variable.dart';
import 'package:clean_snap/src/common/widgets/custom_button.dart';
import 'package:clean_snap/src/features/home/pages/during_service.dart';
import 'package:clean_snap/src/features/home/pages/rate_user_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookingConfirmationScreen extends StatelessWidget {
  const BookingConfirmationScreen({super.key});

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
        surfaceTintColor: colorScheme(context).onError,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 55,
                backgroundColor: colorScheme(context).surface,
                child: CircleAvatar(
                  radius: 40,
                  child: Icon(Icons.done,size: 40,color: colorScheme(context).onPrimary,),
                ),
              ),
            ),
            Text('Booking Confirmation',style: textTheme(context).titleMedium!.copyWith(color: colorScheme(context).onSecondary),),
            Text('You have successfully accepted the\nbooking!',textAlign: TextAlign.center,style: textTheme(context).bodyLarge!.copyWith(letterSpacing: 0),),
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Service Name',style: textTheme(context).titleSmall!.copyWith(letterSpacing: 0,fontSize: 16,fontWeight: FontWeight.w500,color: colorScheme(context).onSecondary)),
                          SizedBox(height: 4,),
                          Row(
                            children: [
                              Text('Date:',style: textTheme(context).bodyLarge!.copyWith(fontSize: 11,fontWeight: FontWeight.w600,color: colorScheme(context).onSurface)),
                              Text('22 Mar 2021, Sunday',style: textTheme(context).bodyLarge!.copyWith(fontSize: 11,fontWeight: FontWeight.w600,color: colorScheme(context).onSecondary)),
                            ],),
                          SizedBox(height: 4,),
                          Row(
                            children: [
                              Text('Time:',style: textTheme(context).bodyLarge!.copyWith(fontSize: 11,fontWeight: FontWeight.w600,color: colorScheme(context).onSurface)),
                              Text('10:00 AM',style: textTheme(context).bodyLarge!.copyWith(fontSize: 11,fontWeight: FontWeight.w600,color: colorScheme(context).onSecondary)),
                            ],),
                          SizedBox(height: 4,),
                          Row(
                            children: [
                              Text('Location:',style: textTheme(context).bodyLarge!.copyWith(fontSize: 11,fontWeight: FontWeight.w600,color: colorScheme(context).onSurface)),
                              Text('City, Country',style: textTheme(context).bodyLarge!.copyWith(fontSize: 11,fontWeight: FontWeight.w600,color: colorScheme(context).onSecondary)),
                            ],),
                          SizedBox(height: 4,),
                          Row(
                            children: [
                              Text('Estimated Duration:',style: textTheme(context).bodyLarge!.copyWith(fontSize: 11,fontWeight: FontWeight.w600,color: colorScheme(context).onSurface)),
                              Text('2 hours',style: textTheme(context).bodyLarge!.copyWith(fontSize: 11,fontWeight: FontWeight.w600,color: colorScheme(context).onSecondary)),
                            ],),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          Text(r'$340',style: textTheme(context).headlineMedium!.copyWith(color: colorScheme(context).primary,fontSize: 24,fontWeight: FontWeight.w600),),
                          const SizedBox(height: 10,),
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
            SizedBox(height: 15,),
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
            SizedBox(height: 15,),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: colorScheme(context).onPrimary,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Special Instructions',style: textTheme(context).labelLarge,),
                  Text('Focus on the kitchen and living room areas. and also dinning room.',style: textTheme(context).labelSmall!.copyWith(color: colorScheme(context).onSecondary,letterSpacing: 0),),
                ],
              ),
            ),
            SizedBox(height: 15,),
            CustomButton(title: 'Booking Detail', onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => RateUserScreen(),));
            }),
            SizedBox(height: 15,),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: colorScheme(context).onPrimary,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Preparation Tips',style: textTheme(context).labelLarge,),
                  Text('Bring all necessary cleaning supplies and arrive on time. ',style: textTheme(context).labelSmall!.copyWith(color: colorScheme(context).onSecondary,letterSpacing: 0),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
