import 'package:carousel_slider/carousel_slider.dart';
import 'package:crypto_template/Screen/UI_Screen/Hotel_Apps/utils/static_data.dart';
import 'package:crypto_template/Screen/UI_Screen/Hotel_Apps/widgets/house_card.dart';
import 'package:flutter/material.dart';


class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> hotel = [
      "https://images.pexels.com/photos/2417862/pexels-photo-2417862.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      "https://images.pexels.com/photos/2506988/pexels-photo-2506988.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      "https://images.pexels.com/photos/3225531/pexels-photo-3225531.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      //    bottomNavigationBar: AppBottomNavigation(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15.0,
              ),
              SafeArea(child: SizedBox()),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text(
                        "Trevatel",
                        style: TextStyle(
                          fontFamily: "Sofia",
                          fontSize: 30.0,
                          height: 1.5,
                          color: Color.fromRGBO(33, 45, 82, 1),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 22.0,
                      backgroundImage: AssetImage(
                          "lib/Screen/FullApps/Cafeku/assets/images/profile.jpg"),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                child: Container(
                  height: 43.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(9.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12.withOpacity(0.1),
                        spreadRadius: 1.0,
                        blurRadius: 3.0,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.search,
                          color: Color(0xFF76C893),
                          size: 25.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text("Find hotel do you want",
                              style: TextStyle(
                                  color: Colors.black26,
                                  fontFamily: "Sofia",
                                  fontWeight: FontWeight.w300,
                                  fontSize: 15.0)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: CarouselSlider(
                  options: CarouselOptions(
                    aspectRatio: 5 / 10,
                    autoPlay: true,
                    viewportFraction: 1.0,
                    height: 220.0,
                  ),
                  items: [0, 1, 2].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          height: 50.0,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12.withOpacity(0.1),
                                    blurRadius: 10.0,
                                    spreadRadius: 3.0)
                              ],
                              image: DecorationImage(
                                  image: NetworkImage(hotel[i]),
                                  fit: BoxFit.cover)),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 24.0,
                ),
                child: Text(
                  "Recent Searches",
                  style: TextStyle(
                      fontSize: 15.5,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Sofia'),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 300.0,
                // Lets create a model to structure property data
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    // Lets create a property card widget
                    return HouseCard(
                      house: StaticData.properties[index],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 10.0,
                    );
                  },
                  // Make the length our static data length
                  itemCount: StaticData.properties.length,
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 24.0,
                ),
                child: Text(
                  "Recomended From Trevatel",
                  style: TextStyle(
                      fontSize: 15.5,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Sofia'),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 300.0,
                // Lets create a model to structure property data
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    // Lets create a property card widget
                    return HouseCard(
                      house: StaticData.properties[index],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 10.0,
                    );
                  },
                  // Make the length our static data length
                  itemCount: StaticData.properties.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
