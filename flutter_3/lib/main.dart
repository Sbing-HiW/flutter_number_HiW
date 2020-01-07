import 'package:flutter/material.dart';

void main() {
runApp(MaterialApp(
  title: "导航演示1",
  home:new FirstScreen()
));
}

class FirstScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("导航页面"),),
     body: Center(
       child: RaisedButton(
       child: Text("查看详情"),
       onPressed: (){
         Navigator.push(context,MaterialPageRoute(
         builder: (context)=>new SecondScreen(),
         ));
       },
      ),
     ),
    );
  }
}

class SecondScreen extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(title:Text("详情页"),),
      body: Center(child: RaisedButton(
        child: Text("返回"),
        onPressed: (){
          Navigator.pop(context);
        },
      ),),
    );
  }
}

// RaisedButton 凸起按钮
// onPressed 按下动作响应事件
// MaterialPageRoute 路由组件
// Navigator.push 导航组件
// builder 下个页面builder上去
