import 'package:flutter/material.dart';


class NewItem extends StatelessWidget {

const NewItem({super.key , required this.image , required this.name ,
  required this.description , required this.id});

final String image  ;
final String name  ;
final String description  ;
final String id  ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF007C6A),
        centerTitle: true,
        title: Text( name , style: TextStyle(
            color: Colors.black
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(image)),
              ),
            ),
            SizedBox(height: 10,),
            Text(name, maxLines:2, overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 20, color: Colors.black
              ),),
            Text(description ,
              maxLines: 2 ,
              overflow : TextOverflow.ellipsis,
              style: TextStyle(fontSize: 13, color: Colors.grey
              ),),
          ],
        ),
      ),
    );
  }
}




/*class NewItem extends StatelessWidget {

  const NewItem({super.key , required this.image , required this.name , required this.description});
  final String image;
  final String name;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF007C6A),
        title: Center(
          child: Text( name , style: TextStyle(
              color: Colors.black
          ),),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(image)),
                  )
              ),
              SizedBox(height: 10,),
              Text(name , maxLines: 2,
                overflow: TextOverflow.ellipsis, style: TextStyle(
                    color: Colors.black , fontSize: 20
                ),),
              Text(description , maxLines: 2,
                overflow: TextOverflow.ellipsis, style: TextStyle(
                    color: Colors.grey , fontSize: 13
                ),),
            ],
          ),
        ),
      ),
    );
  }
}
*/