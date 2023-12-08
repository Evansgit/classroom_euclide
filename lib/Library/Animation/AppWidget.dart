
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:html/parser.dart';
import 'package:nb_utils/nb_utils.dart';

Widget text(
  String? text, {
  var fontSize = 12,
  Color? textColor,
  var fontFamily,
  var isCentered = false,
  var maxLine = 1,
  var latterSpacing = 0.5,
  bool textAllCaps = false,
  var isLongText = false,
  bool lineThrough = false,
}) {
  return Text(
    textAllCaps ? text!.toUpperCase() : text!,
    textAlign: isCentered ? TextAlign.center : TextAlign.start,
    maxLines: isLongText ? null : maxLine,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      fontFamily: fontFamily ?? null,
      fontSize: fontSize,
      color: textColor ?? Colors.white12,
      height: 1.5,
      letterSpacing: latterSpacing,
      decoration:
          lineThrough ? TextDecoration.lineThrough : TextDecoration.none,
    ),
  );
}

BoxDecoration boxDecoration(
    {double radius = 2,
    Color color = Colors.transparent,
    Color? bgColor,
    var showShadow = false}) {
  return BoxDecoration(
    color: bgColor ?? Colors.white10,
    boxShadow: showShadow
        ? defaultBoxShadow(shadowColor: shadowColorGlobal)
        : [BoxShadow(color: Colors.transparent)],
    border: Border.all(color: color),
    borderRadius: BorderRadius.all(Radius.circular(radius)),
  );
}

void changeStatusColor(Color color) async {
  setStatusBarColor(color);
}

Widget commonCacheImageWidget(String? url, double height,
    {double? width, BoxFit? fit}) {
  if (url.validate().startsWith('http')) {
    if (isMobile) {
      return CachedNetworkImage(
        placeholder:
            placeholderWidgetFn() as Widget Function(BuildContext, String)?,
        imageUrl: '$url',
        height: height,
        width: width,
        fit: fit ?? BoxFit.cover,
        errorWidget: (_, __, ___) {
          return SizedBox(height: height, width: width);
        },
      );
    } else {
      return Image.network(url!,
          height: height, width: width, fit: fit ?? BoxFit.cover);
    }
  } else {
    return Image.asset(url!,
        height: height, width: width, fit: fit ?? BoxFit.cover);
  }
}

Widget settingItem(context, String text,
    {Function? onTap,
    Widget? detail,
    Widget? leading,
    Color? textColor,
    int? textSize,
    double? padding}) {
  return InkWell(
    onTap: onTap as void Function()?,
    child: Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: padding ?? 8, bottom: padding ?? 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                  child: leading ?? SizedBox(),
                  width: 30,
                  alignment: Alignment.center),
              leading != null ? 10.width : SizedBox(),
              Text(text,
                      style: primaryTextStyle(
                          size: textSize ?? 18,
                          color: textColor ?? Colors.white10))
                  .expand(),
            ],
          ).expand(),
          detail ??
              Icon(Icons.arrow_forward_ios, size: 16, color: Colors.white12),
        ],
      ).paddingOnly(left: 16, right: 16, top: 8, bottom: 8),
    ),
  );
}

Widget appBarTitleWidget(context, String title,
    {Color? color, Color? textColor}) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 60,
    color: color ?? Colors.white12,
    child: Row(
      children: <Widget>[
        Text(
          title,
          style: boldTextStyle(color: color ?? Colors.white12, size: 20),
          maxLines: 1,
        ).expand(),
      ],
    ),
  );
}

AppBar appBar(BuildContext context, String title,
    {List<Widget>? actions,
    bool showBack = true,
    Color? color,
    Color? iconColor,
    Color? textColor}) {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: color ?? Colors.white,
    leading: showBack
        ? IconButton(
            onPressed: () {
              finish(context);
            },
            icon: Icon(Icons.arrow_back, color: Colors.black),
          )
        : null,
    title: appBarTitleWidget(context, title, textColor: textColor),
    actions: actions,
    elevation: 0.5,
  );
}

class CustomTheme extends StatelessWidget {
  final Widget? child;

  CustomTheme({required this.child});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.light(),
      child: child!,
    );
  }
}

Widget? Function(BuildContext, String) placeholderWidgetFn() =>
    (_, s) => placeholderWidget();

Widget placeholderWidget() =>
    Image.asset('assets/images/logoApps.png', fit: BoxFit.cover);

/*class ContainerX extends StatelessWidget {
  static String tag = '/ContainerX';
  final BuildContext context;
  final double maxWidth;
  final Widget child;

  ContainerX({@required this.context, this.maxWidth, @required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width(),
      height: context.height(),
      child: ConstrainedBox(
        constraints: dynamicBoxConstraints(maxWidth: maxWidth),
        child: child,
      ),
      alignment: Alignment.topCenter,
    );
  }
}*/

String parseHtmlString(String? htmlString) {
  return parse(parse(htmlString).body!.text).documentElement!.text;
}

class ContainerX extends StatelessWidget {
  final Widget? mobile;
  final Widget? web;
  final bool? useFullWidth;

  ContainerX({this.mobile, this.web, this.useFullWidth});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        if (constraints.device == DeviceSize.mobile) {
          return mobile ?? SizedBox();
        } else {
          return Container(
            alignment: Alignment.topCenter,
            child: Container(
              child: web ?? SizedBox(),
            ),
          );
        }
      },
    );
  }
}
