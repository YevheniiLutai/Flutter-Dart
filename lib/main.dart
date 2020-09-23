import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.blueGrey
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('First demo Flutter app by Lutai Yevhenii TI-71'),
        ),
        body: NewsBox('Lutai Yevhenii TI-71', '''Hello, it is my first Flutter app.
         by Lutai Yevhenii TI-71''',
          imageurl: 'image/50-05.jpg', num: 1),
      ),
    );
  }
}
 class NewsBoxLike extends StatefulWidget {
  final int _num;
  final bool _like;

  NewsBoxLike(this._num, this._like);

  @override
   createState() => new NewsBoxLikeState(_num, _like);
}

class NewsBoxLikeState extends State<NewsBoxLike> {
  int num;
  bool like;

  NewsBoxLikeState(this.num, this.like);

  void pressButton(){
    setState(() {
      like = false;

      if(like = true) num++;
      else num--;
    });
  }

  @override
  Widget build(BuildContext context) {
   return Column(
     children: [
       Text('Like $num', textAlign: TextAlign.center),
       IconButton(
         icon: Icon(like ? Icons.favorite : Icons.favorite_border, size: 35.0, color:
         Colors.deepOrange),
         onPressed: pressButton,
       )
     ],
   );
  }
}

class NewsBox extends StatelessWidget{
  final String _title;
  final String _text;
  String _imageurl;
  int _num;
  bool _like;

  NewsBox(this._title, this._text, {String imageurl, int num = 0, bool like = false})
  {
    _imageurl = imageurl;
    _num = num;
    _like = like;
  }

  @override
  Widget build(BuildContext context) {
   if (_imageurl != null && _imageurl != '') return Container(
     color:  Colors.blueGrey,
     height: 150.0,
     child: Row(children: [
       Image.asset(_imageurl, width: 120.0, height: 140.0, fit: BoxFit.cover),
       Expanded(child: Container(padding: EdgeInsets.all(8.0), child: Column(children: [
         Text(_title,  style: TextStyle(fontSize: 26.0), overflow: TextOverflow.ellipsis),
         Expanded(child: Text(_text, softWrap: true,  style: TextStyle(fontSize: 17.0), textAlign: TextAlign.justify,))
       ]
       ))
       ), NewsBoxLike(_num, _like)
     ],),
   );
   else return Container(
       color: Colors.amber,
       height: 150.0,
       child:  Row(children: [
         Expanded(child: Container(padding: EdgeInsets.all(5.0), child: Column(children: [
           Text(_title, style: TextStyle(fontSize: 23.0),overflow: TextOverflow.ellipsis),
           Expanded(child: Text(_text, softWrap: true, textAlign: TextAlign.justify,))
         ]
         ))
         ),  NewsBoxLike(_num, _like)
       ])
   );

  }
}


