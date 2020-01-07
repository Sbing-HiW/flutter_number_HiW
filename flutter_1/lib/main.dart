import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
/*1.基本介绍*/
// flutter 一切皆组件
// 基本结构：
// 1.引入material库
// 2.入口方法
// 3.声明类 继承 StatelessWidget
// 4.重写方法 返回组件Widget 
// 5.返回方法 里面全是组件MaterialApp
//   home：相当于窗口主体 
//   Scaffold：搭建内容
//   body：Center 内容剧中
//   child：子组件
//   text：文本组件
//入口方法
void main(){
 runApp(MyApp(
  //  items:new List<String>.generate(1000, (i)=>"item $i")
 ));
}

class MyApp extends StatelessWidget{

// final List<String> items;
// MyApp({Key key,@required this.items}):super(key:key);

@override
Widget build (BuildContext context){
  return MaterialApp(
    title: "基本组件介绍",
    home: Scaffold(
      appBar: AppBar( title: Text("第一个Futter")),

      // 网格写法1:
      // body: GridView.count(
      //   padding: const EdgeInsets.all(20.0),
      //   crossAxisSpacing: 10.0,
      //   crossAxisCount: 3,
      //   children: <Widget>[
      //     const Text("123"),
      //     const Text("456"),
      //     const Text("789"),
      //     const Text("123"),
      //     const Text("456"),
      //     const Text("789"),
      //     new Image.network("http://n.sinaimg.cn/sinacn10116/388/w620h568/20190612/75d6-hyeztyt1943390.jpg"),
      //     new Image.network("http://cos.ainicheng.com/storage/img/6779.jpg"),
      //     new Image.network("https://gss0.baidu.com/94o3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/8326cffc1e178a82c103c816fe03738da977e84d.jpg"),
      //   ],
      // ),
      // 网格写法2:
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, //一行列数
          mainAxisSpacing: 2.0, //行间距
          crossAxisSpacing: 2.0, //列间距
          childAspectRatio: 0.5, //宽高比
        ),
        children: <Widget>[
          new Image.network("http://n.sinaimg.cn/sinacn10116/388/w620h568/20190612/75d6-hyeztyt1943390.jpg",fit: BoxFit.cover,),
          new Image.network("http://cos.ainicheng.com/storage/img/6779.jpg",fit: BoxFit.cover,),
          new Image.network("https://gss0.baidu.com/94o3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/8326cffc1e178a82c103c816fe03738da977e84d.jpg",fit: BoxFit.cover,),
          new Image.network("http://n.sinaimg.cn/sinacn10116/388/w620h568/20190612/75d6-hyeztyt1943390.jpg"),
          new Image.network("http://cos.ainicheng.com/storage/img/6779.jpg"),
          new Image.network("https://gss0.baidu.com/94o3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/8326cffc1e178a82c103c816fe03738da977e84d.jpg"),
          new Image.network("http://n.sinaimg.cn/sinacn10116/388/w620h568/20190612/75d6-hyeztyt1943390.jpg"),
          new Image.network("http://cos.ainicheng.com/storage/img/6779.jpg"),
          new Image.network("https://gss0.baidu.com/94o3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/8326cffc1e178a82c103c816fe03738da977e84d.jpg"),
        ],
      ), 



      // body: new ListView.builder(
      //   itemCount: items.length,
      //   itemBuilder: (context,index){
      //     return new ListTile(title: new Text("${items[index]}"));
      //   },
      // ),

      // body: new ListView(
      //   children: <Widget>[
      //     new ListTile(
      //       leading: new Icon(Icons.account_balance),
      //       title: new Text("account_balance"),
      //     ),
      //     new ListTile(
      //       leading: new Icon(Icons.add_box),
      //       title: new Text("add_box"),
      //     ),
      //     new ListTile(
      //       leading: new Icon(Icons.airline_seat_flat),
      //       title: new Text("airline_seat_flat"),
      //     ),
      //     new Image.network("http://n.sinaimg.cn/sinacn10116/388/w620h568/20190612/75d6-hyeztyt1943390.jpg"),
      //     new Image.network("http://cos.ainicheng.com/storage/img/6779.jpg"),
      //     new Image.network("https://gss0.baidu.com/94o3dSag_xI4khGko9WTAnF6hhy/zhidao/pic/item/8326cffc1e178a82c103c816fe03738da977e84d.jpg"),
      //   ],
      // ),

      // body:Center(
      //   child: Container(
      //     height: 200.0,
      //     // child: Mylist()  //方法1 继承类
      //     child: new ListView(  //方法2 嵌套 不推荐 易学习
      //       scrollDirection: Axis.horizontal,
      //       children: <Widget>[
      //         new Container(
      //           width: 180.0,
      //           color: Colors.lightBlue,
      //         ),
      //         new Container(
      //           width: 180.0,
      //           color: Colors.lightGreen,
      //         ),
      //         new Container(
      //           width: 180.0,
      //           color: Colors.red,
      //         ),
      //         new Container(
      //           width: 180.0,
      //           color: Colors.yellow,
      //         ),
      //       ],
      //     ),
      //   ),
      // ) ,

      // body: Center(
        // child:Container(
          // child: new Image.network(
          // "http://n.sinaimg.cn/sinacn10116/388/w620h568/20190612/75d6-hyeztyt1943390.jpg",

          // fit:BoxFit.scaleDown, //图片与容器的关系

          // color:Colors.green ,
          // colorBlendMode: BlendMode.modulate, //颜色混合模式
          
          // repeat: ImageRepeat.repeat, //重复
          // ),
          
         
          // width: 300.0,
          // height: 200.0,
          // color: Colors.lightBlue,
          // alignment: Alignment.center, //容器的对齐模式
          // padding: const EdgeInsets.fromLTRB(10.0,20.0,30.0,40.0),
          // margin: const EdgeInsets.all(20.0),
          // decoration: new BoxDecoration(
          //   gradient: const LinearGradient(
          //     colors: [Colors.lightBlue,Colors.lightGreen,Colors.red]
          //   ),
          //   border: Border.all(width: 2.0,color: Colors.red)
          // ),
        




        //   child: Text( 
        //    "内容1-1-1-35415132",
        //    textAlign: TextAlign.center,//对齐方式
        //    maxLines: 2,
        //    overflow: TextOverflow.ellipsis,
        //    style: TextStyle(
        //      fontSize: 25.0,
        //      color: Color.fromARGB(255,100, 255, 20),
        //   decoration: TextDecoration.underline,
        //   decorationStyle: TextDecorationStyle.solid,
        // ),)
        // ),
      // ),
    ),
  );
}

}

class Mylist extends StatelessWidget {
  @override
  Widget build (BuildContext context){
    return ListView(
    scrollDirection: Axis.horizontal,
            children: <Widget>[
              new Container(
                width: 180.0,
                color: Colors.lightBlue,
              ),
              new Container(
                width: 180.0,
                color: Colors.lightGreen,
              ),
              new Container(
                width: 180.0,
                color: Colors.red,
              ),
              new Container(
                width: 180.0,
                color: Colors.yellow,
              ),
            ],
    );
  }
}

/* 2 text基本组件介绍 */
// 1.对齐方式 
// textAlign: TextAlign.center
// 2.超出部分取消  最大显示几行
// maxLines
// 3.超出部分处理r
// overflow: TextOverflow.ellipsis 超出部分省略号显示
// overflow: TextOverflow.fade 渐变
// 4.字体样式
// style: TextStyle 
// fontSize 字体大小
// color: Color.fromARGB 颜色透明度和rgb设置
// decorationStyle:TextDecorationStyle.solid 下划线


/* 3 Container容器基本介绍 */
// 1.对齐模式
// alignment: Alignment.centerLeft  中间对齐
// 2.背景框设置
// width 宽
// height 高
// color: Colors.lightBlue 背景颜色 

// 3.内边距 padding 容器对于子元素的距离
//  padding: const EdgeInsets.all(10.0) 上下左右都是10
//  fromLTRB 左上右下
// 4.外边距 mangin 容器对于界面的距离
//  mangin: const EdgeInsets.all(10.0) 上下左右都是10
// 5.背景颜色渐变 decoration
// 6.border 边框
// border: Border.all(width: 2.0,color: Colors.yellow)



/* 4 image 图片组件 */
// 1.fit 容器与图片的关系  充满不充满
// fit.BoxFit.scaleDown 
// 2. colorBlendMode 混合色
// 需要一个颜色 以及混合色的样式 colorBlendMode: BlendMode.modulate
// 3. repeat 重复度


/* 5 list 列表组件介绍 */
// 1.纵向列表
//  new ListView(
    // children: <Widget>[];)
// 2.横向列表
// new ListView(
// scrollDirection: Axis.horizontal,
    // children: <Widget>[]) 

// 3.动态列表 较难 需要构造函数 等一些难点


/* 6 动态网格 */
// 1方式一
// 2方式二