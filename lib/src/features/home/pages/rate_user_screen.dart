import 'package:cached_network_image/cached_network_image.dart';
import 'package:clean_snap/src/common/const/global_variable.dart';
import 'package:clean_snap/src/common/widgets/custom_button.dart';
import 'package:clean_snap/src/features/home/pages/during_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RateUserScreen extends StatefulWidget {
  const RateUserScreen({super.key});

  @override
  State<RateUserScreen> createState() => _RateUserScreenState();
}

class _RateUserScreenState extends State<RateUserScreen> {
  // double _progress = 0.5;
  double rating = 4;
  final ValueNotifier<double> _progressNotifier = ValueNotifier<double>(0.5);
  final ValueNotifier<double> _valueNotifier = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    print(_progressNotifier);
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
        title: Text(
          'Rate User',
          style: textTheme(context)
              .titleMedium!
              .copyWith(color: colorScheme(context).onSecondary),
        ),
        centerTitle: true,
        surfaceTintColor: colorScheme(context).onError,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
           Container(
             width: double.infinity,
             padding: const EdgeInsets.all(10),
             decoration: BoxDecoration(
                 color: colorScheme(context).onPrimary,
                 borderRadius: BorderRadius.circular(15)
             ),
             child: Column(
               // crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Align(
                     alignment: Alignment.topLeft,
                     child: Text('Rate Your Experience',style: textTheme(context).bodySmall!.copyWith(letterSpacing: 0,fontWeight: FontWeight.w500,color: colorScheme(context).onSecondary),)),
                 Center(
                   child: RatingBar.builder(
                       itemCount: 5,
                       minRating: 0,
                       initialRating: rating,
                       // itemPadding: EdgeInsets.symmetric(horizontal: 4),
                       direction: Axis.horizontal,
                       allowHalfRating: true,
                       unratedColor: colorScheme(context).secondary.withOpacity(0.5),
                       itemBuilder: (context, index) {
                         return Icon(Icons.star_rate_rounded,color: colorScheme(context).primary);
                       },
                       onRatingUpdate: (newRating){
                         setState(() {
                           rating = newRating;
                         });
                       }
                   ),
                 ),
                 Text("$rating/5.0",style: textTheme(context).titleMedium!.copyWith(color: colorScheme(context).onSecondary,fontWeight: FontWeight.w600,letterSpacing: 0),)

               ],
             ),
           ),
           Text('Your Review',style: textTheme(context).bodyMedium!.copyWith(letterSpacing: 0,fontWeight: FontWeight.w500,color: colorScheme(context).onSecondary),),
            TextFormField(
              maxLines: 3,
              decoration: InputDecoration(
                fillColor: colorScheme(context).secondary.withOpacity(0.08),
                filled: true,
                hintText: 'Write Your Review',
                hintStyle: textTheme(context).bodyMedium!.copyWith(letterSpacing: 0,fontWeight: FontWeight.w500,color: colorScheme(context).secondary),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: colorScheme(context).secondary.withOpacity(0.08)),
                  borderRadius: BorderRadius.circular(6)
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: colorScheme(context).secondary.withOpacity(0.08)),
                    borderRadius: BorderRadius.circular(6)

                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: colorScheme(context).secondary.withOpacity(0.08)),
                    borderRadius: BorderRadius.circular(6)
                ),

              ),
            ),
            SizedBox(height: 20,),
           CustomButton(title: 'Submit Rating', onTap: (){
             Navigator.push(context, MaterialPageRoute(builder:  (context) => DuringServiceScreen(),));
           }),
          ],
        ),
      ),
    );
  }
}
