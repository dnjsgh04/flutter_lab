import 'package:flutter/material.dart';

void main() {
  //앱의 메인페이지를 매개변수로 넣어주기
  runApp(const MyApp());
  //이곳에 바로 만드는 것도 가능 -- 시작페이지
}


//stless
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( // 위젯임 매터리얼 에서 구글에서 제공
      //cupertino는 아이폰
      // 커스텀마이징 하고싶을때도 매터리얼로
      //앱 디자인 넣는법
      //위젯을 바탕으로 디자인 하기


      home: Scaffold( //3단 레이아웃 만드는법 // 다른 홈 알아보기
      appBar: AppBar(
        title: Text("Hello World"),
        leading: IconButton(onPressed: (){},
            icon : Icon(Icons.star)),
        actions: [Icon(Icons.search),Icon(Icons.menu), Icon(Icons.add_alert_sharp)],

      ),
        body: SizedBox(
          child: Flexible(flex: 5, child: Container(
            decoration: BoxDecoration(border: Border.all(color:Colors.black), ),
            margin: EdgeInsets.all(10),
            height: 150,
            padding: EdgeInsets.all(10),

            child: Row(
              children: [
                Image.asset('assets/증명사진.jpg',width: 150,),
                Flexible(
                    flex: 100,
                    child: Container (

                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("박원호" ,style: TextStyle(fontWeight: FontWeight.w900),),
                      Text("스마트인재개발원" ),
                      Text("선임연구원"),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(onPressed: (){}, child: Text("안녕"), style: ButtonStyle(alignment: Alignment.topLeft),),
                          Icon(Icons.favorite),
                          Text("4")
                        ],
                      )],
                  ),

                )
                ),
              ],
            ),
          ),
          ),
        ),

        bottomNavigationBar: BottomAppBar(
          child: SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.phone),
                Icon(Icons.message),
                Icon(Icons.contact_page),
              ],
            ),
          ),
        ),
      )


    );
  }
}

