import 'package:flutter/material.dart';
import 'package:flutter_application_22dars/core/constants/app_images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> malumot = [
    {
      "rasm": AppImages.burgerJpg,
      "title": "Burger Bistro",
      "info": "Rose garden",
      "price": "\$40",
    },
    {
      "rasm": AppImages.burgerJpg,
      "title": "Burger Bistro",
      "info": "Rose garden",
      "price": "\$40",
    },
    {
      "rasm": AppImages.burgerJpg,
      "title": "Burger Bistro",
      "info": "Rose garden",
      "price": "\$40",
    },
    {
      "rasm": AppImages.burgerJpg,
      "title": "Burger Bistro",
      "info": "Rose garden",
      "price": "\$40",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SvgPicture.asset(AppImages.appBarBackBtn),
        titleSpacing: 10.w,
        title: Container(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.r),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Burger",
                style: TextStyle(
                  color: const Color(0xff181C2E),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                width: 8.w,
              ),
              SvgPicture.asset(AppImages.poligonBtn),
            ],
          ),
        ),
        actions: [
          SvgPicture.asset(AppImages.searchSvg),
          SvgPicture.asset(AppImages.filterSvg),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Popular Burgers",
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 24.h,
            ),
            SizedBox(
              height: 600.h,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 10,
                  childAspectRatio: 0.8,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return CustomCard(
                    cardInfo: malumot[index],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final Map<String, dynamic> cardInfo;

  const CustomCard({super.key, required this.cardInfo});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
      color: Colors.amber,
      elevation: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Image.asset(
              cardInfo["rasm"],
              //"assets/images/food.png",
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            cardInfo["title"],
            style: TextStyle(color: Color(0xFF31343D), fontSize: 15.sp),
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            cardInfo["info"],
            style: TextStyle(color: Color(0xFF646982), fontSize: 13.sp),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                cardInfo["price"],
                style: TextStyle(color: Color(0xFF31343D), fontSize: 16.sp),
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF58D1D)),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
