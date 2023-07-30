

import 'package:ui/tourism%20map%20ui%202/data.dart';
import 'package:ui/tourism%20map%20ui%202/mainpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class Details extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final route=ModalRoute.of(context)?.settings?.arguments as List;

    final placeid=route[0];
    final rate=route[1];



    //   final placeid=ModalRoute.of(context)?.settings.arguments;

    //  final rate=ModalRoute.of(context)?.settings.arguments;

    //  print("rating=$rate");
    // print("placeid=$placeid");

  //  print(route[0]);


// final args=ModalRoute.of(context)?.settings.arguments as Argue;

//final route=ModalRoute.of(context)?.settings.arguments;

    final placefromlist=places.firstWhere((element) => element["id"]==placeid);


    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.grey,
        title: Text("places"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(placefromlist["title2"],
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),),

                SizedBox(width: 50,),

                Container(//height: 80,width: 80,
                    child: Image.network(placefromlist["image2"],height: 70,width: 70,
                      fit: BoxFit.cover,)),
              ],
            ),
            Column(
              children: [

                Row(
                  children: [
                    RatingBarIndicator(
                      rating:rate,
                      itemBuilder: (context, index) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 15.0,
                      direction: Axis.horizontal,
                    ),


                Text("${placefromlist["rating"]}"),
                SizedBox(height: 20,),
                  ],
                ),

               SizedBox(height: 20,),

                Container(alignment: Alignment.topLeft,
                  child: Text("About places",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold),),
                ),

                SizedBox(height: 20,),
                Text(placefromlist["description"]),
                SizedBox(height: 20,),

                Container(alignment: Alignment.topLeft,
                  child: Text("Special Facilities",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold),),
                ),

                SizedBox(height: 20,),
                Row(
                  children: [
                    SizedBox(width: 30,),

                    Icon(Icons.local_parking,color: Colors.blue,),

                    Text("Parking",style: TextStyle(color: Colors.blueAccent),),

                    SizedBox(width: 30,),

                    Icon(Icons.support_agent,color: Colors.blue,),

                    Text("24x7 support",style: TextStyle(color: Colors.blue),),

                    SizedBox(width: 30,),

                    Icon(Icons.wifi,color: Colors.blue,),

                    Text("free wifi",style: TextStyle(color: Colors.blue),)
                  ],
                ),
                SizedBox(height: 20,),

                Container(
                    height: 150,width: 200,
                    child: Image.network(placefromlist["image3"],fit: BoxFit.cover,)),

                SizedBox(height: 30,),
                Container(alignment: Alignment.topLeft,
                  child: Text("Special facilities",
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
               SizedBox(height: 20,),
                Row(
                  children: [

                    SizedBox(width: 20,),

                    ElevatedButton(onPressed: (){}, child: Text("Adult\n 02"),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
                    ),

                    SizedBox(width: 20,),

                    ElevatedButton(onPressed: (){}, child: Text("Adult \n02"),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
                    ),

                    SizedBox(width: 20,),

                    ElevatedButton(onPressed: (){}, child: Text("Adult \n 02"),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
                    ),

                    SizedBox(width: 20,),

                    ElevatedButton(onPressed: (){}, child: Text("Adult \n02"),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
                    ),
                  ],
                ),
                SizedBox(height: 20,),

                SizedBox(height: 50,width: 300,

                    child: ElevatedButton(onPressed: (){}, child: Text("Explore now"),style:

                    ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple)
                      ,))
              ],

            )
          ],
        ),
      ),
    );
  }
}




