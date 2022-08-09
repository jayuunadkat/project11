import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class fourth extends StatefulWidget {
  List temp;
  int index;

  fourth(this.temp, this.index);

  @override
  State<fourth> createState() => _fourthState();
}

class _fourthState extends State<fourth> {
  Color pickerColor = Color(0xff443a49);
  Color currentColor = Color(0xff443a49);
  Color pickerColor1 = Color(0xff443a49);
  Color currentColor1 = Color(0xff443a49);
  String sh = "shayari";
  var assigned_index = 0;
  var assigned_index_background = 0;
  var assigned_fonts_background = 4;
  var assigned_emojis_background = 0;
  double textsize = 20;
  List<FontWeight> fonts = [
    FontWeight.w100,
    FontWeight.w200,
    FontWeight.w300,
    FontWeight.w400,
    FontWeight.w500,
    FontWeight.w600,
    FontWeight.w700,
  ];
  List emojis = [
    "😀 😃 😄 😁 😆 😅 😂 ",
    "🤣 🥲 ☺ 😊 😇 🙂 🙃 ",
    "😉 😌 😍 🥰 😘 😗 😙 ",
    "😚 😋 😛 😝 😜 🤪 🤨 ",
    "😀 😄 😆 😂 😊 🙂 😉 ",
    "😀 😃 😁 😆 😅 🤣 😊 ",
    "😄 😁 😆 🥰 😘 😗 😙 ",
    "",
  ];
  List colors = [
    Colors.brown,
    Colors.brown,
    Colors.yellow,
    Colors.pink,
    Colors.purple,
    Colors.cyanAccent,
    Colors.orange,
    Colors.red,
    Colors.white,
    Colors.greenAccent,
    Colors.deepPurpleAccent,
    Colors.black,
    Colors.green,
    Colors.amber,
    Colors.limeAccent,
    Colors.tealAccent,
    Colors.blueGrey,
    Colors.lightGreen,
    Colors.deepPurple,
  ];

  Color bgcolor = Colors.tealAccent;
  Color bgcolor1 = Colors.deepPurple;
  List fontfamily = [
    "family1",
    "family2",
    "family3",
    "family4",
    "family5",
    "family6",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff89ad6d),
        title: Row(children: [
          Expanded(
              child: Container(
                child: Text(
                  "Love Shayari",
                  style: TextStyle(fontWeight: FontWeight.bold),
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
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  child: Text(
                    "${emojis[assigned_emojis_background]}\n${widget.temp[widget.index]}\n${emojis[assigned_emojis_background]}",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: bgcolor1,
                        fontSize: textsize,
                        fontFamily: fontfamily[assigned_fonts_background]),
                  ),
                  color: bgcolor,
                  margin: EdgeInsets.all(25),
                  alignment: Alignment.center,
                ),
              ),
            ),
          ),
          Container(
            child: Column(children: [
              Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          child: Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(left: 410),
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.zoom_out_map_outlined,
                                  size: 30,
                                  color: Color(0xffffffff),
                                )),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          child: Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(right: 410),
                            child: IconButton(
                                onPressed: () {
                                  setState(() {});
                                },
                                icon: Icon(
                                  Icons.sync_outlined,
                                  size: 30,
                                  color: Color(0xffffffff),
                                )),
                          ),
                        ),
                      ),
                    ],
                  )),
              Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            // isDismissible: false,
                              backgroundColor: Colors.tealAccent,
                              builder: (context) {
                                return Container(
                                  height: 133,
                                  color: Color(0xff807c7c),
                                  margin: EdgeInsets.all(10),
                                  child: GridView.builder(
                                    itemCount: colors.length,
                                    itemBuilder: (context, index) {
                                      if (index == 0) {
                                        return IconButton(
                                          onPressed: () {
                                            showDialog(
                                              builder: (context) {
                                                return AlertDialog(
                                                  title:
                                                  const Text('Pick a color!'),
                                                  content: SingleChildScrollView(
                                                    child: ColorPicker(
                                                      pickerColor: pickerColor,
                                                      onColorChanged: changeColor,
                                                    ),
                                                    // Use Material color picker:
                                                    //
                                                    // child: MaterialPicker(
                                                    //   pickerColor: pickerColor,
                                                    //   onColorChanged: changeColor,
                                                    //   showLabel: true, // only on portrait mode
                                                    // ),
                                                    //
                                                    // Use Block color picker:
                                                    //
                                                    // child: BlockPicker(
                                                    //   pickerColor: currentColor,
                                                    //   onColorChanged: changeColor,
                                                    // ),
                                                    //
                                                    // child: MultipleChoiceBlockPicker(
                                                    //   pickerColors: currentColors,
                                                    //   onColorsChanged: changeColors,
                                                    // ),
                                                  ),
                                                  actions: <Widget>[
                                                    ElevatedButton(
                                                      child: const Text('Got it'),
                                                      onPressed: () {
                                                        setState(() =>
                                                        currentColor =
                                                            pickerColor);
                                                        Navigator.of(context).pop();
                                                      },
                                                    ),
                                                  ],
                                                );
                                              },
                                              context: context,
                                            );
                                          },
                                          icon: Icon(
                                            Icons.colorize_outlined,
                                          ),
                                        );
                                      }
                                      return GridTile(
                                        child: InkWell(
                                          onTap: () {
                                            bgcolor = colors[index];
                                            // assigned_index_background = index;
                                            setState(() {});
                                          },
                                          child: Container(
                                            color: colors[index],
                                          ),
                                        ),
                                        header: Container(
                                          height: 5,
                                          color: Colors.black,
                                        ),
                                        footer: Container(
                                          height: 5,
                                          color: Colors.black,
                                        ),
                                      );
                                    },
                                    gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 6,
                                        childAspectRatio: 1,
                                        mainAxisSpacing: 10,
                                        crossAxisSpacing: 10),
                                  ),
                                );
                              },
                              context: context);
                        },
                        child: Container(
                          child: Text("Background",
                              style: TextStyle(color: Color(0xfffffffff))),
                          color: Color(0xffbf3434),
                          height: 30,
                          width: 100,
                          alignment: Alignment.center,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            // isDismissible: false,
                              backgroundColor: Colors.tealAccent,
                              builder: (context) {
                                return Container(
                                  height: 133,
                                  color: Color(0xff807c7c),
                                  margin: EdgeInsets.all(10),
                                  child: GridView.builder(
                                    itemCount: colors.length,
                                    itemBuilder: (context, index) {
                                      if (index == 0) {
                                        return IconButton(
                                          onPressed: () {
                                            showDialog(
                                              builder: (context) {
                                                return AlertDialog(
                                                  title:
                                                  const Text('Pick a color!'),
                                                  content: SingleChildScrollView(
                                                    child: ColorPicker(
                                                      pickerColor: pickerColor1,
                                                      onColorChanged: changeColor1,
                                                    ),
                                                  ),
                                                  actions: <Widget>[
                                                    ElevatedButton(
                                                      child: const Text('Got it'),
                                                      onPressed: () {
                                                        setState(() =>
                                                        currentColor1 =
                                                            pickerColor1);
                                                        Navigator.of(context).pop();
                                                      },
                                                    ),
                                                  ],
                                                );
                                              },
                                              context: context,
                                            );
                                          },
                                          icon: Icon(
                                            Icons.colorize_outlined,
                                          ),
                                        );
                                      }
                                      return GridTile(
                                        child: InkWell(
                                          onTap: () {
                                            bgcolor1= colors[index];
                                            setState(() {});
                                          },
                                          child: Container(
                                            color: colors[index],
                                            // height: 20,
                                          ),
                                        ),
                                        header: Container(
                                          height: 5,
                                          color: Colors.black,
                                        ),
                                        footer: Container(
                                          height: 5,
                                          color: Colors.black,
                                        ),
                                      );
                                    },
                                    gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 6,
                                        childAspectRatio: 1,
                                        mainAxisSpacing: 10,
                                        crossAxisSpacing: 10),
                                  ),
                                );
                              },
                              context: context);
                        },
                        child: Container(
                          child: Text("Text Colour",
                              style: TextStyle(color: Color(0xfffffffff))),
                          color: Color(0xffbf3434),
                          height: 30,
                          width: 100,
                          alignment: Alignment.center,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          child: Text("Share",
                              style: TextStyle(color: Color(0xfffffffff))),
                          color: Color(0xffbf3434),
                          height: 30,
                          width: 100,
                          alignment: Alignment.center,
                        ),
                      ),
                    ],
                  )),
              Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              builder: (context) {
                                return Container(
                                  height: 500,
                                  child: ListView.builder(
                                    itemCount: fontfamily.length,
                                    itemBuilder: (context, index) {
                                      return ListTile(
                                        onTap: () {
                                          assigned_fonts_background = index;
                                          setState(() {});
                                        },
                                        tileColor: Color(0xff241544),
                                        title: Text("Shayari",
                                            style: TextStyle(
                                                fontFamily: fontfamily[index],
                                                color: Colors.white)),
                                      );
                                    },
                                  ),
                                );
                              },
                              context: context);
                        },
                        child: Container(
                          child: Text("Font",
                              style: TextStyle(color: Color(0xfffffffff))),
                          color: Color(0xffbf3434),
                          height: 30,
                          width: 100,
                          alignment: Alignment.center,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              builder: (context) {
                                return Container(
                                  height: 125,
                                  child: ListView.builder(
                                    itemCount: emojis.length,
                                    itemBuilder: (context, index) {
                                      return ListTile(
                                        onTap: () {
                                          assigned_emojis_background = index;
                                          setState(() {});
                                        },
                                        tileColor: Color(0xff241544),
                                        title: Text(emojis[index]),
                                      );
                                    },
                                  ),
                                );
                              },
                              context: context);
                        },
                        child: Container(
                          child: Text("Emoji",
                              style: TextStyle(color: Color(0xfffffffff))),
                          color: Color(0xffbf3434),
                          height: 30,
                          width: 100,
                          alignment: Alignment.center,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              builder: (context) {
                                return Container(
                                  height: 125,
                                  child: StatefulBuilder(
                                    builder: (context, setState1) {
                                      return Slider(
                                        max: 50,
                                        min: 20,
                                        onChanged: (value) {
                                          // print(value);
                                          textsize = value;
                                          setState1(() {});
                                          setState(() {});
                                        },
                                        value: textsize,
                                      );
                                    },
                                  ),
                                );
                              },
                              context: context);
                        },
                        child: Container(
                          child: Text("Text Size",
                              style: TextStyle(color: Color(0xfffffffff))),
                          color: Color(0xffbf3434),
                          height: 30,
                          width: 100,
                          alignment: Alignment.center,
                        ),
                      ),
                    ],
                  )),
            ]),
            height: 133,
            color: Color(0xff181515),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    assigned_index = 7;
    assigned_index_background = 6;
    textsize = 20;
    assigned_fonts_background = 4;
    assigned_emojis_background = 1;
  }

  void changeColor(Color color) {
    setState(() {
      bgcolor = color;
    });
  }
  void changeColor1(Color color1) {
    setState(() {
      bgcolor1 = color1;
    });
  }


}
