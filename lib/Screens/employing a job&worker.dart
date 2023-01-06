import 'package:flutter/material.dart';

class Emplying_a_worker extends StatelessWidget {
  const Emplying_a_worker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ListView(
                children: [
                  const Padding(padding: const EdgeInsets.all(8.0)),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Fill the form",style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffcd6f18),
                      ),
                      ),
                    ],
                  ),
                  const SizedBox(height:10),


                  Container(height: 45,
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                        labelText: "Name ",
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  Container(
                    height: 45,
                    child: TextFormField(

                      keyboardType:TextInputType.phone ,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                        labelText:  "Tele.No"
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  Container(
                    height :45,
                    child: TextFormField(
                      keyboardType:TextInputType.streetAddress ,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                        labelText: "Address",
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  Container(
                    height: 45,
                    child: TextFormField(
                      keyboardType:TextInputType.number ,
                      decoration: InputDecoration(
                        fillColor: const Color(0xffe2efbb) ,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                        labelText: "Age",
                      ),
                    ),
                  ),

                  const SizedBox(height:5 ),

                  MaterialButton(onPressed: () {},
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    color: const Color(0xffcd6f18),
                    child: const Text('Apply',style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                     ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}