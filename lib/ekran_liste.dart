import 'package:book_list/kitap_detay.dart';
import 'package:flutter/material.dart';

class EkranListe extends StatelessWidget {
  List books = [
    {

      "author": "Chinua Achebe",
      "country": "Nigeria",
      "imageLink": "images/things-fall-apart.jpg",
      "language": "English",
      "link": "https://en.wikipedia.org/wiki/Things_Fall_Apart\n",
      "pages": 209,
      "title": "Things Fall Apart",
      "year": 1958
    },
    {
      "author": "Hans Christian Andersen",
      "country": "Denmark",
      "imageLink": "images/fairy-tales.jpg",
      "language": "Danish",
      "link":
          "https://en.wikipedia.org/wiki/Fairy_Tales_Told_for_Children._First_Collection.\n",
      "pages": 784,
      "title": "Fairy tales",
      "year": 1836
    },
    {
      "author": "Dante Alighieri",
      "country": "Italy",
      "imageLink": "images/the-divine-comedy.jpg",
      "language": "Italian",
      "link": "https://en.wikipedia.org/wiki/Divine_Comedy\n",
      "pages": 928,
      "title": "The Divine Comedy",
      "year": 1315
    },
    {
      "author": "Unknown",
      "country": "Sumer and Akkadian Empire",
      "imageLink": "images/the-epic-of-gilgamesh.jpg",
      "language": "Akkadian",
      "link": "https://en.wikipedia.org/wiki/Epic_of_Gilgamesh\n",
      "pages": 160,
      "title": "The Epic Of Gilgamesh",
      "year": -1700
    },
    {
      "author": "Unknown",
      "country": "Achaemenid Empire",
      "imageLink": "images/the-book-of-job.jpg",
      "language": "Hebrew",
      "link": "https://en.wikipedia.org/wiki/Book_of_Job\n",
      "pages": 176,
      "title": "The Book Of Job",
      "year": -600
    },
    {
      "author": "Unknown",
      "country": "India/Iran/Iraq/Egypt/Tajikistan",
      "imageLink": "images/one-thousand-and-one-nights.jpg",
      "language": "Arabic",
      "link": "https://en.wikipedia.org/wiki/One_Thousand_and_One_Nights\n",
      "pages": 288,
      "title": "One Thousand and One Nights",
      "year": 1200
    },
    {
      "author": "Unknown",
      "country": "Iceland",
      "imageLink": "images/njals-saga.jpg",
      "language": "Old Norse",
      "link": "https://en.wikipedia.org/wiki/Nj%C3%A1ls_saga\n",
      "pages": 384,
      "title": "Nj\u00e1l's Saga",
      "year": 1350
    },
    {
      "author": "Jane Austen",
      "country": "United Kingdom",
      "imageLink": "images/pride-and-prejudice.jpg",
      "language": "English",
      "link": "https://en.wikipedia.org/wiki/Pride_and_Prejudice\n",
      "pages": 226,
      "title": "Pride and Prejudice",
      "year": 1813
    }
  ];

  void showInfo(BuildContext context, index)
  {
    Map secilenKitap = books[index];
    print("Seçilen Kitap : ");
    print(secilenKitap);


    showDialog(context: context, builder: (context)
    {
        return AlertDialog(
          insetPadding: EdgeInsets.all(10),
          title: Center(child: Text(secilenKitap["title"]),),
          content: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Author : ${secilenKitap["author"]}"),
              SizedBox(height: 10,),
              Text("Coutry : ${secilenKitap["Coutry"]}"),
              SizedBox(height: 10,),
              Text("Year : ${secilenKitap["year"]}"),
              SizedBox(height: 10,),
              Text("Page Count : ${secilenKitap["pages"]}"),
              SizedBox(height: 10,),
            ],
          ),

        );
    },
    );

  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Book List",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        body: Container(
          width: double.maxFinite,
          child: ListView.builder(
            itemCount: books.length,
            itemBuilder: (context, index)
            {
              var k = books[index];
              // title, year, author
              return Card(
                //color: Color(0xFF0099CC),
                //color: Colors.amber,
                margin: EdgeInsets.all(10),
                elevation: 10,
                child: InkWell(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    width: double.maxFinite,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          k["title"],
                          style:  TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                k["author"],
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black45,
                                ),
                              ),
                            ),
                            Text(
                              "${k["year"]}",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black45,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  onTap: () {
                    showInfo(context, index);
                  },

                  onLongPress: ()
                  {
                    Map k = books[index];
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => KitapDetay(k)));
                  },

                )
              );
            },
          ),
        ));
  }
}
