import 'package:flutter/material.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';
import 'package:kevell_care/features/widgets/buttons/text_button_widget.dart';

import 'package:razorpay_flutter/razorpay_flutter.dart';

const String keyId = "rzp_test_A0Hl3KFO72CdrB";
const String keySecret = "aYS92pb5d8G3QaDSTeAhSPPB";

class ChckoutPage extends StatefulWidget {
  const ChckoutPage({
    super.key,
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
      'amount': 1000,
      // 'amount': 100,
      'name': "mubashir",
      'appoinment_id': "10101",
      'retry': {'enabled': true, 'max_count': 1},
      'send_sms_hash': true,
      'prefill': {
        'contact': "mubashir",
        'email': "Mubashir@gmail.com",
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
    /*
    * Payment Success Response contains three values:
    * 1. Order ID
    * 2. Payment ID
    * 3. Signature
    * */
    // context.read<EntrollCourseBloc>().add(
    //       EntrollCourseEvent.entrollCourse(
    //         purchasedCourse: PurchasedCourse(
    //           amount: widget.courseDetailse.amount,
    //           courseId: widget.courseDetailse.id,
    //           name: widget.courseDetailse.name,
    //           orderId: response.orderId,
    //           paymentId: response.paymentId,
    //           paymentMethod: 'Online',
    //           signature: response.signature,
    //           timestamp: DateTime.now(),
    //         ),
    //       ),
    //     );

    showModalBottomSheet<void>(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      barrierColor: Colors.transparent,
      isDismissible: true,
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text(
          response.orderId ?? '',
        ),
        content: Text(response.toString()),
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
            "Summary",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        body: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Original Prize:",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(fontWeight: FontWeight.normal)),
                    Text("₹100",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(fontWeight: FontWeight.normal)),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Discount:",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(fontWeight: FontWeight.normal)),
                    Text("₹0",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(fontWeight: FontWeight.normal)),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Total:",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(fontWeight: FontWeight.bold)),
                    Text("₹100",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                        child: TextButtonWidget(
                      isLoading: isLoading,
                      name: "Pay Now",
                      onPressed: () {},
                    )),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
