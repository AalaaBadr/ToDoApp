import 'package:flutter/material.dart';
import 'ToDoMain.dart';

class View extends StatelessWidget {
  String? title ;
  String? description ;
  String? type ;
   View({Key? key,required this.title,required this.description,required this.type}) : super(key: key);
  GlobalKey<FormState> formKey = GlobalKey();

   I (){
     return icon [(type).toString()];
   }
   Map <String,Widget> icon ={"1":Icon(Icons.alarm, color: Colors.red, size: 35,),
     "2":Icon(Icons.audiotrack, color: Colors.pinkAccent, size: 35),
     "3":Icon(Icons.shopping_cart, color: Colors.orange, size: 35,),
     "4":Icon(Icons.run_circle, color: Colors.blue, size: 35,),
     "5":Icon(Icons.book_rounded, color: Colors.green, size: 35,),
     "6":Icon(Icons.work, color: Colors.amber, size: 35,)};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Text(
            'Your Task',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),

        ),

        body:
        Container(
          decoration:BoxDecoration(
              color: Colors.black87
          ),
          child: Form(
              key: formKey,
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:20,vertical: 5),
                  child: SingleChildScrollView(
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 12),
                            Text(
                                'Task Title',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                )
                            ),
                            const SizedBox(height: 15),
                            Container(
                              height: 55,
                              width: MediaQuery.of(context).size.width,
                              decoration:BoxDecoration(
                                color: Colors.deepPurple[600],
                                borderRadius:BorderRadius.circular(15),
                              ),
                              child:  Center(
                                child: Text(
                                  (title).toString(),
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize:22,
                                  ),
                                    ),
                              ),
                                ),
                            const SizedBox(height: 30),

                            Text(
                                'Task Type',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                )
                            ),
                            const SizedBox(height: 15),
                            Container(
                                height: 55,
                                width:  55,
                                decoration: BoxDecoration(
                                    color:  Color(0xff2a2e3d),
                                    borderRadius: BorderRadius.circular(8)
                                ),
                                child: I()
                            ),

                            const SizedBox(height: 30),
                            Text(
                                'Task Description',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                )
                            ),
                            const SizedBox(height: 15),
                            Container(
                              height: 300,
                              width: MediaQuery.of(context).size.width,
                              decoration:BoxDecoration(
                                color: Colors.deepPurple[600],
                                borderRadius:  BorderRadius.circular(15),

                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  (description).toString(),
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    fontSize:20,
                                  ),
                                    ),
                              ),
                                ),
                            const SizedBox(height: 30),

                          ]
                      ),
                    ),
                  )
              )
          ),
        )
    );
  }
}
