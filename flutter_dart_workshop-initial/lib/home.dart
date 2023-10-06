import 'package:flutter/material.dart';
import 'package:theflutterlab_workshop/details.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Moon App'),
          leading:  IconButton(onPressed: (){}, icon: const Icon(Icons.home, size: 30,)),
        ),

        body: Column(
          children: [
            const SizedBox(height: 40,),
            const Text("Mission: Chandrayan-3",
                style: TextStyle(fontSize: 30,
                fontWeight: FontWeight.bold,
                ),
             ),
             const SizedBox(height: 40,),
             const Padding(
               padding: EdgeInsets.only(left:15, bottom: 20, right: 20, top:10),
               child: Text("Chandrayaan-3, India's ambitious lunar exploration mission, aims to further our understanding of the moon. With the Vikram lander and Pragyan rover, ISRO continues its quest to unravel the mysteries of our closest celestial neighbor.",
                  style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.w400),
               ),
             ),
             const SizedBox(height: 25),
             Stack(
              alignment: Alignment.topCenter,
              children: [
                        Image.asset(
                            'assets/moon.png',
                            height: 360,
                        ),
                        Hero(
                          tag: 'vikram',
                          child: Image.asset(
                              'assets/vikram.png',
                              height: 100,
                          ),
                        )
               ],
             ),
             const SizedBox(height: 30,),
             IconButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return const DetailsPage();
              }));
             }, icon: const Icon(Icons.arrow_forward, size: 40,))
          ],
        ),
     );
  }

}