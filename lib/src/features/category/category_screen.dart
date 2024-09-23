import 'package:clean_snap/src/common/const/global_variable.dart';
import 'package:clean_snap/src/common/widgets/custom_button.dart';
import 'package:clean_snap/src/features/booking/service_provider/pages/service_provider_screen.dart';
import 'package:clean_snap/src/features/category/category_model.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  final String categoryTitle;
  final List<CategoryModel> categories;
  const CategoryScreen({super.key,required this.categories, required this.categoryTitle});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorScheme(context).onError,
      appBar: AppBar(
        backgroundColor: colorScheme(context).onError,
        title: Text(widget.categoryTitle,style: textTheme(context).titleMedium!.copyWith(color: colorScheme(context).onSecondary),),
        leading: IconButton.outlined(
          onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back),
          style: IconButton.styleFrom(
              padding: EdgeInsets.all(8),
              iconSize: 20
          ),
        ),
        surfaceTintColor: colorScheme(context).onError,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Flexible(
              child: ListView.builder(
                  itemCount:  widget.categories.length,
                  itemBuilder: (context, index){
                    return Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: colorScheme(context).onPrimary,
                              spreadRadius: 1,
                              blurRadius: 10,
                              offset: Offset(0, 5),
                            )
                          ]
                      ),
                      child: Card(
                        color: colorScheme(context).onPrimary,
                        child: ListTile(
                          leading: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: colorScheme(context).onError,
                                  borderRadius: BorderRadius.circular(5)
                              ),
                              child: Image.asset(widget.categories[index].img)),
                          title: Text(widget.categories[index].txtTitle,style: textTheme(context).labelLarge!.copyWith(color: colorScheme(context).onSecondary,fontWeight: FontWeight.w600,letterSpacing: 0),),
                          subtitle: Text(widget.categories[index].txtDesc,style: textTheme(context).labelMedium!.copyWith(color: colorScheme(context).onSurface,fontWeight: FontWeight.w600,letterSpacing: 0)),
                        ),
                      ),
                    );
                  }
              ),
            ),
            CustomButton(title: 'Next', onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:  (context) => ServiceProviderScreen(),));
            })
          ],
        ),
      )
    );
  }
}
