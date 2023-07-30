

import 'package:ui/tourism%20map%20ui%202/data.dart';
import 'package:flutter/material.dart';

import 'data.dart';

class Placeexp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Center(
            child: Text("GoFast",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),

            ),
          ),
          actions: [
            Icon(Icons.menu,color: Colors.black,),
          ],
        ),
        body:
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),
                    suffixIcon: Icon(Icons.search),
                    hintText: "search.."

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Text("popular places",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold),),

                    SizedBox(width: 90,),

                    Text("view all",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              Expanded(
                child: GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 15,
                    ),

                    children: places.map((e) => Stack(
                        children:[
                          InkWell(
                            //  onTap: (){

                            //  Navigator.of(context).pushNamed("third",arguments: Argue(7050, 4.5));
                            //
                            //   Navigator.of(context).pushNamed("third",arguments:{e["id"],e["rating"]});
                            // },

                            //  onTap: ()=>gotoNext(context,e["id"]),
                            onTap: ()=>gotoNext(context,e["id"],e["rating"]),


                            //  },



                            child: Container(

                              height: 600,width: 200,
                              child: Image.network(e["image1"],fit: BoxFit.cover,),
                            ),
                          ),

                          Positioned(
                            bottom: 20,
                            left: 20,

                            child: Text(e["title1"],
                              style: TextStyle
                                (color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),),

                          ) ,

                        ]

                    )).toList()

                ),
              ),

              SizedBox(
                  height: 50,width: 300,
                  child: ElevatedButton(onPressed: (){}, child: Text("Explore now"),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple)))
            ],
          ),
        )
    );
  }

  void gotoNext(BuildContext context, placeid,rate) {
    Navigator.of(context).pushNamed("third",arguments:[placeid,rate]);

  }
}






// import 'package:assignment/tourism%20map%20ui%202/data.dart';
// import 'package:flutter/material.dart';
//
// class Placeexp extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title: Center(
//           child: Text("GoFast",
//             style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//             color: Colors.black
//             ),
//
//           ),
//         ),
//         actions: [
//           Icon(Icons.menu,color: Colors.black,),
//         ],
//       ),
//       body:
//     Padding(
//       padding: const EdgeInsets.all(20.0),
//       child: Column(
//           children: [
//             TextFormField(
//               decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(30)
//                   ),
//                   suffixIcon: Icon(Icons.search),
//                   hintText: "search.."
//
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(15.0),
//               child: Row(
//               children: [
//                 Text("popular places",
//                   style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold),),
//
//                 SizedBox(width: 90,),
//
//                 Text("view all",
//                   style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold),)
//               ],
//               ),
//             ),
//
//               Expanded(
//                 child: GridView(
//                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//       crossAxisCount: 2,
//       mainAxisSpacing: 15,
//       crossAxisSpacing: 15,
//       ),
//
//       children: places.map((e) => Stack(
//         children:[
//           InkWell(
//           //  onTap: (){
//           //  // Navigator.pushNamed(context, "routes",arguments: Argue("7050", 4.5));
//           //
//           //  Navigator.of(context).pushNamed("third",arguments:{e["id"],e["rate"]});
//           // },
//
//           //  onTap: ()=>gotoNext(context,e["id"],e["rating"]),
//
//             // onTap: (){
//             //   next(context);
//             // },
//     onTap: ()
//           {
//      // void next(BuildContext context,rate,placeid){
//         Navigator.of(context).pushNamed("third",arguments:{
//
//           "id1":e["id"],
//           "rate1":e["rating"],
//         //  e["id"],e["rating"]});
//       });
//     },
//
//
//
//     child: Container(
//
//             height: 600,width: 200,
//             child: Image.network(e["image1"],fit: BoxFit.cover,),
//           ),
//         ),
//
//           Positioned(
//             bottom: 20,
//               left: 20,
//
//               child: Text(e["title1"],
//                 style: TextStyle
//                   (color: Colors.white,
//                     fontSize: 10,
//                     fontWeight: FontWeight.bold),),
//
//           ) ,
//
//         ]
//
//       )).toList()
//
//       ),
//               ),
// SizedBox(
//       height: 50,width: 300,
//       child: ElevatedButton(onPressed: (){}, child: Text("Explore now"),
//       style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple)))
//          ],
//         ),
//     )
//     );
//   }
//
// // gotoNext(BuildContext context,rate,placeid) {
//   // Navigator.of(context).pushNamed("third",arguments: {rate,placeid});
//
// // }
// }
//
// // void next(BuildContext context){
// //   Navigator.of(context).pushNamed("third",arguments: {rate,placeid});
// // }
//
//
// // class Argue {
// //   //  final double placeid;
// //   // final double rate;
// //   // Argue(this.placeid,this.rate);
