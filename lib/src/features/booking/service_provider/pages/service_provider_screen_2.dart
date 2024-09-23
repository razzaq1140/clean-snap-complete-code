import 'package:cached_network_image/cached_network_image.dart';
import 'package:clean_snap/src/common/const/app_images.dart';
import 'package:clean_snap/src/common/const/global_variable.dart';
import 'package:clean_snap/src/features/booking/service_provider/pages/detail_screen.dart';
import 'package:clean_snap/src/router/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ServiceProviderScreen2 extends StatefulWidget {
  const ServiceProviderScreen2({super.key});

  @override
  State<ServiceProviderScreen2> createState() => _ServiceProviderScreen2State();
}

class _ServiceProviderScreen2State extends State<ServiceProviderScreen2> {
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
          onPressed: () {
            context.pop();
          },
          icon: Icon(Icons.arrow_back),
          style: IconButton.styleFrom(padding: EdgeInsets.all(8), iconSize: 20),
        ),
        surfaceTintColor: colorScheme(context).onError,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Find and book professional cleaners',
                  style: textTheme(context).labelLarge!.copyWith(
                    color: colorScheme(context).onSurface,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              SizedBox(
                height: 42,
                width: double.infinity,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Search for service...',
                    hintStyle: textTheme(context).labelSmall!.copyWith(
                      fontSize: 14,
                    ),
                    prefixIcon: Icon(Icons.search,color: colorScheme(context).secondary,),
                    filled: true,
                    fillColor: colorScheme(context).onPrimary,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: colorScheme(context).onPrimary),

                    ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: colorScheme(context).onPrimary),

                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: colorScheme(context).onPrimary),

                      )

                  ),
                ),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerRight,
                  child: Text('See more  >',style: textTheme(context).labelLarge,)),
              SizedBox(height: 20,),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                  itemBuilder: (context, index){
                return Padding(
                  padding: EdgeInsets.only(bottom: 15),
                  child: Container(
                    decoration: BoxDecoration(
                      // color: Colors.red,
                      color: colorScheme(context).onPrimary,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: colorScheme(context).onError,
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: Offset(0, 5),
                          )
                        ]
                    ),
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Container(
                          height: 147,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                            child: CachedNetworkImage(
                              imageUrl: AppImages.serviceProviderImage,
                              fit: BoxFit.cover,
                              placeholder: (context, url) => Center(child: CircularProgressIndicator(),),
                              errorWidget: (context, url, error) => Center(child: Icon(Icons.error,color: colorScheme(context).error,),),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.star_rate_rounded,color: colorScheme(context).primary,),
                            Icon(Icons.star_rate_rounded,color: colorScheme(context).primary,),
                            Icon(Icons.star_rate_rounded,color: colorScheme(context).primary,),
                            Icon(Icons.star_rate_rounded,color: colorScheme(context).primary,),
                            Icon(Icons.star_rate_rounded,color: colorScheme(context).primary,),
                            Text('(130 Reviews)',style: textTheme(context).labelSmall!.copyWith(color: colorScheme(context).onSecondary),),
                            Spacer(),
                            Text.rich(TextSpan(
                                text: r'$150  ',
                                style: textTheme(context).titleSmall!.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: colorScheme(context).onSecondary,
                                ),
                                children: [
                                  TextSpan(text: r'$180',style: textTheme(context).bodyLarge!.copyWith(
                                      fontSize: 16,decoration: TextDecoration.lineThrough
                                  )),
                                ])),
                          ],
                        ),
                        Text('Kitchen & Appliances',style: textTheme(context).titleSmall!.copyWith(color: colorScheme(context).onSecondary)),
                        ListTile(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder:  (context) => DetailScreen(),));

                          },
                          contentPadding: EdgeInsets.zero,
                          leading: Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5)
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: CachedNetworkImage(
                                imageUrl: AppImages.serviceProviderImage,
                                fit: BoxFit.cover,
                                placeholder: (context, url) => Center(child: CircularProgressIndicator(),),
                                errorWidget: (context, url, error) => Center(child: Icon(Icons.error,color: colorScheme(context).error,),),
                              ),
                            ),
                          ),
                          title: Text('James pinto',style: textTheme(context).labelLarge!.copyWith(fontWeight: FontWeight.w800,color: colorScheme(context).onSecondary)),
                          subtitle: Text('Oven Cleaning',style: textTheme(context).labelMedium),
                          trailing: Container(
                            height: 36,
                            width: 75,
                            decoration: BoxDecoration(
                                color: colorScheme(context).primary,
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: Center(child: Text('View',style: textTheme(context).bodyLarge!.copyWith(fontWeight: FontWeight.w600,color: colorScheme(context).onPrimary),)),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
