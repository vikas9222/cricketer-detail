import 'package:flutter/material.dart';

class CricketersDetails extends StatefulWidget {
  const CricketersDetails({Key? key}) : super(key: key);

  @override
  State<CricketersDetails> createState() => _CricketersDetailsState();
}

class _CricketersDetailsState extends State<CricketersDetails> {

  int numberofmatchplayed=0;

  @override
  void initState() {
    super.initState();
    numberofmatchplayed=200;
  }
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(title: const Text("Cricketers Details",),
      centerTitle: true,
      backgroundColor: Colors.grey[850],
    ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Image.asset("assets/images/virat-kohli-png-removebg-preview.png",
           width: 200,
           height: 200,),
           const Divider(
            height: 40,
            color: Colors.white38,),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text("Name",style: TextStyle(color: Colors.white38,letterSpacing: 2.0),
       ),
            ),
       const SizedBox(
          height: 5,
       ),
       
       const Text("Virat Kohli",style: TextStyle(
          color: Colors.yellow,
          fontSize: 22,
          fontWeight: FontWeight.bold,
          letterSpacing: 2.0)),
          
       const SizedBox(
          height: 10,
       ),
        const Text("Age",style: TextStyle(color: Colors.white38,letterSpacing: 2.0)),
       
       const Padding(
         padding: EdgeInsets.all(8.0),
         child: Text("38",style: TextStyle(
            color: Colors.yellow,
            fontSize: 22,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0)),
       ),

          
       const SizedBox(
          height: 10,
       ),
       const Text("Number Of Games Played",
       style: TextStyle(color: Colors.white38,letterSpacing: 2.0)),
       
        Padding(
         padding: const EdgeInsets.all(8.0),
         child: Text("$numberofmatchplayed",style: const TextStyle(
            color: Colors.yellow,
            fontSize: 22,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0)),
       ),
      

          ],
     ),
        ),
),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            numberofmatchplayed=numberofmatchplayed+1;
          });
        
        },
        backgroundColor: Colors.grey[700],
        child: const Icon(Icons.add,),),
    );
 }
}