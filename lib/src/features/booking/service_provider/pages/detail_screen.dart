import 'package:cached_network_image/cached_network_image.dart';
import 'package:clean_snap/src/common/const/app_images.dart';
import 'package:clean_snap/src/common/const/global_variable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

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
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
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
            ),
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
            SizedBox(height: 7,),
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
            SizedBox(height: 7,),
            Text('Kitchen & Appliances',style: textTheme(context).titleSmall!.copyWith(color: colorScheme(context).onSecondary)),
            SizedBox(height: 7,),
            Text('Description',style: textTheme(context).labelLarge!.copyWith()),
            SizedBox(height: 5,),
            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, qui nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',style: textTheme(context).labelLarge!.copyWith(letterSpacing: 0.3,color: colorScheme(context).onSecondary)),
            SizedBox(height: 7,),
            Row(
              children: [
                Text('Experience: ',style: textTheme(context).labelLarge!.copyWith()),
                Text('5 years',style: textTheme(context).labelLarge!.copyWith(color: colorScheme(context).onSecondary)),
              ],
            ),
            SizedBox(height: 7,),
            Row(
              children: [
                Text('Jobs: ',style: textTheme(context).labelLarge!.copyWith()),
                Text('200+ Completed',style: textTheme(context).labelLarge!.copyWith(color: colorScheme(context).onSecondary)),
              ],
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: colorScheme(context).surface.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Icon(CupertinoIcons.phone_circle_fill,size: 30,color: colorScheme(context).primary),
                      SizedBox(width: 8,),
                      Text('Call',style: textTheme(context).labelMedium!.copyWith(color: colorScheme(context).onSecondary),),
                    ],
                  ),
                ),
                SizedBox(width: 15,),

                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: colorScheme(context).surface.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Icon(CupertinoIcons.mail_solid,color: colorScheme(context).primary),
                      SizedBox(width: 8,),
                      Text('Chat',style: textTheme(context).labelMedium!.copyWith(color: colorScheme(context).onSecondary),),
                    ],
                  ),
                ),
                SizedBox(width: 15,),

                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: colorScheme(context).surface.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      Icon(CupertinoIcons.share,color: colorScheme(context).primary,),
                      SizedBox(width: 8,),
                      Text('Share',style: textTheme(context).labelMedium!.copyWith(color: colorScheme(context).onSecondary),),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Review',style: textTheme(context).labelLarge,),
          Text('See more  >'),
              ],
            ),
            SizedBox(height: 10,),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
                itemBuilder: (context, index){
                  return Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: colorScheme(context).onPrimary,
                          boxShadow: [
                            BoxShadow(
                              color: colorScheme(context).onPrimary,
                              spreadRadius: 0.5,
                              blurRadius: 0.5,
                              offset: Offset(0, 0.2),
                            )
                          ]
                      ),
                      child: Column(
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: CircleAvatar(
                              radius: 25,
                              backgroundImage:  CachedNetworkImageProvider(AppImages.serviceProviderImage),
                            ),
                            title: Text('John Doe',style: textTheme(context).labelLarge!.copyWith()),
                            subtitle: Row(
                              children: [
                                Icon(Icons.star_rate_rounded,size: 16,color: colorScheme(context).primary,),
                                Icon(Icons.star_rate_rounded,size: 16,color: colorScheme(context).primary,),
                                Icon(Icons.star_rate_rounded,size: 16,color: colorScheme(context).primary,),
                                Icon(Icons.star_rate_rounded,size: 16,color: colorScheme(context).primary,),
                                Icon(Icons.star_rate_rounded,size: 16,color: colorScheme(context).primary,),
                                Text('2 min ago',style: textTheme(context).bodyMedium!.copyWith(color: colorScheme(context).onSecondary),),
                              ],
                            ),
                            trailing: Icon(Icons.more_vert),
                          ),
                          Text("Lorem Ipsum has been the industry's standard dummy text ever since the Lorem Ipsum has been the industry's  "),
                        ],
                      ),
                    ),
                  );
                }
            )
          ],
        ),
      ),
    );
  }
}
