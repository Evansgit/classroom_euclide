import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
// import 'package:crypto_template/Screen/Integration/helper/models/StripePayModel.dart';
//import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:nb_utils/nb_utils.dart';


import 'package:http/http.dart' as http;
// import 'package:flutter_stripe/flutter_stripe.dart';
import '../helper/Component/CheckOutComponent.dart';
import '../helper/Constant.dart';

class StripePaymentScreen extends StatefulWidget {
  @override
  StripePaymentScreenState createState() => StripePaymentScreenState();
}

class StripePaymentScreenState extends State<StripePaymentScreen> {
  @override
  void initState() {
    super.initState();

    afterBuildCreated(() {
      setStatusBarColor(Colors.transparent);
    });
  }

  Future<void> init() async {
    //
  }

  void stripePay() async {
    Map<String, String> headers = {
      HttpHeaders.authorizationHeader: 'Bearer $stripePaymentKey',
      HttpHeaders.contentTypeHeader: 'application/x-www-form-urlencoded',
    };

    var request = http.Request('POST', Uri.parse(stripeURL));

    request.bodyFields = {
      'amount': '${(5 * 100).toInt()}',
      'currency': 'INR'.toLowerCase(),
    };

    request.headers.addAll(headers);

    await request.send().then(
      (value) {
        http.Response.fromStream(value).then((response) async {
          if (response.statusCode == 200) {
            // var res = StripePayModel.fromJson(await handleResponse(response));

            // await Stripe.instance.initPaymentSheet(
            //   paymentSheetParameters: SetupPaymentSheetParameters(
            //     paymentIntentClientSecret: res.client_secret!,
            //     merchantDisplayName: 'Prokit Flutter',
            //     customerId: '1',
            //     customerEphemeralKeySecret: res.client_secret!,
            //     setupIntentClientSecret: res.client_secret!,
            //   ),
            // );

            // await Stripe.instance
            //     .presentPaymentSheet(
            //         parameters: PresentPaymentSheetParameters(
            //             clientSecret: res.client_secret!, confirmPayment: true))
            //     .then(
            //       (value) async {},
            //     )
            //     .catchError((e) {
            //   print("presentPaymentSheet ${e.toString()}");
            // });
          }
        }).catchError((e) {
          print(e.toString());
        });
      },
    ).catchError(
      (e) {
        print(e.toString());
      },
    );
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.cardColor,
        appBar: AppBar(
            title: Text(
              "Stripe Payment",
            ),
            centerTitle: true,
            elevation: 0.0),
        body: SingleChildScrollView(
          child: CheckOutComponent(
            currency: 'Rp',
            cardNetwork: 'Visa',
            cartNumber: '4242 2321 5323 7865',
            cardCVV: 'Any 3 digits',
            expiryDate: '	Any future date',
          ),
        ),
        bottomNavigationBar: AppButton(
          width: context.width(),
          text: 'Pay with Stripe',
          textColor: Colors.white,
          textStyle: boldTextStyle(color: white),
          color: Colors.blue,
          onTap: () {
            stripePay();
          },
        ).paddingAll(16));
  }

  Future handleResponse(Response response, [bool? avoidTokenError]) async {
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      try {
        var body = jsonDecode(response.body);
        throw parseHtmlString(body['message']);
      } on Exception {}
    }
  }
}

String parseHtmlString(String? htmlString) {
  return parse(parse(htmlString).body!.text).documentElement!.text;
}

// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:flutter_stripe/flutter_stripe.dart';

// class StripePaymentScreen extends StatefulWidget {
//   const StripePaymentScreen({Key? key}) : super(key: key);

//   @override
//   _StripePaymentScreenState createState() => _StripePaymentScreenState();
// }

// class _StripePaymentScreenState extends State<StripePaymentScreen> {
//   Map<String, dynamic>? paymentIntent;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Stripe Payment'),
//       ),
//       body: Center(
//         child: TextButton(
//           child: const Text('Make Payment'),
//           onPressed: () async {
//             await makePayment();
//           },
//         ),
//       ),
//     );
//   }

//   Future<void> makePayment() async {
//     try {
//       paymentIntent = await createPaymentIntent('10', 'USD');
//       //Payment Sheet
//       await Stripe.instance
//           .initPaymentSheet(
//               paymentSheetParameters: SetupPaymentSheetParameters(
//                   paymentIntentClientSecret: paymentIntent!['client_secret'],
//                   // applePay: const PaymentSheetApplePay(
//                   //   merchantCountryCode: '+92',
//                   // ),
//                   // googlePay: const PaymentSheetGooglePay(
//                   //     testEnv: true,
//                   //     currencyCode: "US",
//                   //     merchantCountryCode: "+92"),
//                   style: ThemeMode.dark,
//                   merchantDisplayName: 'Adnan'))
//           .then((value) {});

//       ///now finally display payment sheeet
//       displayPaymentSheet();
//     } catch (e, s) {
//       print('exception  :$e$s');
//     }
//   }

//   displayPaymentSheet() async {
//     try {
//       await Stripe.instance.presentPaymentSheet().then((value) {
//         showDialog(
//             context: context,
//             builder: (_) => AlertDialog(
//                   content: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Row(
//                         children: const [
//                           Icon(
//                             Icons.check_circle,
//                             color: Colors.green,
//                           ),
//                           Text("Payment Successfull"),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ));
//         // ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("paid successfully")));

//         paymentIntent = null;
//       }).onError((error, stackTrace) {
//         print('Error is:--->$error $stackTrace');
//       });
//     } on StripeException catch (e) {
//       print('Error is:---> $e');
//       showDialog(
//           context: context,
//           builder: (_) => const AlertDialog(
//                 content: Text("Cancelled "),
//               ));
//     } catch (e) {
//       print('$e');
//     }
//   }

//   //  Future<Map<String, dynamic>>
//   createPaymentIntent(String amount, String currency) async {
//     try {
//       Map<String, dynamic> body = {
//         'amount': calculateAmount(amount),
//         'currency': currency,
//         'payment_method_types[]': 'card'
//       };

//       var response = await http.post(
//         Uri.parse('https://api.stripe.com/v1/payment_intents'),
//         headers: {
//           'Authorization': 'Bearer $SECRET_KEY',
//           'Content-Type': 'application/x-www-form-urlencoded'
//         },
//         body: body,
//       );
//       // ignore: avoid_print
//       print('Payment Intent Body->>> ${response.body.toString()}');
//       return jsonDecode(response.body);
//     } catch (err) {
//       // ignore: avoid_print
//       print('err charging user: ${err.toString()}');
//     }
//   }

//   calculateAmount(String amount) {
//     final calculatedAmout = (int.parse(amount)) * 100;
//     return calculatedAmout.toString();
//   }
// }

// const SECRET_KEY =
//     "sk_test_51LodMWAmJNPIYsvK9fwNuT1Rj36Mhftx23RqlsbnIufNKLHlCQmNBvA54P201bm6UKiERCcRerdDnfiaYrPJdkrh00UhFq7MBo";
