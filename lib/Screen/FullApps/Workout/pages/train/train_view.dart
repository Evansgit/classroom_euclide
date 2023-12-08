import 'package:crypto_template/Screen/FullApps/Workout/core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TrainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThirdColor,
      body: Stack(
        children: [
          buildBody(),
          MenuBottomNavBarWidget(),
        ],
      ),
    );
  }

  Widget buildBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: Get.height * 0.55,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1572459815549-873917ec8c0a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzh8fGd5bSUyMGJsYWNrfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      kThirdColor,
                      Colors.transparent,
                    ],
                  ),
                ),
                height: Get.height * 0.55,
                width: Get.width,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(height: 30),
                      buildAppBar(),
                      SizedBox(height: 100),
                      buildPlayButton(),
                      Spacer(),
                      buildSearchWorkout(),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          TabWidget(
            onSelected: (index) => print("index = $index"),
            items: [
              "Popular",
              "Hard workout",
              "Full body",
              "Crossfit",
            ],
          ),
          SizedBox(height: 20),
          buildPopulerWorkout(),
          SizedBox(height: 90)
        ],
      ),
    );
  }

  Widget buildAppBar() {
    return Row(
      children: [
        RichText(
          text: TextSpan(
            text: 'Hey, ',
            style: TextStyle(
              fontSize: 25,
              color: kFirstColor,
              fontWeight: FontWeight.w600,
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'Ramdan',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
        Spacer(),
        Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            border: Border.all(
              color: kFirstColor,
              width: 3.0,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(50.0),
            ),
            image: DecorationImage(
              image: NetworkImage(
                "https://images.unsplash.com/photo-1491756975177-a13d74ed1e2f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGd5bSUyMGJsYWNrfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildPlayButton() {
    return InkWell(
      onTap: () {},
      child: Center(
        child: Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: kFirstColor.withOpacity(0.2),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: kFirstColor,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 40,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSearchWorkout() {
    return Column(
      children: [
        Row(
          children: [
            RichText(
              text: TextSpan(
                text: 'Find ',
                style: TextStyle(
                  fontSize: 25,
                  color: kFirstColor,
                  fontWeight: FontWeight.bold,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'your Workout',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Spacer(),
            InkWell(
              onTap: () {},
              child: Icon(
                Icons.filter_list,
                color: Colors.white,
                size: 32,
              ),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 2),
          margin: EdgeInsets.only(top: 20),
          height: 50,
          decoration: BoxDecoration(
            color: kSecondColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: "SEARCH WORKOUT",
              focusedBorder: InputBorder.none,
              suffixIcon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              hintStyle: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildPopulerWorkout() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(width: 10),
            Text(
              "Popular Workout",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(height: 15),
        GetBuilder<TrainController>(
          init: TrainController(),
          initState: (_) {},
          builder: (controller) {
            return SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: controller.exercises
                    .map(
                      (exercise) => CardWidget(
                        onTap: () => Get.toNamed(
                          Routes.TRAIN_DETAILS,
                          arguments: exercise,
                        ),
                        title: exercise.title,
                        image: exercise.image,
                      ),
                    )
                    .toList(),
              ),
            );
          },
        ),
      ],
    );
  }
}

class MenuBottomNavBarWidget extends StatelessWidget {
  const MenuBottomNavBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
          height: 75,
          width: Get.size.width,
          color: Color(0xFF242538),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Workout",
                  style: TextStyle(
                    color: kFirstColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                CustomIcon(color: Color(0xFF707070)),
                Text(
                  "Profile",
                  style: TextStyle(
                    color: Color(0xFF707070),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
