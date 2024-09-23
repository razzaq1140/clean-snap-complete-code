import 'package:cached_network_image/cached_network_image.dart';
import 'package:clean_snap/src/common/const/app_images.dart';
import 'package:clean_snap/src/common/const/global_variable.dart';
import 'package:clean_snap/src/features/profile/pages/earnings_screen.dart';
import 'package:clean_snap/src/features/profile/provider/switch_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorScheme(context).onError,
      appBar: AppBar(
        backgroundColor: colorScheme(context).onError,
        title: Text(
          'Your Profile',
          style: textTheme(context)
              .titleMedium!
              .copyWith(color: colorScheme(context).onSecondary),
        ),
        surfaceTintColor: colorScheme(context).onError,
        centerTitle: true,
        actions: [
          Icon(Icons.settings),
          SizedBox(width: 20,),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                radius: 40,
                backgroundImage: CachedNetworkImageProvider(AppImages.homeProfileImage),
              ),
              
            ),
            Text('Jhon Smith',style: textTheme(context).titleMedium!.copyWith(fontSize: 20,color: colorScheme(context).onSecondary),),
            SizedBox(height: 3,),
            Text('+900000000000',style: textTheme(context).labelMedium!.copyWith(letterSpacing: 0),),
            SizedBox(height: 3,),
            Text('abbdefdsfslj@gmail.com',style: textTheme(context).labelMedium!.copyWith(letterSpacing: 0),),
            SizedBox(height: 3,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on,size: 16,color: colorScheme(context).onSurface,),
                Text('abbdefds City, Country',style: textTheme(context).labelMedium!.copyWith(letterSpacing: 0),),
              ],
            ),
            SizedBox(height: 30,),
            Container(
              height: 48,
              width: 123,
              decoration: BoxDecoration(
                  color: colorScheme(context).primary,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Center(child: Text('Edit',style: textTheme(context).bodyLarge!.copyWith(fontWeight: FontWeight.w600,color: colorScheme(context).onPrimary),)),
            ),
            SizedBox(height: 30,),
            Align(
                alignment: Alignment.centerLeft,
                child: Text('Availability Settings')),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Availability',style: textTheme(context).bodyLarge!.copyWith(fontSize: 15,fontWeight: FontWeight.w200,color: colorScheme(context).onSecondary),),
                Transform.scale(
                  scale: 0.8,
                    child: Consumer<SwitchProvider>(
                        builder: (context,value, child){
                          return Switch(
                              value: value.availability, onChanged: (newValue){
                            value.availabilityChange(newValue);
                            print(newValue);
                          });
                        }
                    ))
              ],
            ),
            SizedBox(height: 30,),
            Align(
                alignment: Alignment.centerLeft,
                child: Text('Notification Preferences')),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('New Bookings Notification',style: textTheme(context).bodyLarge!.copyWith(fontSize: 15,fontWeight: FontWeight.w200,color: colorScheme(context).onSecondary),),
                Transform.scale(
                    scale: 0.8,
                    child: Consumer<SwitchProvider>(
                        builder: (context,value, child){
                          return Switch(
                              value: value.bNotification, onChanged: (newValue){
                            value.bNotificationChange(newValue);
                            print(newValue);
                          });
                        }
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Payment Notification',style: textTheme(context).bodyLarge!.copyWith(fontSize: 15,fontWeight: FontWeight.w200,color: colorScheme(context).onSecondary),),
                Transform.scale(
                    scale: 0.8,
                    child: Consumer<SwitchProvider>(
                        builder: (context,value, child){
                          return Switch(
                              value: value.pNotification, onChanged: (newValue){
                            value.pNotificationChange(newValue);
                            print(newValue);
                          });
                        }
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Message Notification',style: textTheme(context).bodyLarge!.copyWith(fontSize: 15,fontWeight: FontWeight.w200,color: colorScheme(context).onSecondary),),
                Transform.scale(
                    scale: 0.8,
                    child: Consumer<SwitchProvider>(
                      builder: (context,value, child){
                        return Switch(
                            value: value.mNotification, onChanged: (newValue){
                          value.mNotificationChange(newValue);
                          print(newValue);
                        });
                      }
                    ))
              ],
            ),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => EarningsScreen(),));
              },
              contentPadding: EdgeInsets.zero,
              title: Text('Earning',style: textTheme(context).bodyLarge!.copyWith(fontSize: 15,fontWeight: FontWeight.w200,color: colorScheme(context).onSecondary),),
              trailing: Icon(Icons.chevron_right),
            ),
            Divider(),
            SizedBox(height: 3,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Logout',style: textTheme(context).bodyLarge!.copyWith(fontSize: 15,fontWeight: FontWeight.w600,color: colorScheme(context).onSecondary),),
                Icon(Icons.chevron_right)
              ],
            ),
            SizedBox(height: 3,),
          ],
        ),
      ),
    );
  }
}
