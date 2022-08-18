import 'package:flutter/material.dart';
import 'package:flutterapp/ss/second_page.dart';
class SamplePage extends StatelessWidget {
  const SamplePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Line 1
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          "发布成功",
          style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
              fontWeight: FontWeight.normal),
        ),
        leading: IconButton(
            icon: Image.asset("assets/images/nav_close.png"),
            onPressed: () {
              Navigator.maybePop(context);
            }),
      ),

      /// Line 2-5
      body: const SamplePageContent(),
    );
  }
}

class SamplePageContent extends StatelessWidget {
  const SamplePageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 42.0),
      child: Column(
        children: <Widget>[
          /// Line 2
          Row(
            children: <Widget>[
              Container(
                width: 52.0,
                height: 52.0,
                margin: const EdgeInsets.only(left: 16.0),
                child: const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/avatar2.png"),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 7.0, right: 15.0),
                height: 48.0,
                child: Stack(
                  children: <Widget>[
                    Image.asset("assets/images/publish_chat_box.png"),
                    const Positioned(
                        left: 25.0,
                        top: 14.0,
                        child: Text(
                          "张老师发布了一个任务，请接收～",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                          ),
                        )),
                  ],
                ),
              )
            ],
          ),

          /// Line 3
          Container(
            margin: const EdgeInsets.fromLTRB(6.0, 24.0, 6.0, 30.0),
            child: RoundInnerSquareBox(
              child: Container(
                padding: const EdgeInsets.fromLTRB(24.0, 28.0, 24.0, 12.0),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      "Unit 1 Lesson 3 About animal",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: "Round",
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5.0, bottom: 13.0),
                      child: Image.asset(
                          "assets/images/publish_work_line.png"),
                    ),
                    Wrap(
                      alignment: WrapAlignment.start,
                      children: <Widget>[
                        WorkTotalItem(
                          title: "课文跟读 12",
                        ),
                        WorkTotalItem(
                          title: "课文跟读 12",
                        ),
                        WorkTotalItem(
                          title: "课文跟读 12",
                        ),
                        WorkTotalItem(
                          title: "课文跟读 12",
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 178.0),
                      child: Stack(
                        children: <Widget>[
                          Image.asset(
                              "assets/images/publish_work_sign.png"),
                          const Positioned(
                            left: 4.0,
                            top: 4.0,
                            child: Text(
                              "预习",
                              style: TextStyle(
                                  fontSize: 14.0, color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      child: const Text(
                        "明天12:00截止",
                        style: TextStyle(
                            fontSize: 12.0, color: Color(0xFFFFC1C1)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          /// Line 4
          LineTips(
            title: const Text(
              "给家长发个通知吧",
              style:
              TextStyle(fontSize: 14.0, color: Color(0xFF757085)),
            ),
          ),

          /// Line 5
          Container(
            margin: const EdgeInsets.only(top: 32.0),
            height: 60.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                    padding: EdgeInsets.zero,
                    iconSize: 60.0,
                    icon: Image.asset("assets/images/share_wechat.png"),
                    onPressed: () {
                      // print("share to wechat");
                    }),
                Container(
                  margin: const EdgeInsets.only(left: 32.0),
                  child: IconButton(
                      padding: EdgeInsets.zero,
                      iconSize: 60.0,
                      icon: Image.asset("assets/images/share_qq.png"),
                      onPressed: () {
                        // print("share to qq");
                        Navigator.push(context,MaterialPageRoute(builder: (context) => SecondPage(title: '222')));
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RoundInnerSquareBox extends StatelessWidget {
  static const double gap = 12.0;

  RoundInnerSquareBox({
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(16.0)),
      child: Container(
        color: const Color(0xFFF0D5A9),
        padding: const EdgeInsets.all(gap),
        child: Container(
          color: const Color(0xFF3C594E),
          child: child,
        ),
      ),
    );
  }
}

class LineTips extends StatelessWidget {
  static const defaultMargin = EdgeInsets.only(left: 15.0, right: 15.0);

  LineTips({
    required this.title,
    this.margin = defaultMargin,
  });

  final Widget title;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: defaultMargin,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(
                right: 10.0,
              ),
              color: const Color(0xFFD4CFE4),
              height: 1.0,
            ),
          ),
          title,
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(
                left: 10.0,
              ),
              color: const Color(0xFFD4CFE4),
              height: 1.0,
            ),
          ),
        ],
      ),
    );
  }
}

class WorkTotalItem extends StatelessWidget {
  WorkTotalItem({
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 14.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
