import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'detailspage.dart';
import 'mainpage.dart';
void main(){
  runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context)=>MaterialApp(
          useInheritedMediaQuery: true,home: Tourismexp(),
          routes: {
            "third":(context)=>Details(),
          },
        ),)
  );
}
class Tourismexp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        ),
        body: Center(
          child: Column(
            children: [
              Container(height: 300,width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                        image: NetworkImage("data:image/png;base64,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"),
                        fit: BoxFit.cover
                    )
                ),
              ),
              SizedBox(height: 40,),
              SizedBox(
                  height: 30,width: 120,
                  child: ElevatedButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Placeexp()));
                  }, child: Text("Login"),
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: Colors.blue),)),
              SizedBox(height: 20,),

              Center(child: Text("--OR--")),


              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(height:30 ,width: 250,
                    child: ElevatedButton(onPressed: (){}, child: Row(
                      children: [
                        Text("Login with facebook",),
                        SizedBox(width: 60,),
                        Icon(Icons.facebook)
                      ],
                    ),
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          backgroundColor: Colors.blue),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(height: 30,width: 250,
                  child: ElevatedButton(onPressed: (){}, child: Row(
                    children: [
                      Text("Login with google"),
                      SizedBox(width: 60,),
                      Icon(Icons.transfer_within_a_station_outlined)
                    ],
                  ),
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: Colors.blue),),

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(height: 30,width: 250,
                  child: ElevatedButton(onPressed: (){}, child: Row(
                    children: [
                      Text("login with twitter "),
                      SizedBox(width: 60,),
                      Icon(Icons.transfer_within_a_station_outlined)
                    ],
                  ),
                    style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: Colors.blue),
                  ),
                ),
              )
            ],
          ),
        )

    );
  }
}
