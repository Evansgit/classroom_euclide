/*generate dummy data*/
import 'package:crypto_template/Screen/UI_Screen/Plane_Apps/Screen/Opening/LagePage.dart';
import 'dart:math';
import 'package:flutter/material.dart';

class Dummy {
  static Random random = new Random();

  //  wizard data --------------------------------------------------------------

  static const List<String> wizard_title = [
    "Let's get you setup",
    "Time to launch your digital identity.",
    "Take control of your credidentials",
  ];
  static const List<String> wizard_brief = [
    "Choose your destination, plan Your trip. Pick the best place for Your holiday",
    "Select the day, pick Your ticket. We give you the best prices. We guarantee!",
    "Safe and Comfort flight is our priority. Professional crew and services.",
    "Enjoy your holiday, Don't forget to feel the moment and take a photo!",
  ];
  static const List<String> wizard_image = [
    "lib/Screen/UI_Screen/Plane_Apps/Assets/welcome.json",
    "lib/Screen/UI_Screen/Plane_Apps/Assets/rocket.json",
    "lib/Screen/UI_Screen/Plane_Apps/Assets/third.json",
  ];
  static const List<String> wizard_background = [
    "image_15.jpg",
    "image_10.jpg",
    "image_3.jpg",
    "image_12.jpg"
  ];
  static const List<Color> wizard_color = [
    Colors.red,
    Colors.blueGrey,
    Colors.purple,
    Colors.orange,
  ];

  // news data -----------------------------------------------------------------

  static const List<String> all_images = [
    "image_1.jpg",
    "image_2.jpg",
    "image_3.jpg",
    "image_4.jpg",
    "image_5.jpg",
    "image_6.jpg",
    "image_7.jpg",
    "image_8.jpg",
    "image_9.jpg",
    "image_10.jpg",
    "image_11.jpg",
    "image_12.jpg",
    "image_13.jpg",
    "image_14.jpg",
    "image_15.jpg",
    "image_16.jpg",
    "image_17.jpg",
    "image_18.jpg",
    "image_19.jpg",
    "image_20.jpg",
    "image_21.jpg",
    "image_22.jpg",
    "image_23.jpg",
    "image_24.jpg",
    "image_25.jpg",
    "image_26.jpg",
    "image_27.jpg",
    "image_28.jpg",
    "image_29.jpg",
    "image_30.jpg",
  ];

  static const List<String> strings_medium = [
    "Proin commodo porttitor felis. Integer auctor nulla faucibus tempus. In at viverra tellus.",
    "Cras at lobortis velit. In eu turpis euismod dolor feugiat placerat gravida a ante. Duis consequat massa.",
    "Praesent eleifend ipsum sapien, vel molestie nibh blandit et. Duis accumsan dignissim velit.",
    "Aliquam in risus nibh. Pellentesque lacinia nisi ac est porta, nec eros luctus. Phasellus dictum ornare.",
    "In rutrum turpis felis. Ut sodales libero non nibh convallis, ac vehicula tellus laoreet.",
    "Etiam faucibus ante tortor, nec eros lacinia ut. Proin facilisis cursus enim, at congue lorem iaculis ut.",
    "Duis sodales ligula non scelerisque molestie. In hac habitasse platea dictumst. Donec tempor nibh.",
    "Quisque ac ante et purus auctor iaculis at sed erat. Duis vestibulum elit et mollis.",
    "Maecenas quis posuere leo. Duis ut tortor vitae nisi commodo dictum. Quisque ac ante et purus auctor.",
    "Proin commodo porttitor felis. Integer auctor nulla tincidunt faucibus tempus. In at viverra tellus.",
  ];

  static const List<String> news_category = [
    "Politics",
    "Entertainment",
    "Science",
    "Sport",
    "Business",
    "Technology",
  ];
  static const List<String> full_date = [
    "Sun, 05 Dec 15, 11:30 AM",
    "Mon, 22 Apr 13, 06:12 PM",
    "Wed, 14 Sep 15, 09:21 PM",
    "Fri, 11 Feb 15, 11:42 PM",
    "Thu, 29 Aug 14, 02:30 AM",
    "Sat, 10 Nov 15, 07:05 PM",
    "Tue, 23 Jun 15, 09:24 AM",
    "Wed, 20 Jul 15, 08:35 AM",
    "Sun, 09 Mar 15, 12:49 PM",
    "Mon, 01 Jan 16, 10:50 PM",
  ];

  // shop product data ---------------------------------------------------------

  static const List<String> shop_product_image = [
    "image_shop_1.jpg",
    "image_shop_2.jpg",
    "image_shop_3.jpg",
    "image_shop_4.jpg",
    "image_shop_5.jpg",
    "image_shop_6.jpg",
    "image_shop_7.jpg",
    "image_shop_8.jpg",
  ];
  static const List<String> shop_product_title = [
    "Fashion B07 Keara 933",
    "Coup Hoodie Jacket",
    "Gala Suede Jacket Flower",
    "Qonnoq Checked Blouse",
    "Java Seven Belladji 674",
    "Kanvas Sneaker Shoes",
    "Clarks Idamarie Faye Lea",
    "Piero Rush Women",
  ];
  static const List<String> shop_product_price = [
    "\$ 48.90",
    "\$ 89.00",
    "\$ 66.80",
    "\$ 34.50",
    "\$ 44.90",
    "\$ 59.00",
    "\$ 78.20",
    "\$ 96.00",
  ];

  // music data ----------------------------------------------------------------

  static const List<String> album_cover = [
    "image_20.jpg",
    "image_2.jpg",
    "image_3.jpg",
    "image_4.jpg",
    "image_21.jpg",
    "image_16.jpg",
    "image_7.jpg",
    "image_17.jpg",
    "image_18.jpg",
    "image_10.jpg",
    "image_11.jpg",
    "image_12.jpg",
    "image_19.jpg",
    "image_14.jpg",
    "image_15.jpg",
  ];

  static const List<String> song_name = [
    "All The Arguments",
    "Proud of You",
    "Morning Reasons",
    "Drowsy Smart Mouth",
    "Being Anything Else",
    "Fist Full Of Mysteries",
    "5 Dollar Town",
    "Eternal Soul",
    "Living is Going Down",
    "Deadly Joy",
    "Screaming Skill",
    "Escape Of The Justice",
    "Silent Fight",
    "Distractions Have No Answers",
    "Lead Sm",
  ];

  static const List<String> album_name = [
    "The Mother",
    "Not Advance",
    "Coming Back",
    "Suspicions",
    "Desert Of Lost",
    "Glances",
    "Some Doubts",
    "Morning",
    "Love More Deeply",
    "Quite",
    "Backseat",
    "Peace",
    "Ambitions",
    "Knocking At",
    "Synchronisation",
  ];

  static List<Wizard> getWizard() {
    List<Wizard> items = [];
    for (int i = 0; i < wizard_title.length; i++) {
      Wizard obj = new Wizard();
      obj.image = wizard_image[i];
      obj.background = wizard_background[i];
      obj.title = wizard_title[i];
      obj.brief = wizard_brief[i];
      obj.color = wizard_color[i];
      items.add(obj);
    }
    return items;
  }
}
