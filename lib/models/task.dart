class Task{
   String task = '=';
  bool isDone= false ;
  Task({this.task,this.isDone=false});
  void toggleisDone(){
    isDone = !isDone;
  }
}