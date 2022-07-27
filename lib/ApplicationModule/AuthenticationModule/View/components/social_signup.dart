import 'package:flutter/material.dart';

class SocialSignUpView extends StatelessWidget {
  const SocialSignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        ClipOval(
          child: InkWell(
              onTap: (){},
              child: Image.asset("assets/icons/fb.png",height: 40.0,width: 40.0,fit: BoxFit.fill,)),
        ),
        SizedBox(
          width: 15.0,
        ),
        ClipOval(
          child: InkWell(
              onTap: (){},
              child: Image.asset("assets/icons/ios.png",height: 40.0,width: 40.0,fit: BoxFit.fill,)),
        ),
        SizedBox(
          width: 15.0,
        ),
        ClipOval(
          child: InkWell(
              onTap: (){},
              child: Image.asset("assets/icons/google.png",height: 40.0,width: 40.0,fit: BoxFit.fill,)),
        ),
        SizedBox(
          width: 15.0,
        ),
      ],
    );
  }
}
