import 'package:flutter/material.dart';

class KitapDetay extends StatelessWidget
{

  Map data = {};
  KitapDetay(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${data["title"]}"),
        automaticallyImplyLeading: true,
        actions: [
          IconButton(onPressed: () {
            print("Share Action");
          }, icon: Icon(Icons.share))
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Title : ", style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text("${data["title"]}"),
            SizedBox(height: 20,),

            Text("Author : ", style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text("${data["author"]}"),
            SizedBox(height: 20,),

            Text("Year : ", style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text("${data["year"]}"),
            SizedBox(height: 20,),

            Center(
              child: ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Container(
                width: 200,
                color: Colors.blueAccent,
                child: Text("Go Back", textAlign: TextAlign.center,),
              )),
            )
          ],
        ),
      ),
    );
  }
}
