//view model for page indicator

import 'package:crypto_template/Screen/Template_Material/screen/Slider/Slider/Concept1Slider/SliderWidget/lib/Constants/constants.dart';
import 'package:crypto_template/Screen/Template_Material/screen/Slider/Slider/Concept1Slider/SliderWidget/lib/Models/page_view_model.dart';

class PagerIndicatorViewModel {
  final List<PageViewModel> pages;
  final int activeIndex;
  final SlideDirection? slideDirection;
  final double? slidePercent;

  PagerIndicatorViewModel(
    this.pages,
    this.activeIndex,
    this.slideDirection,
    this.slidePercent,
  );
}
