import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'TodoCard.dart';
import 'package:to_do_app/screen/Task.dart';

class ToDoMain extends StatefulWidget {
  ToDoMain({Key? key}) : super(key: key);

  @override
  State<ToDoMain> createState() => _ToDoMainState();
}

class _ToDoMainState extends State<ToDoMain> {
  final Stream <QuerySnapshot> stream =
  FirebaseFirestore.instance.collection("Task").snapshots();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar:AppBar(
        backgroundColor: Colors.black87,
        title: Text(
              'To Do List',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
        ),
      ),
     bottomNavigationBar: BottomNavigationBar(
       backgroundColor: Colors.black87,
         items:[

       BottomNavigationBarItem(
           icon: Container(
             height :60,
             width:60,
               decoration: BoxDecoration(
                 shape: BoxShape.circle,
                 gradient: LinearGradient(
                   colors: [
                     Colors.indigoAccent,
                     Colors.purple,
                   ]
                 )
               ),
              child:InkWell(
                 child: Icon( Icons.note_add_sharp,
                   size: 32,
                   color: Colors.white,
             ),
                onTap: () {

               Navigator.push(
               context, MaterialPageRoute(
               builder: (context) => Task()));
                },
              ),
           ),
         label: '',
       ),

         ]
     ),
        body: StreamBuilder(
            stream: stream,
            builder: (context, snapshot) {
              if (!snapshot.hasData){
                return Center(child: CircularProgressIndicator());
              }
              return ListView.builder(
                  itemCount: (snapshot.data as QuerySnapshot).docs.length,
                  itemBuilder: (context, index){
                    Map <String,dynamic> data =(snapshot.data as QuerySnapshot) .docs[index].data() as Map <String,dynamic>;
                    return TodoCard(title: data["Title"],type:data["Type"] ,description: data["Description"]);
                  }
              );
            }
        )
    );

  }
}
