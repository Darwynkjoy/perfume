import 'package:flutter/material.dart';

class Perfume extends StatelessWidget{
  const Perfume({super.key});
  @override
  Widget build(BuildContext context){
    List <Map> myList=[
      {
        "image":"assets/images/pngegg(1).png",
        "name":"The One For Men",
        "oldprice":"AED 510",
        "newprice":"AED 339.00"
      },
      {
        "image":"assets/images/spray1.png",
        "name":"Acqua Di Gio Profondo",
        "oldprice":"AED 465.00",
        "newprice":"AED 399.00"
      },
      {
        "image":"assets/images/pngwing.com.png",
        "name":"Sauvage",
        "oldprice":"AED 590.00",
        "newprice":"AED450.00"
      },
      {
        "image":"assets/images/spray4.png",
        "name":"Grain de Poudre",
        "oldprice":"AED 995.00",
        "newprice":"AED 585.00"
      },
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          leading: Icon(Icons.menu),
          actions: [
            Icon(Icons.comment_sharp),
            Icon(Icons.shopping_bag_outlined)
          ],
          title: Text("ZAHAAR",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          centerTitle: true,
          backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.6,
          ),
          itemCount: myList.length,
          itemBuilder: (context,index){
            return Container(
              child: Column(
                children: [
                  Expanded(child:Container(
                    
                    height: 300,
                    width:double.infinity,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage(myList[index]["image"]),fit: BoxFit.cover),color: const Color.fromARGB(255, 247, 241, 245)),
                  ),
                  ),
                  Text(myList[index]["name"],style: TextStyle(fontSize: 18),),
                  Text(myList[index]["oldprice"],style: TextStyle(fontSize: 15,decoration:TextDecoration.lineThrough),),
                  Text(myList[index]["newprice"],style: TextStyle(fontSize: 20,color: Colors.red),),
                ],
              ),
            );
          }),
      ),
    );
  }
}