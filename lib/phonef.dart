import 'package:arwa/uttils/cutom_height_width.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:phone_state/phone_state.dart';
class Phonef extends StatefulWidget {
  const Phonef({Key? key}) : super(key: key);

  @override
  State<Phonef> createState() => _PhonefState();
}

class _PhonefState extends State<Phonef> {
  var status;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: CustomHeight(context),
        width: CustomWidth(context),
        child: Center(
          child: Text("Phone State is ${status}"),
        ),
      ),
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    permission();
    setStream();



  }
  permission()async{
    var status = await Permission.phone.request();
  }
  void setStream() {

    PhoneState.phoneStateStream.listen((event) {
      setState(() {
        if (event != null) {
          status = event;
        }
      });
    });
  }
}
