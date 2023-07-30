import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
void main(){
  runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context)=>MaterialApp(
          useInheritedMediaQuery: true,home: Farmers(),

        ),)
  );
}
class Farmers extends StatelessWidget {


  var img=[
    ""
        "https://images.unsplash.com/photo-1501645963220-a20faa7494ba?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8dmVnZXRhYmxlcyUyMHRvbWF0b3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
    "https://media.istockphoto.com/id/1445512012/photo/pineapple-fruit-ripe-food-raw-food-wood-lemon.webp?b=1&s=170667a&w=0&k=20&c=QACwF9J8hIUGaihaeOU1aAZ3WxUtHxzAfze--NyqzvA=",
    "https://media.istockphoto.com/id/579165978/photo/broccoli.webp?b=1&s=170667a&w=0&k=20&c=O5W2CITQryEA-ck-t8W-zrURLqWaQ11MCQRjUgPPTKU=",
    "https://media.istockphoto.com/id/531474746/photo/fruit-salad.webp?b=1&s=170667a&w=0&k=20&c=q68zh3N2KME4qOrTs9wW0iJQxIDmTi9mrXYGeINnwZU=",
    "https://images.unsplash.com/photo-1515356956468-873dd257f911?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGxlYWZ5JTIwdmVnZXRhYmxlc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
    "https://images.unsplash.com/photo-1596040033229-a9821ebd058d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c3BpY2VzfGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60",
    "https://images.unsplash.com/photo-1537785713284-0015ce8a145c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fHNhbGFkc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60"

  ];

  var title=["Vegetables","Fruits","Exotic","Fresh cuts","Nutrition charges","Packed flavours","Salads"];


  var items=[
    "https://media.istockphoto.com/id/471359531/photo/carrots.webp?b=1&s=170667a&w=0&k=20&c=GAkLXPDAQTstK-VgZOdGjaUpu673h633F-q33ve-WTI=",
    "https://images.unsplash.com/photo-1587334274535-5f82e7e55dc0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fHRvbWF0b3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=600&q=60",
    "https://media.istockphoto.com/id/173242750/photo/banana-bunch.webp?b=1&s=170667a&w=0&k=20&c=0tf5f84ouowwcY08dpp6XrWUTLJLL_dWwjqAlyueU60=",
    "https://media.istockphoto.com/id/184991186/photo/kiwi-isolated.webp?b=1&s=170667a&w=0&k=20&c=WNVBpYwcCY9AiAkJp9iqhQQCZGmOm2NqCbE0FHK4PV0=",
    "https://media.istockphoto.com/id/172868533/photo/a-cauliflower-with-foliage-isolated-on-a-white-background.webp?b=1&s=170667a&w=0&k=20&c=8s_jKsXPx6icb6KGlYw3jrwAfO3yDDq4Gnop6Ra2K9o=",
    "https://media.istockphoto.com/id/844458696/photo/green-apple-fruit-with-half-and-green-leaf-isolated-on-white.webp?b=1&s=170667a&w=0&k=20&c=iAk-PYmns5_p3Aby0WBpgyg59YoUxroGtpY88Jm6Ldw=",
    "https://media.istockphoto.com/id/172411313/photo/juicy-orange-refreshment.webp?b=1&s=170667a&w=0&k=20&c=JCYUjhh8gT04B0dFEijSoguadlYFA1CHW_XMQj3VzJ8=",
    "https://media.istockphoto.com/id/1181414512/photo/pumpkin.webp?b=1&s=170667a&w=0&k=20&c=aRY6ohFvWdo5q8v2muPMCP2zgskdyqeDGbMpHlRzJ1Y=",


  ];


  var itemname=[" Carrot"," Tomato"," Banana"," Kiwi"," Cauliflower"," Green Apple"," Orange",
    " Pumpkin"
  ];


  var rate=[" Rs.30"," Rs.20"," Rs.40"," Rs.55"," Rs.25"," Rs.60"," Rs.45"," Rs.21"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(


        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.green,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart"),
            BottomNavigationBarItem(icon: Icon(Icons.account_box),label: "Account")
          ],
        ),

        appBar:AppBar(toolbarHeight: 90,
          backgroundColor: Colors.green,
          title: Column(
            children: [
              Row(
                children: [
                  Text("FARMERS FRESH ZONE"),SizedBox(width: 30,),
                  Icon(Icons.location_on),
                  Text("Kochi"),
                  Icon(Icons.arrow_drop_down)

                ],
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: InputDecoration(fillColor: Colors.white,filled: true,
                      border: OutlineInputBorder(
                        //  borderRadius: BorderRadius.circular(30)
                      ),
                      suffixIcon: Icon(Icons.search),
                      hintText: "search..."

                  ),
                ),
              ),
            ],
          ),
        ),

        body: SingleChildScrollView(scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SingleChildScrollView(scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: StadiumBorder(),
                              backgroundColor: Colors.white10,
                            ),
                            onPressed: (){}, child: Text("VEGETABLES",style: TextStyle(color: Colors.black),)),
                      ),
                      SizedBox(width: 20,),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            backgroundColor: Colors.white10,
                          ),
                          onPressed: (){}, child: Text("FRUITS",style: TextStyle(color: Colors.black),)),
                      SizedBox(width: 20,),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            backgroundColor: Colors.white10,
                          ),
                          onPressed: (){}, child: Text("EXOTIC",style: TextStyle(color: Colors.black),)),
                      SizedBox(width: 20,),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            backgroundColor: Colors.white10,
                          ),
                          onPressed: (){}, child: Text("FRESH CUTS",style: TextStyle(color: Colors.black))),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            backgroundColor: Colors.white10,
                          ),
                          onPressed: (){}, child: Text("NUTRITION CHARGES",style: TextStyle(color: Colors.black))),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(),
                            backgroundColor: Colors.white10,
                          ),
                          onPressed: (){}, child: Text("PACKED FLAVOURS",style: TextStyle(color: Colors.black))),
                    ],
                  ),
                ),

                CarouselSlider(items: [

                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/images/vegetableimage.jpg"),
                          //  fit: BoxFit.fill,
                        )
                    ),
                  ),

                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/images/veg2.jpg"),
                          //  fit: BoxFit.fill,
                        )
                    ),
                  ),

                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/images/veg3.jpg"),
                          // fit: BoxFit.fill,
                        )
                    ),
                  ),


                ],
                    options: CarouselOptions(
                      autoPlay: true, // autoplaying
                      viewportFraction: 0.8,  //if set as 1 one image at a time
                      // height: 200,
                      enlargeCenterPage: true, //highlighting viewing image
                      enableInfiniteScroll: true, //for auto scrolling from start (by default :true)
                      autoPlayCurve: Curves.linear, // animations when changing images
                      autoPlayAnimationDuration: Duration(seconds: 1),


                    )),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      SizedBox(width: 50,),
                      Container( height: 40,width: 40,
                          child: Image(image: AssetImage("assets/images/veg4.jpg"),)),
                      SizedBox(width: 80,),
                      Container(height: 40,width: 40,
                        child: Image(image: AssetImage("assets/images/veg5.jpg"),),
                      ),
                      SizedBox(width: 80,),
                      Container(height: 40,width: 40,
                        child: Image(image: AssetImage("assets/images/veg6.png"),),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [SizedBox(width: 20,),
                      Text("30 Mins Policy"),

                      SizedBox(width: 40,),
                      Text("Traceability"),SizedBox(width: 40,),
                      Text("Local Sourcing")
                    ],
                  ),
                ),SizedBox(height: 30,),
                Container(alignment: Alignment.topLeft,
                    child: Text("SHOP BY CATEGORY",style: TextStyle(fontSize: 20),)),


                /// we must use row or column-inside that use Expanded/Flexible infront Gridview
                Row(
                  children: [
                    Expanded(
                      child: GridView.builder(
                          shrinkWrap: true,
                          itemCount: img.length,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

                            crossAxisCount: 3,
                            mainAxisSpacing: 10,crossAxisSpacing: 10,
                          ), itemBuilder: (context,index)=>Container(

                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:
                              Container(
                                height: 80,width: 80,
                                decoration: BoxDecoration(
                                    image:   DecorationImage(

                                        image: NetworkImage(img[index]),fit: BoxFit.cover)
                                ),

                                // child: Image(image: NetworkImage(img[index],),fit: BoxFit.cover,)
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(child: Text(title[index]))
                          ],
                        ),
                      )
                      ),
                    ),
                  ],
                ),

                Container( height: 200,width: 200,
                    child: Image(image: NetworkImage("https://images.unsplash.com/photo-1505253716362-afaea1d3d1af?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8c2FsYWRzfGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60"),fit: BoxFit.cover,)),

                SizedBox(height: 30,),
                Container(alignment: Alignment.topLeft,
                    child: Text("Best Selling Products",style: TextStyle(fontSize: 20),)),



                GridView.builder(
                    shrinkWrap: true,
                    itemCount: items.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

                      crossAxisCount: 2,
                      mainAxisSpacing: 10,crossAxisSpacing: 10,
                    ), itemBuilder: (context,index)=>Container(
                  //height: 150,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                        Container(
                          height: 100,width: 100,
                          decoration: BoxDecoration(
                              image:   DecorationImage(

                                  image: NetworkImage(items[index]),fit: BoxFit.cover)
                          ),


                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(child: Text(itemname[index]),alignment: Alignment.topLeft,),
                      Container(child: Text(rate[index]),alignment: Alignment.topLeft,),
                      Row(
                        children: [
                          Text("1.00 Nos"),
                          SizedBox(width: 50,),
                          ElevatedButton(onPressed: (){}, child: Text("ADD"))
                        ],
                      ),
                    ],
                  ),
                )
                ),


                SizedBox( height: 30,width: 350,
                  child: ElevatedButton(
                    onPressed: (){}, child: Text("VIEW MORE"),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  ),
                )


              ],
            )

        )


    );


  }
}
