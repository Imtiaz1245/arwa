import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final hintText, ispassword, prefixIcon, keyboardType,width;

  CustomTextFormField(
      {Key? key,
      this.hintText,
      this.ispassword = false,
      this.prefixIcon,
      this.keyboardType, this.width})
      : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool obscure = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.ispassword == true) {
      setState(() {
        obscure = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      width: widget.width,
      child: TextFormField(
        obscureText: obscure,
        keyboardType: widget.keyboardType,
        decoration: InputDecoration(
          hintStyle: TextStyle(fontSize: 12.0,),
          suffixIcon: widget.ispassword == true
              ? InkWell(
                  onTap: () {
                    setState(() {
                      obscure = !obscure;
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.all(17.0),
                    child: Image.asset(
                      obscure == true
                          ? "assets/icons/invisible.png"
                          : "assets/icons/email.png",
                      height: 20,
                      width: 20,
                    ),
                  ),
                )
              : SizedBox(),
          prefixIcon: widget.prefixIcon,
          hintText: widget.hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.0),
          ),
        ),
      ),
    );
  }
}
