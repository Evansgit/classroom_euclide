import 'package:crypto_template/Screen/FullApps/HouseWix/models/city.dart';
import 'package:crypto_template/Screen/FullApps/HouseWix/models/space.dart';
import 'package:crypto_template/Screen/FullApps/HouseWix/models/tips.dart';
import 'package:crypto_template/Screen/FullApps/HouseWix/providers/space_provider.dart';
import 'package:crypto_template/Screen/FullApps/HouseWix/theme.dart';
import 'package:crypto_template/Screen/FullApps/HouseWix/widgets/bottom_navbar_item.dart';
import 'package:crypto_template/Screen/FullApps/HouseWix/widgets/city_card.dart';
import 'package:crypto_template/Screen/FullApps/HouseWix/widgets/space_card.dart';
import 'package:crypto_template/Screen/FullApps/HouseWix/widgets/tips_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var spaceProvider = Provider.of<SpaceProvider>(context);

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            SizedBox(
              height: edge,
            ),
            // NOTE: TITLE/HEADER
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Explore Now',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Mencari kosan yang cozy',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // NOTE: POPULAR CITIES
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Popular Cities',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 24,
                  ),
                  CityCard(
                    City(
                      id: 1,
                      name: 'Jakarta',
                      imageUrl:
                          'https://images2.imgbox.com/7e/c5/0sBuKref_o.png',
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                      id: 2,
                      name: 'Bandung',
                      imageUrl:
                          'https://images2.imgbox.com/6f/38/ac5DNKVZ_o.png',
                      isPopular: true,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                      id: 3,
                      name: 'Surabaya',
                      imageUrl:
                          'https://images2.imgbox.com/8a/68/eeYrCWHW_o.png',
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                      id: 4,
                      name: 'Palembang',
                      imageUrl:
                          'https://images2.imgbox.com/43/0c/4oiF7uXL_o.png',
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                      id: 5,
                      name: 'Aceh',
                      imageUrl:
                          'https://images2.imgbox.com/35/bf/AVmO7XtN_o.png',
                      isPopular: true,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                      id: 6,
                      name: 'Bogor',
                      imageUrl:
                          'https://images2.imgbox.com/02/52/Ur1on3AX_o.png',
                    ),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // NOTE: RECOMMENDED SPACE
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Recommended Space',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
              ),
              child: FutureBuilder(
                future: spaceProvider.getRecommendedSpaces(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<Space> data = snapshot.data as List<Space>;

                    int index = 0;

                    return Column(
                      children: data.map((item) {
                        index++;
                        return Container(
                          margin: EdgeInsets.only(
                            top: index == 1 ? 0 : 30,
                          ),
                          child: SpaceCard(item),
                        );
                      }).toList(),
                    );
                  }

                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),

            SizedBox(
              height: 30,
            ),
            // NOTE: TIPS & GUIDANCE
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Tips & Guidance',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
              ),
              child: Column(
                children: [
                  TipsCard(
                    Tips(
                      id: 1,
                      title: 'City Guidelines',
                      imageUrl:
                          'https://images2.imgbox.com/46/c0/vsHQjMHM_o.png',
                      updatedAt: '20 Apr',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TipsCard(
                    Tips(
                      id: 2,
                      title: 'Jakarta Fairship',
                      imageUrl:
                          'https://images2.imgbox.com/7f/eb/BHR1biwU_o.png',
                      updatedAt: '11 Dec',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100 + edge,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(
          horizontal: edge,
        ),
        decoration: BoxDecoration(
          color: Color(0xffF6F7F8),
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageUrl: 'https://images2.imgbox.com/66/9e/ciumrN2A_o.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'https://images2.imgbox.com/17/eb/DNB43Nmw_o.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'https://images2.imgbox.com/41/2a/dwlb9sg7_o.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'https://images2.imgbox.com/f4/d1/cGqJkWDP_o.png',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
