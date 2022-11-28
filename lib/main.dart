import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'tweet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Twitter",
      theme: ThemeData(
        primaryColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Twitter(),
    );
  }
}

class Twitter extends StatefulWidget {
  const Twitter({super.key});

  @override
  State<Twitter> createState() => _TwitterState();
}

class _TwitterState extends State<Twitter> {
  var tweetList = [];
  var range = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  var count = 0;
  var tweetList_pr = [
    Tweet(
      state: true,
      time: "2h",
      name: '@aekkie',
      avatar_url:
          'https://scontent.fbkk8-4.fna.fbcdn.net/v/t39.30808-6/315999172_5388981954562668_4418200945432957903_n.jpg?stp=cp6_dst-jpg&_nc_cat=100&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=vrOxk48QL6QAX_Arcvq&tn=lhqxJpacp84_G0aj&_nc_ht=scontent.fbkk8-4.fna&oh=00_AfB0H5pNCmYdrg6tmihZvJz78GHe1vYKB6F2VrYf8At6rA&oe=638913A1',
      postText: ' สวัสดีครับ! ชื่อ นายชนะชัย แสงอ่อน 1620902500 ',
      avatar_pro:
          'https://scontent.fbkk8-4.fna.fbcdn.net/v/t39.30808-6/315999172_5388981954562668_4418200945432957903_n.jpg?stp=cp6_dst-jpg&_nc_cat=100&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=vrOxk48QL6QAX_Arcvq&tn=lhqxJpacp84_G0aj&_nc_ht=scontent.fbkk8-4.fna&oh=00_AfB0H5pNCmYdrg6tmihZvJz78GHe1vYKB6F2VrYf8At6rA&oe=638913A1',
    ),
    Tweet(
      state: true,
      time: "1h",
      name: '@aekkie',
      avatar_url:
          'https://scontent.fbkk12-3.fna.fbcdn.net/v/t1.6435-9/140949396_3416812445112972_1869498359217654280_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=-t5ud_2KtDYAX_0UZ_-&_nc_ht=scontent.fbkk12-3.fna&oh=00_AfDb-z9qQe90a1FWE26FjPOaOTEH_qBkLdiBnIleLdvhqw&oe=63ABDE36',
      postText: 'Check in Nimman one',
      avatar_pro:
          'https://scontent.fbkk8-4.fna.fbcdn.net/v/t39.30808-6/315999172_5388981954562668_4418200945432957903_n.jpg?stp=cp6_dst-jpg&_nc_cat=100&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=vrOxk48QL6QAX_Arcvq&tn=lhqxJpacp84_G0aj&_nc_ht=scontent.fbkk8-4.fna&oh=00_AfB0H5pNCmYdrg6tmihZvJz78GHe1vYKB6F2VrYf8At6rA&oe=638913A1',
    ),
    Tweet(
      state: false,
      time: "1h",
      name: '@aekkie',
      avatar_url: '',
      postText: 'ผมกำลังจะได้ไปเรียนที่ประเทศจีน',
      avatar_pro:
          'https://scontent.fbkk8-4.fna.fbcdn.net/v/t39.30808-6/315999172_5388981954562668_4418200945432957903_n.jpg?stp=cp6_dst-jpg&_nc_cat=100&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=vrOxk48QL6QAX_Arcvq&tn=lhqxJpacp84_G0aj&_nc_ht=scontent.fbkk8-4.fna&oh=00_AfB0H5pNCmYdrg6tmihZvJz78GHe1vYKB6F2VrYf8At6rA&oe=638913A1',
    ),
    Tweet(
      state: true,
      time: "58m",
      name: '@aekkie',
      avatar_url:
          'https://scontent.fbkk8-3.fna.fbcdn.net/v/t1.18169-9/14718600_975957272531847_8153518065510793434_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=90vUX95LzmIAX_VysH-&_nc_ht=scontent.fbkk8-3.fna&oh=00_AfCGjaqBhGK4TIjH4LVwLCis7XSASUwALnllsIBZ7o3qoA&oe=63ABC8D0',
      postText: 'วันนี้เป็นวันแรกที่ได้เรียนที่ประเทศจีน!',
      avatar_pro:
          'https://scontent.fbkk8-4.fna.fbcdn.net/v/t39.30808-6/315999172_5388981954562668_4418200945432957903_n.jpg?stp=cp6_dst-jpg&_nc_cat=100&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=vrOxk48QL6QAX_Arcvq&tn=lhqxJpacp84_G0aj&_nc_ht=scontent.fbkk8-4.fna&oh=00_AfB0H5pNCmYdrg6tmihZvJz78GHe1vYKB6F2VrYf8At6rA&oe=638913A1',
    ),
    Tweet(
      state: true,
      time: "40m",
      name: '@aekkie',
      avatar_url:
          'https://scontent.fbkk12-1.fna.fbcdn.net/v/t1.18169-9/15727094_1046356682158572_7132620231372299182_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=R6UfqUBdgiUAX_jlwXJ&tn=lhqxJpacp84_G0aj&_nc_ht=scontent.fbkk12-1.fna&oh=00_AfDroRC1B0m0SoaR0HGrLdQ9eNH4H4ao_BvwHexLh_ECLg&oe=63ABCE08',
      postText: 'แล้วมันก็ได้ผ่านไปอีกวัน',
      avatar_pro:
          'https://scontent.fbkk8-4.fna.fbcdn.net/v/t39.30808-6/315999172_5388981954562668_4418200945432957903_n.jpg?stp=cp6_dst-jpg&_nc_cat=100&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=vrOxk48QL6QAX_Arcvq&tn=lhqxJpacp84_G0aj&_nc_ht=scontent.fbkk8-4.fna&oh=00_AfB0H5pNCmYdrg6tmihZvJz78GHe1vYKB6F2VrYf8At6rA&oe=638913A1',
    ),
    Tweet(
      state: true,
      time: "30m",
      name: '@aekkie',
      avatar_url:
          'https://scontent.fbkk12-5.fna.fbcdn.net/v/t39.30808-6/317254148_5389011427893054_3216283489208905980_n.jpg?stp=cp6_dst-jpg&_nc_cat=105&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=KwKhkVQs-4EAX8YmojS&_nc_oc=AQlMNl0xn9dux_OjMtYLa9Nqs3s5SFyVQVu6MYgFRw2Lxr7JwUgaMU0438nKKPijAHSrar3QTWZIuNdV6-bPxOAC&_nc_ht=scontent.fbkk12-5.fna&oh=00_AfCCn6sGivs9fJy2b1d7fHLsSrJxBQIibiXBpxvoS0xgmA&oe=63887B7E',
      postText: 'วันนี้เดินที่กำแพงเมืองจีนเหนื่อยมากๆๆๆ',
      avatar_pro:
          'https://scontent.fbkk8-4.fna.fbcdn.net/v/t39.30808-6/315999172_5388981954562668_4418200945432957903_n.jpg?stp=cp6_dst-jpg&_nc_cat=100&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=vrOxk48QL6QAX_Arcvq&tn=lhqxJpacp84_G0aj&_nc_ht=scontent.fbkk8-4.fna&oh=00_AfB0H5pNCmYdrg6tmihZvJz78GHe1vYKB6F2VrYf8At6rA&oe=638913A1',
    ),
    Tweet(
      state: false,
      time: "20m",
      name: '@aekkie',
      avatar_url: '',
      postText: 'ใกล้ถึงเวลากลับประเทศไทยแล้ว!',
      avatar_pro:
          'https://scontent.fbkk8-4.fna.fbcdn.net/v/t39.30808-6/315999172_5388981954562668_4418200945432957903_n.jpg?stp=cp6_dst-jpg&_nc_cat=100&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=vrOxk48QL6QAX_Arcvq&tn=lhqxJpacp84_G0aj&_nc_ht=scontent.fbkk8-4.fna&oh=00_AfB0H5pNCmYdrg6tmihZvJz78GHe1vYKB6F2VrYf8At6rA&oe=638913A1',
    ),
    Tweet(
      state: true,
      time: "10m",
      name: '@aekkie',
      avatar_url:
          'https://scontent.fbkk8-2.fna.fbcdn.net/v/t39.30808-6/316945125_5388981944562669_8456315027510528988_n.jpg?stp=cp6_dst-jpg&_nc_cat=107&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=BDW0owf3uRQAX8PE-yX&tn=lhqxJpacp84_G0aj&_nc_ht=scontent.fbkk8-2.fna&oh=00_AfB8AZkzNXInmmpzf6VjpJsn2GiP_t5bIbB0ZLhlaOHPRA&oe=6388AA54',
      postText:
          'แล้วก็ถึงวันสำเร็จการศึกษาสักที เลยได้ถ่ายรูปเก็บไว้เป็นที่ระลึก',
      avatar_pro:
          'https://scontent.fbkk8-4.fna.fbcdn.net/v/t39.30808-6/315999172_5388981954562668_4418200945432957903_n.jpg?stp=cp6_dst-jpg&_nc_cat=100&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=vrOxk48QL6QAX_Arcvq&tn=lhqxJpacp84_G0aj&_nc_ht=scontent.fbkk8-4.fna&oh=00_AfB0H5pNCmYdrg6tmihZvJz78GHe1vYKB6F2VrYf8At6rA&oe=638913A1',
    ),
    Tweet(
      state: false,
      time: "5m",
      name: '@aekkie',
      avatar_url: '',
      postText: 'คงไม่ได้เจอกันง่ายๆ แล้วสินะ',
      avatar_pro:
          'https://scontent.fbkk8-4.fna.fbcdn.net/v/t39.30808-6/315999172_5388981954562668_4418200945432957903_n.jpg?stp=cp6_dst-jpg&_nc_cat=100&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=vrOxk48QL6QAX_Arcvq&tn=lhqxJpacp84_G0aj&_nc_ht=scontent.fbkk8-4.fna&oh=00_AfB0H5pNCmYdrg6tmihZvJz78GHe1vYKB6F2VrYf8At6rA&oe=638913A1',
    ),
    Tweet(
      state: false,
      time: "0s",
      name: '@aekkie',
      avatar_url: '',
      postText: 'แยกย้ายกันไปเติบโต',
      avatar_pro:
          'https://scontent.fbkk8-4.fna.fbcdn.net/v/t39.30808-6/315999172_5388981954562668_4418200945432957903_n.jpg?stp=cp6_dst-jpg&_nc_cat=100&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=vrOxk48QL6QAX_Arcvq&tn=lhqxJpacp84_G0aj&_nc_ht=scontent.fbkk8-4.fna&oh=00_AfB0H5pNCmYdrg6tmihZvJz78GHe1vYKB6F2VrYf8At6rA&oe=638913A1',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          // ignore: prefer_const_constructors
          margin: const EdgeInsets.all(10.0),
          // ignore: prefer_const_constructors
          child: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://scontent.fbkk8-4.fna.fbcdn.net/v/t39.30808-6/315999172_5388981954562668_4418200945432957903_n.jpg?stp=cp6_dst-jpg&_nc_cat=100&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=vrOxk48QL6QAX_Arcvq&tn=lhqxJpacp84_G0aj&_nc_ht=scontent.fbkk8-4.fna&oh=00_AfB0H5pNCmYdrg6tmihZvJz78GHe1vYKB6F2VrYf8At6rA&oe=638913A1'),
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        // ignore: prefer_const_constructors
        title: Text(
          "Home",
          // ignore: prefer_const_constructors
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildIconButton(Icons.home, Colors.blue),
            buildIconButton(Icons.search_outlined, Colors.grey),
            buildIconButton(Icons.notifications_outlined, Colors.grey),
            buildIconButton(Icons.email_outlined, Colors.grey),
          ],
        ),
      ),
      body: listofTweet(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(FontAwesomeIcons.plus),
        onPressed: () {
          setState(() {
            if (count == 9) {
              tweetList.insert(0, tweetList_pr[9]);
            } else {
              tweetList.insert(0, tweetList_pr[count]);
              count++;
            }
          });
        },
      ),
    );
  }

  Widget listofTweet() {
    return Container(
        color: Colors.white,
        child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return tweetList[index];
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(
                  height: 10,
                ),
            itemCount: tweetList.length));
  }

  Widget buildIconButton(IconData icon, Color color) {
    return IconButton(
      icon: Icon(
        icon,
        color: color,
      ),
      onPressed: () {},
    );
  }
}
