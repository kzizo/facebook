import 'package:flutter/material.dart';

import '../../core/app_assets.dart';
import '../../core/app_colors.dart';

class PostCard extends StatefulWidget {
  const PostCard({super.key});

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16, right: 5),
              child: Image.asset(AppAssets.routeProfileImg, width: 53, height: 53,),
            ),

            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text("Route", style: TextStyle(
                    color: AppColors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),),
                ),
                Row(
                  children: [
                    Text("8h", style: TextStyle(
                        color: AppColors.gray,
                        fontSize: 12,
                        fontWeight: FontWeight.w500
                    ),),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Image.asset(AppAssets.publicIcon),
                    ),
                  ],
                )
              ],
            ),

            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(Icons.more_horiz, color: AppColors.gray),
            ),
          ],
        ),

        Image.asset(AppAssets.routePostImg, width: 390, height: 270, fit: BoxFit.cover),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            spacing: 8,
            children: [
              Image.asset(AppAssets.likeIcon, width: 23, height: 23,),
              Image.asset(AppAssets.commentIcon, width: 23, height: 23,),
              Image.asset(AppAssets.shareIcon, width: 23, height: 23,),

              Spacer(),
              Image.asset(AppAssets.saveIcon, width: 23, height: 23,),
            ],
          ),
        ),
      ],
    );
  }
}
