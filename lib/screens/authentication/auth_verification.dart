import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:vtenhappmerchant/widgets/countdown.dart';
import 'package:vtenhappmerchant/widgets/loading.dart';
import 'package:vtenhappmerchant/widgets/main_action_button.dart';

class VerificationCodeScreen extends StatefulWidget {
  VerificationCodeScreen({Key key}) : super(key: key);

  @override
  _VerificationCodeScreenState createState() => _VerificationCodeScreenState();
}

class _VerificationCodeScreenState extends State<VerificationCodeScreen> with TickerProviderStateMixin {
  String pincode;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AnimationController _controller;
  int timeInSecond = 120;
  bool isLoading = false;
  String errorStatus = "";

  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();

  Map<String, dynamic> pincodeStatus = {
    "1": "Pin code not found",
    "2": "Pin code expired",
    "3": "Pin code attempt reach",
    "4": "Pin code mismatch",
  };

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<dynamic> onSubmit(BuildContext context) async {
    if (!_formKey.currentState.validate()) {
      return;
    }
    setState(() {
      isLoading = true;
    });
    setState(() {
      isLoading = false;
    });
  }

  checkPincode(pincodeObj) async {
    return;
  }

  checkPincodeStatus(statusCode) {
    return pincodeStatus[statusCode.toString()];
  }

  final BoxDecoration pinPutDecoration = BoxDecoration(
    color: const Color.fromRGBO(235, 236, 237, 1),
    borderRadius: BorderRadius.circular(5.0),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Form(
          key: _formKey,
          child: PinPut(
            validator: (s) {
              return null;
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            withCursor: true,
            fieldsCount: 6,
            fieldsAlignment: MainAxisAlignment.spaceAround,
            textStyle: const TextStyle(fontSize: 25.0, color: Colors.black),
            eachFieldMargin: EdgeInsets.all(0),
            eachFieldWidth: 48.0,
            eachFieldHeight: 54.0,
            onSubmit: (String pin) {},
            focusNode: _pinPutFocusNode,
            controller: _pinPutController,
            keyboardType: TextInputType.number,
            submittedFieldDecoration: pinPutDecoration,
            selectedFieldDecoration: pinPutDecoration.copyWith(
              color: Colors.white,
              border: Border.all(
                width: 1,
                color: Theme.of(context).accentColor,
              ),
            ),
            followingFieldDecoration: pinPutDecoration,
            pinAnimationType: PinAnimationType.scale,
          ),
        ),
        Text(
          errorStatus,
          style: TextStyle(color: Colors.red),
        ),
        MainActionButton(
          title: "Continue",
          onPressed: () async {
            onSubmit(context);
          },
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          alignment: Alignment.center,
          child: Countdown(
            animation: StepTween(
              begin: timeInSecond,
              end: 0,
            ).animate(_controller),
          ),
        ),
        Loading(isLoading: isLoading),
      ],
    );
  }

  void startTimer() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: timeInSecond),
    );
    _controller.forward();
  }
}
