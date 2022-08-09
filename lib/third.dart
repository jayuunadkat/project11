import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project11/fourth.dart';
import 'package:share_plus/share_plus.dart';

class third extends StatefulWidget {
  List temp;
  int index1;

  third(this.temp, this.index1);

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff89ad6d),
        title: Row(children: [
          Expanded(
              child: Container(
                child: Text(
                  "Love Shayari", /*style: TextStyle(fontWeight:FontWeight.bold)*/
                ),
                margin: EdgeInsets.only(left: 50),
              )),
          Container(
            child: IconButton(onPressed: () {}, icon: Icon(Icons.share)),
          ),
          Container(
            child: IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          )
        ]),
      ),
      body: Column(children: [
        Container(
          height: 60,
          color: Color(0xffffffff),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.zoom_out_map_outlined,
                      )),
                ),
              ),
              Expanded(
                child: Container(
                    child: Text(
                      "${widget.index1 + 1}/${widget.temp.length}",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30),
                    )),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                      onPressed: () {
                        setState(() {});
                      },
                      icon: Icon(
                        Icons.sync_outlined,
                      )),
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: PageView.builder(
              controller: pageController,
              onPageChanged: (value) {
                print(value);
                widget.index1 = value;
                setState(() {});
              },
              itemCount: widget.temp.length,
              itemBuilder: (context, index) {
                return Container(
                  color: Color(0xffe52dd4),
                  width: double.infinity,
                  child: Text(widget.temp[widget.index1],
                      style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                  alignment: Alignment.center,
                );
              },
            )),
        Container(
            color: Color(0xff89ad6d),
            height: 60,
            child: Row(
              children: [
                Expanded(
                  child: IconButton(
                    onPressed: () {
                      FlutterClipboard.copy("${widget.temp[widget.index1]}")
                          .then(
                            (value) => Fluttertoast.showToast(
                            msg: "Copied!!",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0),
                      );
                    },
                    icon: Icon(
                      Icons.content_copy_outlined,
                    ),
                    color: Color(0xffffffff),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {
                      if (widget.index1 > 0) {
                        widget.index1 = widget.index1 - 1;
                        pageController.jumpToPage(widget.index1);
                      } else if (widget.index1 == 0) {
                        widget.index1 = widget.temp.length - 1;
                        pageController.jumpToPage(widget.index1);
                      }
                      setState(() {});
                    },
                    icon: Icon(Icons.arrow_back_ios),
                    color: Color(0xffffffff),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return fourth(widget.temp, widget.index1);
                        },
                      ));
                    },
                    icon: Icon(Icons.edit),
                    color: Color(0xffffffff),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {
                      if (widget.index1 < widget.temp.length - 1) {
                        widget.index1 = widget.index1 + 1;
                        pageController.jumpToPage(widget.index1);
                      } else if (widget.index1 == widget.temp.length - 1) {
                        widget.index1 = 0;
                        pageController.jumpToPage(widget.index1);
                      }
                      setState(() {});
                    },
                    icon: Icon(Icons.arrow_forward_ios),
                    color: Color(0xffffffff),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {
                      Share.share('check out my website https://example.com',
                          subject: "${widget.temp[widget.index1]}");
                    },
                    icon: Icon(Icons.share),
                    color: Color(0xffffffff),
                  ),
                ),
              ],
            )),
      ]),
    );
  }

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: widget.index1);
  }
}
