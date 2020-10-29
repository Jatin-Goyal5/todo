
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/Widget/addTaskScreen.dart';
import 'package:todo/Widget/task_list.dart';
import 'package:todo/models/task_list.dart';
class TaskScreen extends StatelessWidget{ 
 

  
  @override
  Widget build(BuildContext context) {
     final tasks = Provider.of<TaskData>(context); 
       
   
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent, 
      floatingActionButton: FloatingActionButton(
       onPressed: () {
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) => SingleChildScrollView(
                    child:Container(
                      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: AddTaskScreen(),
                    )
                )
            );
          },
        child: Icon(Ionicons.ios_add),
      ),
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget>[ 
            Container(
            padding: EdgeInsets.only(top:60.0,left: 30.0,right: 30.0,bottom: 30.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:<Widget>[

                new CircleAvatar(
                  child:Icon(Foundation.list,size: 30.0,),
                  backgroundColor: Colors.white,
                  radius: 30.0,
                  
                ),
                new SizedBox(
                  height:10.0,
                ),
                Text('Todey',
                style: TextStyle(
                  fontSize: 50.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w700
                )
                ),
                Text((tasks.getLength().toString()+ ' Tasks').toString()),
               
              ]
            ),
        ),
         Expanded(
                  child: new Container(
                    padding: EdgeInsets.symmetric(horizontal: 30.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0))
                   ),
                   child:TasksList(),
                ),
              )
        ],
        ),
      ),     
    );
  }
}

