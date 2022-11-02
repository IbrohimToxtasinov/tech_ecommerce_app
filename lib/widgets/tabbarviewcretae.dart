import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tech_ecommerce_app/utils/colors.dart';
import 'package:tech_ecommerce_app/utils/images.dart';

class TabbarCreate extends StatelessWidget {
  final Color color;
  const TabbarCreate({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        child: ListView.builder(
          scrollDirection: Axis.horizontal, 
          physics: const BouncingScrollPhysics(), 
          itemCount: 5, 
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 100, right: 20, left: 20),
                  width: 220,
                  height: 270,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 150,
                        height: 95,
                        child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            top: -70,
                            left: 5,
                            right: 5,
                            child: 
                            CircleAvatar(
                              backgroundColor: Colors.red.withOpacity(0.7),
                              backgroundImage: const AssetImage(MyImages.imagesSmartWatch4),
                              minRadius: 100,
                            ),
                          ),
                        ],
                      ),
                      ),
                      const SizedBox(height: 10,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                        
                        ],
                      ),
                      const SizedBox(height: 15,),
                    ],
                  ),
                ),
              ],
            );
          }
        ),
      ),
    );
  }
}


/*
Container(
              width: 220,
              height: 270,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red,
*/ 