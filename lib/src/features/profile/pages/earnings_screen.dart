import 'package:clean_snap/src/common/const/global_variable.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'chart.dart';

class EarningsScreen extends StatefulWidget {

  EarningsScreen({super.key});

  @override
  State<EarningsScreen> createState() => _EarningsScreenState();
}

class _EarningsScreenState extends State<EarningsScreen> {
  String selectValue = 'Paid';
  String selectValueMonth = 'This month';

  List<String> option = ['Paid', 'Pending', 'Overdue'];
  List<String> optionMonth = ['This month','Jan', 'Feb', 'Mar'];

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
        title: Text(
          'Earnings',
          style: textTheme(context)
              .titleMedium!
              .copyWith(color: colorScheme(context).onSecondary),
        ),
        centerTitle: true,
        surfaceTintColor: colorScheme(context).onError,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
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
                  Row(
                    children: [
                     Column(
                       children: [
                         Row(
                           children: [
                             Text('Total This Month: ',style: textTheme(context).bodyLarge!.copyWith(fontSize: 11,fontWeight: FontWeight.w600,color: colorScheme(context).onSurface)),
                             Text(r'$1,200',style: textTheme(context).bodyLarge!.copyWith(fontSize: 11,fontWeight: FontWeight.w600,color: colorScheme(context).onSecondary)),
                           ],),
                         SizedBox(height: 4,),
                         Row(
                           children: [
                             Text('Pending Payments: ',style: textTheme(context).bodyLarge!.copyWith(fontSize: 11,fontWeight: FontWeight.w600,color: colorScheme(context).onSurface)),
                             Text(r'$200 ',style: textTheme(context).bodyLarge!.copyWith(fontSize: 11,fontWeight: FontWeight.w600,color: colorScheme(context).onSecondary)),
                           ],),
                       ],
                     ),
                      Spacer(),
                      InkWell(
                        onTap: (){

                        },
                        child: Container(
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
                  SizedBox(height: 4,),
                  Row(
                    children: [
                      Text('Completed Payments: ',style: textTheme(context).bodyLarge!.copyWith(fontSize: 11,fontWeight: FontWeight.w600,color: colorScheme(context).onSurface)),
                      Text(r'$1,000',style: textTheme(context).bodyLarge!.copyWith(fontSize: 11,fontWeight: FontWeight.w600,color: colorScheme(context).onSecondary)),
                    ],),
                  SizedBox(height: 4,),
                  Row(
                    children: [
                      Text('Estimated Duration:',style: textTheme(context).bodyLarge!.copyWith(fontSize: 11,fontWeight: FontWeight.w600,color: colorScheme(context).onSurface)),
                      Text('2 hours',style: textTheme(context).bodyLarge!.copyWith(fontSize: 11,fontWeight: FontWeight.w600,color: colorScheme(context).onSecondary)),
                    ],),
                ],
              ),
            ),
            SizedBox(height: 10,),
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
                  Text('Total Earning',style: textTheme(context).bodyLarge!.copyWith(letterSpacing: 0,fontSize: 16,fontWeight: FontWeight.w500,color: colorScheme(context).onSurface)),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        height: 38,
                        decoration: BoxDecoration(
                          border: Border.all(color: colorScheme(context).primary,width: 2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: DropdownButton(
                            items: option.map<DropdownMenuItem<String>>((String value){
                              return DropdownMenuItem(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),

                            value: selectValue,
                            underline: SizedBox(),
                            icon: Icon(Icons.keyboard_arrow_down_outlined,color: colorScheme(context).primary),
                            style: textTheme(context).bodyMedium!.copyWith(fontWeight: FontWeight.w600,letterSpacing: 0,color: colorScheme(context).primary),
                            alignment: Alignment.bottomCenter,
                            dropdownColor: Colors.white,
                            onChanged: (String? newValue){
                              setState(() {
                                selectValue = newValue!;
                              });
                            }
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        height: 38,
                        decoration: BoxDecoration(
                          border: Border.all(color: colorScheme(context).primary,width: 2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: DropdownButton(
                            items: optionMonth.map<DropdownMenuItem<String>>((String value){
                              return DropdownMenuItem(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),

                            value: selectValueMonth,
                            underline: SizedBox(),
                            icon: Icon(Icons.keyboard_arrow_down_outlined,color: colorScheme(context).primary),
                            style: textTheme(context).bodyMedium!.copyWith(fontWeight: FontWeight.w600,letterSpacing: 0,color: colorScheme(context).primary),
                            alignment: Alignment.bottomCenter,
                            dropdownColor: Colors.white,
                            onChanged: (String? newValue){
                              setState(() {
                                selectValueMonth = newValue!;
                              });
                            }
                        ),
                      ),
                    ],
                  ),
                  monthlyPerformanceChart(),
                ],
              ),
            ),
            SizedBox(height: 10,),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Container(
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
                                      Text('Payout Date: ',style: textTheme(context).bodyLarge!.copyWith(color: colorScheme(context).onSurface)),
                                      Text('22 Mar 2021, Sunday',style: textTheme(context).bodyLarge!.copyWith(letterSpacing: 0,fontWeight: FontWeight.w500,color: colorScheme(context).onSecondary)),
                                    ],),
                                  SizedBox(height: 4,),
                                  Row(
                                    children: [
                                      Text('Amount: ',style: textTheme(context).bodyLarge!.copyWith(color: colorScheme(context).onSurface)),
                                      Text(r'$200',style: textTheme(context).bodyLarge!.copyWith(letterSpacing: 0,fontWeight: FontWeight.w500,color: colorScheme(context).onSecondary)),
                                    ],),
                                  SizedBox(height: 4,),
                                  Row(
                                    children: [
                                      Text('Location: ',style: textTheme(context).bodyLarge!.copyWith(color: colorScheme(context).onSurface)),
                                      Text('City, Country',style: textTheme(context).bodyLarge!.copyWith(letterSpacing: 0,fontWeight: FontWeight.w500,color: colorScheme(context).onSecondary)),
                                    ],),
                                  SizedBox(height: 4,),
                                  Row(
                                    children: [
                                      Text('Pay: ',style: textTheme(context).bodyLarge!.copyWith(color: colorScheme(context).onSurface)),
                                      Text(r'$340',style: textTheme(context).bodyLarge!.copyWith(letterSpacing: 0,fontWeight: FontWeight.w500,color: colorScheme(context).onSecondary)),
                                    ],),
                                  SizedBox(height: 4,),
                                  Row(
                                    children: [
                                      Text('Payment Method: ',style: textTheme(context).bodyLarge!.copyWith(color: colorScheme(context).onSurface)),
                                      Text('Paid via Visa',style: textTheme(context).bodyLarge!.copyWith(letterSpacing: 0,fontWeight: FontWeight.w500,color: colorScheme(context).onSecondary)),
                                    ],),
                                  SizedBox(height: 4,),
                                  Row(
                                    children: [
                                      Text('Transaction ID: ',style: textTheme(context).bodyLarge!.copyWith(color: colorScheme(context).onSurface)),
                                      Text('1234567890',style: textTheme(context).bodyLarge!.copyWith(letterSpacing: 0,fontWeight: FontWeight.w500,color: colorScheme(context).onSecondary)),
                                    ],),
                                ],
                              ),
                              const Spacer(),
                              Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: colorScheme(context).surface.withOpacity(0.3)
                                    ),
                                    child: Text('Pending',style: textTheme(context).titleMedium!.copyWith(fontWeight: FontWeight.w500,fontSize: 10),),
                                  ),
                                  const SizedBox(height: 10,),
                                  Text(r'$340',style: textTheme(context).headlineMedium!.copyWith(color: colorScheme(context).primary,fontSize: 24,fontWeight: FontWeight.w600),),

                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },)
          ],
        ),
      ),
    );
  }

//
//   Container monthlyPerformanceChart() {
//
//     }
}
