import 'package:clean_snap/src/common/const/global_variable.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  CustomButton({super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 45,
        width: double.infinity,
        decoration: BoxDecoration(
          color: colorScheme(context).primary,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(title,style: TextStyle(color: Colors.white),),
        ),

      ),
    );
  }
}
