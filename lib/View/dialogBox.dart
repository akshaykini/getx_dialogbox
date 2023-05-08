import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class DialogBox extends StatefulWidget {
  const DialogBox({super.key});

  @override
  State<DialogBox> createState() => _DialogBoxState();
}

class _DialogBoxState extends State<DialogBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx DialogBox'),
        centerTitle: true,
      ),
      body: Center(
        child: GridView.count(
          crossAxisSpacing: 10 ,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          padding: EdgeInsets.all(20),
          
          children: [
               ElevatedButton(onPressed: (){
              Get.defaultDialog(title: 'DialogBox Normal',
              radius: 20,
              middleText: 'This is newely created dialog box',
              middleTextStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)
              );
            }, child: Text('Show Dialog')),

            ElevatedButton(onPressed: (){
              Get.defaultDialog(title: 'Loading',
              content: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  
                  children: [
                    CircularProgressIndicator(),
                    SizedBox(width: 20,),
                    Text('Data Loading')
                  ],
                ),
              )
              );
            }, child: Text('DialogBox with Progress Indicator')),

            ElevatedButton(onPressed: (){
              Get.defaultDialog(title: 'Loading',
              middleText: 'Kindly press below button to confirm or cancel',
              textCancel: 'Cancel',
              cancelTextColor: Colors.red,
              textConfirm: 'Confirm',
              confirmTextColor: Colors.white,
              buttonColor: Colors.green
            
              
              
              
              );
            }, child: Text('DialogBox with Buttons')),
            ],
         
          
       
        ),
      ),
    );
  }
}