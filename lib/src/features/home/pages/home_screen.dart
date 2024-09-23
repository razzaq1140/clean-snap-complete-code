import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:clean_snap/src/common/const/app_images.dart';
import 'package:clean_snap/src/common/const/global_variable.dart';
import 'package:clean_snap/src/features/home/pages/bottem_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(Duration(seconds: 3));
      bottamSheet();
      // BottamSheet();
    });
    // _startCount();
  }

  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorScheme(context).onError,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              isSelected
                  ? ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: const CircleAvatar(
                        radius: 30,
                        backgroundImage: CachedNetworkImageProvider(
                            AppImages.homeProfileImage),
                      ),
                      title: const Text('Welcome back'),
                      subtitle: Text(
                        'Jhon Smith',
                        style: textTheme(context).titleSmall?.copyWith(
                              fontWeight: FontWeight.w500,
                              color: colorScheme(context).primary,
                            ),
                      ),
                      trailing: InkWell(
                        onTap: () {
                          setState(() {
                            isSelected = !isSelected;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: colorScheme(context).onPrimary,
                              borderRadius: BorderRadius.circular(8)),
                          child: Icon(
                            CupertinoIcons.search,
                            color: colorScheme(context).onSurface,
                          ),
                        ),
                      ),
                    )
                  : TextFormField(
                decoration: InputDecoration(
                  hintText: 'Search',
                suffixIcon: IconButton(icon: Icon(Icons.cancel_outlined,size: 30,),onPressed: (){
                  setState(() {
                    isSelected =! isSelected;
                  });
                },),
                contentPadding: EdgeInsets.all(8),
                filled: true,
                fillColor: colorScheme(context).secondary.withOpacity(0.08),
                hintStyle: textTheme(context).bodyMedium!.copyWith(letterSpacing: 0,fontWeight: FontWeight.w500,color: colorScheme(context).secondary),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                  color: colorScheme(context).secondary,

                    )
                  ) ,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                  color: colorScheme(context).secondary,

                    )
                  ) ,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(
                  color: colorScheme(context).secondary,

                    )
                  ) ,
                ),
              ),
              SizedBox(height: 10,),
              Container(
                padding: const EdgeInsets.only(left: 30),
                decoration: BoxDecoration(
                  color: colorScheme(context).primary,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 68.0),
                      child: SizedBox(
                          width: 100,
                          child: Text(
                            "Manage your cleaning schedule and jobs",
                            style: textTheme(context).titleSmall!.copyWith(
                                fontWeight: FontWeight.w500,
                                color: colorScheme(context).onPrimary),
                          )),
                    ),
                    const SizedBox(
                      width: 9,
                    ),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Image.asset(
                          AppImages.homeImg,
                          height: 161,
                          width: 158,
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Upcoming Jobs',
                    style: textTheme(context)
                        .titleSmall!
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 13,
                    backgroundColor: colorScheme(context).primary,
                    child: Center(
                      child: Text(
                        '6',
                        style: textTheme(context).bodyMedium!.copyWith(
                            color: colorScheme(context).onPrimary,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  )
                ],
              ),
              ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: colorScheme(context).onPrimary,
                            borderRadius: BorderRadius.circular(15)),
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
                                        imageUrl:
                                            'https://images.pexels.com/photos/262391/pexels-photo-262391.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                                        fit: BoxFit.cover,
                                      )),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('James pinto',
                                        style: textTheme(context)
                                            .bodyLarge!
                                            .copyWith(
                                                fontSize: 11,
                                                fontWeight: FontWeight.w500,
                                                color: colorScheme(context)
                                                    .onSecondary)),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star_rate_rounded,
                                          size: 15,
                                          color: colorScheme(context).primary,
                                        ),
                                        Text('4.7',
                                            style: textTheme(context)
                                                .bodyLarge!
                                                .copyWith(
                                                    fontSize: 11,
                                                    fontWeight: FontWeight.w600,
                                                    color: colorScheme(context)
                                                        .onSecondary)),
                                      ],
                                    ),
                                    Text(
                                      'Job name',
                                      style: textTheme(context)
                                          .bodyLarge!
                                          .copyWith(
                                              fontWeight: FontWeight.w600,
                                              color: colorScheme(context)
                                                  .onSecondary),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Column(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(6.0),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          color: colorScheme(context)
                                              .surface
                                              .withOpacity(0.3)),
                                      child: Text(
                                        'Pending',
                                        style: textTheme(context)
                                            .labelSmall!
                                            .copyWith(
                                                color: colorScheme(context)
                                                    .primary),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      r'$340',
                                      style: textTheme(context)
                                          .headlineMedium!
                                          .copyWith(
                                              color:
                                                  colorScheme(context).primary,
                                              fontSize: 24,
                                              fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            const Row(
                              children: [
                                Text('Date'),
                                SizedBox(
                                  width: 140,
                                ),
                                Text('Time')
                              ],
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Row(
                              children: [
                                Text(
                                  '22 Mar 2021, Sunday',
                                  style: textTheme(context)
                                      .labelSmall!
                                      .copyWith(
                                          color:
                                              colorScheme(context).onSecondary),
                                ),
                                const SizedBox(
                                  width: 35,
                                ),
                                Text(
                                  '8:00 AM',
                                  style: textTheme(context)
                                      .labelSmall!
                                      .copyWith(
                                          color:
                                              colorScheme(context).onSecondary),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.location_on,
                                  size: 15,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '1012 Ocean avanue, New york, USA',
                                  style: textTheme(context)
                                      .labelSmall!
                                      .copyWith(
                                          color:
                                              colorScheme(context).onSecondary),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }

  void bottamSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return BottamSheet();
        });
  }
}
