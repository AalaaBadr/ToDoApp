import 'package:to_do_app/screen/View%20Task.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/screen/Task.dart';

class TodoCard extends StatefulWidget {
  String? title;
  String? type;
  String? description ;
  TodoCard({Key? key,required this.title,required this.type,required this.description}) : super(key: key);

  @override
  State<TodoCard> createState() => _TodoCardState();
}

class _TodoCardState extends State<TodoCard> {
  bool? new_value = false;
  I (){
    return icon [(widget.type).toString()];
  }
  Map <String,Widget> icon ={"1":Icon(Icons.alarm, color: Colors.red, size: 35,),
    "2":Icon(Icons.audiotrack, color: Colors.pinkAccent, size: 35),
    "3":Icon(Icons.shopping_cart, color: Colors.orange, size: 35,),
    "4":Icon(Icons.run_circle, color: Colors.blue, size: 35,),
    "5":Icon(Icons.book_rounded, color: Colors.green, size: 35,),
    "6":Icon(Icons.work, color: Colors.amber, size: 35,)};

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            Theme(
              child: Transform.scale(
                scale: 1.5,
                child: Checkbox(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                  ),
                  activeColor: Colors.deepPurple,
                  checkColor: Colors.blueAccent,
                  value: new_value ,
                  onChanged: (value) {
                    setState(() {
                      new_value = value ;
                    });
                  },
                ),
              ),
              data: ThemeData(
                primarySwatch: Colors.deepPurple,
                unselectedWidgetColor: Colors.blueAccent,
              ),
            ),
            Expanded(
                child: Container(
                  height: 75,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                    ),
                    color: Color(0xff2a2e3d),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                            height: 33,
                            width: 36,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: I()
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text((widget.title).toString(),
                            style: TextStyle(
                              fontSize: 20,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w500,
                              color: Colors.white38,


                            )
                        )
                      ],
                    ),
                  ),
                )
            )
          ],
        ),
      ),
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => View(title: widget.title,type: widget.type ,description: widget.description)));
      },
    );
  }
}
