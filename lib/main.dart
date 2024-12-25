import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project110/colors/colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Categories(),
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Color(0xFF221D22),
        leading: Container(
          padding: EdgeInsets.all(12),
          child: SvgPicture.asset(
            "assets/svg/vector.svg",
            width: 30,
            height: 14,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Categories",
          style: TextStyle(
            color: AppColors.redPinkMain,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Row(
            children: [
              AppBarContainer(svg: "assets/svg/notification.svg"),
              SizedBox(
                width: 5,
              ),
              AppBarContainer(svg: "assets/svg/search.svg"),
            ],
          ), //Containerlar
        ],
      ),
      backgroundColor: Color(0xFF221D20),
      body: ListView(
        padding: EdgeInsets.only(bottom: 100),
        children: [
          Column(
            children: [
              Column(
                children: [
                  TextItem(text: "Seafood"),
                  Padding(
                    padding: const EdgeInsets.only(right: 12, left: 12),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(17),
                      child: Image(
                        image: AssetImage("assets/images/seafood.png"),
                        width: 356,
                        height: 148,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ImageItem(
                          image: "assets/images/lunch.png", text: "Lunch"),
                      ImageItem(
                          image: "assets/images/breakfast.png",
                          text: "Breakfast"),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ImageItem(
                          image: "assets/images/dinner.png", text: "Dinner"),
                      ImageItem(
                          image: "assets/images/vegan.png", text: "Vegan"),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ImageItem(
                          image: "assets/images/dessert.png", text: "Dessert"),
                      ImageItem(
                          image: "assets/images/drinks.png", text: "Drinks"),
                    ],
                  ),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class AppBarContainer extends StatelessWidget {
  const AppBarContainer({super.key, required this.svg});

  final String svg;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28,
      height: 28,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: AppColors.pinkContainer,
      ),
      child: Center(
        child: SvgPicture.asset(svg),
      ),
    );
  }
}

class TextItem extends StatelessWidget {
  const TextItem({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: AppColors.colorWhite,
        fontWeight: FontWeight.w500,
        fontSize: 15,
      ),
    );
  }
}

class ImageItem extends StatelessWidget {
  const ImageItem({super.key, required this.image, required this.text});

  final String image, text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.61),
          child: Image(
            image: AssetImage(image),
            width: 158.54,
            height: 144.53,
          ),
        ),
        TextItem(text: text),
      ],
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: 281,
        height: 56,
        decoration: BoxDecoration(
          color: AppColors.redPinkMain,
          borderRadius: BorderRadius.circular(33),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset("assets/svg/home.svg"),
            SvgPicture.asset("assets/svg/community.svg"),
            SvgPicture.asset("assets/svg/categories.svg"),
            SvgPicture.asset("assets/svg/profile.svg"),
          ],
        ),
      ),
    );
  }
}
