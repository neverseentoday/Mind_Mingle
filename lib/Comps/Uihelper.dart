import 'package:flutter/material.dart';

class Uihelper {
  static CustomAlertBox(BuildContext context, String text) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(text),
        );
      },
    );
  }
  static CustomTextField(TextEditingController controller,String text,IconData iconData,bool toHide){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        controller: controller,
        obscureText: toHide,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: const BorderSide(
              color: Colors.grey
            )
          ),
          hintText: text,
          suffixIcon: Icon(iconData),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0)
            )
        ),
      ),
    );
  }
  static CustomButton(VoidCallback voidCallback,String text){
    return SizedBox(height: 50,width: 250,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueAccent
        ),
        onPressed: (){
        voidCallback();
      },child: Text(text,style: const TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),),),
    );
  }
  static CustomTextBox(TextEditingController controller,String text,bool toHide){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: TextField(
          controller: controller,
        obscureText: toHide,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(top: 5.0,bottom: 10.0,left: 15.0),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                    color: Colors.grey
                )
            ),
            hintText: text,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0)
            )
        ),
      ),
    );
  }
  static CustomIconButton(VoidCallback voidCallback,String text,IconData iconData){
    return Center(
      child: SizedBox(height: 50,width: 250,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent
          ),
          onPressed: (){
            voidCallback();
          }, child: Text(text,style: const TextStyle(color: Colors.white,fontSize: 20),),
        ),


      ),
    );
  }
}
