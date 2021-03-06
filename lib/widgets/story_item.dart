import 'package:clone_instagram/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoryItem extends StatelessWidget {
  final String? img;
  final String? name;
  const StoryItem({
    Key? key, this.img, this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, bottom: 10, top: 8),
      child: Column(
        children: <Widget>[
          Container(
            width: 68,
            height: 68,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: circleProfileImgBorderColor)
            ),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: context.theme.backgroundColor,
                        width: 2
                    ),
                    shape: BoxShape.circle,
                    image: DecorationImage(image:
                    NetworkImage(img!,),fit: BoxFit.cover)
                ),
              ),
            ),
          ),
          SizedBox(height: 8,),
          SizedBox(
            width: 70,
            child:
            Text(
              name!,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle( fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}