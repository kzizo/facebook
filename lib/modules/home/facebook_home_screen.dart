import 'package:facebook/core/app_assets.dart';
import 'package:facebook/core/app_colors.dart';
import 'package:facebook/modules/home/post_card.dart';
import 'package:flutter/material.dart';

class FacebookHomeScreen extends StatefulWidget {
  static const String routeName = '/facebook_home_screen';
  const FacebookHomeScreen({super.key});

  @override
  State<FacebookHomeScreen> createState() {
    return _FacebookHomeScreenState();
  }
}

class _FacebookHomeScreenState extends State<FacebookHomeScreen> {
  String _message = "";

  final List<String> _storyImages = [
    AppAssets.story1Img,
    AppAssets.story2Img,
    AppAssets.story2Img,
  ];

  final List<PostCard> _posts = [
    PostCard(),
    PostCard(),
    PostCard(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.white,
          surfaceTintColor: Colors.transparent,
          title: Text("Facebook", style: TextStyle(
              color: AppColors.blue,
              fontSize: 38,
              fontWeight: FontWeight.w800
          ),),

          actions: [
            if(_message.isNotEmpty) Text(_message),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                spacing: 10,
                children: [
                  GestureDetector(
                    onTap: () {
                      _message = "Add Button Clicked";
                      setState(() {});
                    },
                    child: Image.asset(AppAssets.plusIcon),
                  ),

                  GestureDetector(
                    onTap: () {
                      _message = "Search Button Clicked";
                      setState(() {});
                    },
                    child: Image.asset(AppAssets.searchIcon),
                  ),

                  GestureDetector(
                    onTap: () {
                      _message = "Messenger Button Clicked";
                      setState(() {});
                    },
                    child: Image.asset(AppAssets.messengerIcon),
                  ),
                ],
              ),
            ),

          ],

          bottom: TabBar(
            unselectedLabelColor: AppColors.gray,
            indicatorColor: AppColors.blue,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(icon: Image.asset(AppAssets.homeIcon, width: 28, height: 28,)),
              Tab(icon: Image.asset(AppAssets.videoIcon, width: 28, height: 28,)),
              Tab(icon: Image.asset(AppAssets.storeIcon, width: 28, height: 28,)),
              Tab(icon: Image.asset(AppAssets.profileIcon, width: 28, height: 28,)),
              Tab(icon: Image.asset(AppAssets.notificationIcon, width: 28, height: 28,)),
              Tab(icon: Image.asset(AppAssets.accountImg, width: 30, height: 30,)),
            ],
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 18),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "What's on your mind?",
                      hintStyle: TextStyle(
                        color: AppColors.gray,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),

                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(right: 10, bottom: 10),
                        child: Image.asset(AppAssets.accountImg, width: 43, height: 43,),
                      ),


                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(left: 10, bottom: 10),
                        child: Image.asset(AppAssets.addImageIcon, width: 28, height: 28,),
                      ),

                      //To Make The suffix icon accepts the width & height
                      suffixIconConstraints: BoxConstraints(),
                    ),
                  ),
                ),
                Divider(color: AppColors.gray, thickness: 2,),

                SizedBox(
                  height: 180,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      itemBuilder: (context, index) {
                        if(index == 0) {
                          return Column(
                            children: [
                              Stack(
                                //To make the add icon get inside the image
                                clipBehavior: Clip.none,
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Image.asset(AppAssets.accountRectangleImg, width: 112 ,),

                                  Positioned(
                                      bottom: -14,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: AppColors.white,
                                            shape: BoxShape.circle
                                        ),
                                        child: Image.asset(AppAssets.plusIcon,  color: AppColors.blue),
                                      )
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),

                              Text("Create a\nstory", style: TextStyle(
                                color: AppColors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ), textAlign: TextAlign.center,)
                            ],
                          );
                        }

                        return Image.asset(_storyImages[index - 1]);
                      },
                      separatorBuilder: (context, index) => const SizedBox(width: 10),
                      itemCount: _storyImages.length + 1
                  ),
                ),
                Divider(color: AppColors.gray, thickness: 2,),

                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,

                  itemBuilder: (context, index) {
                    return _posts[index];
                  },
                  separatorBuilder: (context, index) => Divider(color: AppColors.gray, thickness: 2,),
                  itemCount: _posts.length,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
