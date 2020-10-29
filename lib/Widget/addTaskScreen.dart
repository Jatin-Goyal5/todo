import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task_list.dart';
class AddTaskScreen extends StatefulWidget {


  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  TextEditingController addtask = new TextEditingController();

  Widget build(BuildContext context) {
    final tasks = Provider.of<TaskData>(context);
     String taskk;
    return Container(
    
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0)),
          color: Colors.white
        ),
        padding: EdgeInsets.symmetric(horizontal:40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom:8.0,top: 20.0),
              child: Text('Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: TextField(
                controller: addtask,
                autofocus:true,
                textAlign: TextAlign.center,
                ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new FlatButton(
                child: Text('Add'),
                color: Colors.lightBlueAccent,
                onPressed: (){
                  setState(() {
                    taskk = addtask.text;
                    tasks.add(taskk);
                  });
              print(taskk);
              //taskk ="helllo";
              
              Navigator.pop(context);
                
              }, 
              
              ),
            )
          ],
          
        ),
      ),
    );
  }
}

