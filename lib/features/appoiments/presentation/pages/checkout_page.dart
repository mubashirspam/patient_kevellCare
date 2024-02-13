import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kevell_care/configure/assets_manage/icons.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';

import 'package:kevell_care/features/widgets/buttons/text_button_widget.dart';
import 'package:kevell_care/pages/initialize/initialize.dart';

import 'package:razorpay_flutter/razorpay_flutter.dart';

import '../../../../configure/value/constant.dart';
import '../../../../core/helper/date.dart';
import '../../data/models/create_appoinment_resonse.dart';

const String keyId = "rzp_test_A0Hl3KFO72CdrB";
const String keySecret = "aYS92pb5d8G3QaDSTeAhSPPB";

class ChckoutPage extends StatefulWidget {
  final CheckoutDetails checkoutDetails;
  final String doctorName;
  final DateTime date;
  final String time;
  const ChckoutPage({
    super.key,
    required this.checkoutDetails,
    required this.date,
    required this.doctorName,
    required this.time,
  });

  @override
  State<ChckoutPage> createState() => _ChckoutPageState();
}

class _ChckoutPageState extends State<ChckoutPage> {
  bool isLoading = false;

  Map<String, dynamic> options = {};
  @override
  void initState() {
    options = {
      'key': keyId,
      'amount': widget.checkoutDetails.amount! * 100,
      // 'amount': 100,
      'name': "${widget.checkoutDetails.patientId}",
      "order_id": "${widget.checkoutDetails.orderId}",
      'appoinment_id': "${widget.checkoutDetails.appointmentId}",
      'retry': {'enabled': true, 'max_count': 1},
      'send_sms_hash': true,
      'prefill': {
        'contact': "+919562229979",
        'email': "mubashir@gmail.com",
        'id': "101222",
      },
      'external': {
        'wallets': ['paytm']
      }
    };
    super.initState();
  }

  Razorpay razorpay = Razorpay();

  void makePayment() {
    setState(() => isLoading = true);

    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlePaymentErrorResponse);
    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlePaymentSuccessResponse);
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handleExternalWalletSelected);
    razorpay.open(options);
  }

  void handlePaymentErrorResponse(PaymentFailureResponse response) {
    /*
    * PaymentFailureResponse contains three values:
    * 1. Error Code
    * 2. Error Description
    * 3. Metadata
    * */

    showAlertDialog(
      context,
      "Payment Failed",
      "Code: ${response.code}\nDescription: ${response.message}\nMetadata:${response.error.toString()}",
    );
  }

  void handlePaymentSuccessResponse(PaymentSuccessResponse response) {
    showModalBottomSheet<void>(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      barrierColor: Colors.transparent,
      isDismissible: true,
      context: context,
      builder: (BuildContext context) => SuccessDialog(
        message: response.orderId.toString(),
        onpress: () {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => const Initialize(),
              ),
              (route) => false);
        },
      ),
    );
  }

  void handleExternalWalletSelected(ExternalWalletResponse response) {
    showAlertDialog(
        context, "External Wallet Selected", "${response.walletName}");
  }

  void showAlertDialog(BuildContext context, String title, String message) {
    // set up the buttons
    Widget continueButton = ElevatedButton(
      child: const Text("OK"),
      onPressed: () {
        setState(() => isLoading = false);
        Navigator.of(context).pop();
      },
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(title),
      content: Text(message),
      actions: [
        continueButton,
      ],
    );
    // show the dialog
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var theme;
    return Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () => Navigator.pop(context),
            child: Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: context.theme.secondary),
              child: Center(
                child: Icon(
                  Icons.chevron_left,
                  color: context.theme.primary,
                ),
              ),
            ),
          ),
          centerTitle: false,
          title: Text(
            "Checkout",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        body: Center(
          child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20)
                      .copyWith(top: 15),
                  child: Text(
                    "Appoinment Detials",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: context.theme.secondary),
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      SizedBox(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 60,
                              height: 60,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: ColoredBox(
                                  color: Colors.grey.shade100,
                                  child: Image.network(
                                    fit: BoxFit.cover,
                                    imageUrlForDummy,
                                    errorBuilder:
                                        (context, error, stackTrace) =>
                                            const Icon(
                                      Icons.image_not_supported,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 15),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Dr.${widget.doctorName}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: Text(
                                    "Cardiologist",
                                    style:
                                        Theme.of(context).textTheme.titleLarge,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: context.theme.primary),
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.only(top: 15),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              AppIcons.calendar,
                              color: Colors.white,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              dateFormatToDayMonthYear(widget.date),
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(color: Colors.white),
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.timer_rounded,
                              color: Colors.white,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              widget.time,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Payment Detials",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                const SizedBox(height: 20),
                content(
                    "Appointemnt Fees:", "${widget.checkoutDetails.amount}"),
                content("Booking Charge:", "10"),
                content("Discount:", "10"),
                // content("Appointemnt Fees:", "150"),
                const SizedBox(height: 10),
                content("Total:", "${widget.checkoutDetails.amount}"),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                    children: [
                      Expanded(
                          child: TextButtonWidget(
                        isLoading: isLoading,
                        name: "Pay Now",
                        onPressed: () {
                          makePayment();
                        },
                      )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Widget content(String name, amount) => Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: 20).copyWith(bottom: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(name,
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontWeight:
                        name == "Total" ? FontWeight.bold : FontWeight.normal)),
            Text("₹$amount",
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    fontWeight:
                        name == "Total" ? FontWeight.bold : FontWeight.normal)),
          ],
        ),
      );
}

class SuccessDialog extends StatelessWidget {
  final VoidCallback onpress;
  final String message;
  const SuccessDialog({
    super.key,
    required this.onpress,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      backgroundColor: context.theme.backround,
      title: Column(
        children: [
          const Icon(
            size: 75,
            Icons.check,
            color: Colors.green,
          ),
          const SizedBox(height: 20),
          Text(
            'Successfully Booked',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  fontSize: 20,
                ),
          ),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 20),
          Text(
            message,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  height: 1.5,
                ),
          ),
        ],
      ),
      actions: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: context.theme.primary,
                maximumSize: const Size(180, 45),
                minimumSize: const Size(180, 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              onPressed: onpress,
              child: Text(
                'Confirm',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
