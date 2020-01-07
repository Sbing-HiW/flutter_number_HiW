import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    // 层叠
    // var stack = new Stack(
    //   alignment: const FractionalOffset(0.5, 0.9),
    //   children: <Widget>[
    //    new CircleAvatar(
    //      backgroundImage: new NetworkImage("http://n.sinaimg.cn/sinacn10116/388/w620h568/20190612/75d6-hyeztyt1943390.jpg"),
    //      radius: 100.0,
    //    ),
    //    new Container(
    //      decoration: new BoxDecoration(
    //        color: Colors.lightBlue,
    //      ),
    //     padding: EdgeInsets.all(5.0),
    //     child: Text("层叠"),
    //    )
    //   ],
    // );

    // 层叠定位组件
    //  var stack = new Stack(
    //   alignment: const FractionalOffset(0.5, 0.9),
    //   children: <Widget>[
    //    new CircleAvatar(
    //      backgroundImage: new NetworkImage("http://n.sinaimg.cn/sinacn10116/388/w620h568/20190612/75d6-hyeztyt1943390.jpg"),
    //      radius: 100.0,
    //    ),
    //    new Positioned(
    //      top: 10.0,
    //      left: 10.0,
    //      child: new Text("层叠定位1"),
    //    ),
    //    new Positioned(
    //      bottom: 10.0,
    //      right: 10.0,
    //      child: new Text("层叠定位2"),
    //    ),      
    //   ],
    // );

    // 卡片布局
    // var card = new Card(
    //   child: Column(
    //     children: <Widget>[
    //       ListTile(
    //         title: Text("卡片布局1",style: TextStyle(color: Colors.lightBlue,fontSize: 25,),),
    //         subtitle: Text("1234568"),
    //         leading: new Icon(Icons.access_alarm),
    //       ),
    //       new Divider(), //分割线
    //       ListTile(
    //         title: Text("卡片布局2",style: TextStyle(color: Colors.lightBlue,fontSize: 25,),),
    //         subtitle: Text("1234568910"),
    //         leading: new Icon(Icons.accessibility),
    //       ),
    //       new Divider(),
    //       ListTile(
    //         title: Text("卡片布局3",style: TextStyle(color: Colors.lightBlue,fontSize: 25,),),
    //         subtitle: Text("123456101"),
    //         leading: new Icon(Icons.add_call),
    //       )
    //     ],
    //   ),
    // );


    return MaterialApp(
      title: '布局',
      home: Scaffold(

        // 水平布局
        // appBar: AppBar(title: new Text("水平方向布局"),),
        // body: new Row(
        //   children: <Widget>[
        //     Expanded(child:new RaisedButton(
        //       onPressed: (){},
        //       color: Colors.lightBlue,
        //       child: new Text("Blue "),
        //     ),),
        //    new RaisedButton(
        //       onPressed: (){},
        //       color: Colors.yellow,
        //       child: new Text("yellow "),
        //     ),
        //     Expanded(child:new RaisedButton(
        //       onPressed: (){},
        //       color: Colors.green,
        //       child: new Text("green "),
        //     ),),
        //   ],
        // ),

        // 垂直布局
        // appBar: AppBar(title: new Text("垂直方向布局"),),
        // body: Center(
        //  child: Column(
        //    crossAxisAlignment: CrossAxisAlignment.center, //首对齐
        //    mainAxisAlignment: MainAxisAlignment.center,
        //    children: <Widget>[
        //      Expanded( child:Text("垂直布局1"),),
        //      Expanded( child:Text("垂直布局222"),),
        //      Text("垂直布局3"),
        //    ],
        //  ),
        // ),


        // 层叠布局
        appBar: AppBar(title: new Text("层叠布局"),),
        // body: Center(child: stack,),
        // body: Center(child: card,),

      ),
    );
  }
}

// Expanded(child:), 灵活布局  整行充满平 平均分配