import 'package:flutter/material.dart';
import 'package:project11/third.dart';

class second extends StatefulWidget {
  int index1;

  second(this.index1);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  List temp = [];
  @override
  void initState() {
    super.initState();
    switch (widget.index1) {
      case 0:
        temp = sh0;
        break;
      case 1:
        temp = sh1;
        break;
      case 2:
        temp = sh2;
        break;
      case 3:
        temp = sh3;
        break;
      case 4:
        temp = sh4;
        break;
      case 5:
        temp = sh5;
        break;
      case 6:
        temp = sh6;
        break;
    }
  }

  List images = [
    "myimage/image1.png",
    "myimage/image2.jpg",
    "myimage/image3.png",
    "myimage/image4.jpg",
    "myimage/image5.png",
    "myimage/image6.png",
    "myimage/image7.jpg"
  ];

  List<String> sh0 = [
    """Tere Khayal Se Khud Ko Chhupa Ke Dekha Hai,
Dil-o-Najar Ko Rula-Rula Ke Dekha Hai,
Tu Nahi To Kuchh Bhi Nahi Hai Teri Kasam,
Maine Kuchh Pal Tujhe Bhula Ke Dekha Hai.""",
    """Hum Aapki Har Cheez Se Pyar Kar Lenge,
Aapki Har Baat Par Aitbaar Kar Lenge,
Bas Ek Bar Keh Do Ki Tum Sirf Mere Ho,
Hum Zindagi Bhar AapKa Intezaar Kar Lenge.""",
    """Agar Ishq Karo To Aadaab-e-Wafa Bhi Seekho,
Yeh Chand Din Ki Bekaraari Mohabbat Nahin Hoti.""",
    """Duniya Ke Sitam Yaad Na Apni Hi Wafa Yaad,
Ab Mujhko Nahi Kuchh Bhi Mohabbat Ke Siwa Yaad.""",
    """Jadoo Woh Lafz Lafz Se Karta Chala Gaya,
Meetha Nashtar Tha Dil Mein Utarta Chala Gaya.""",
    """Maine Jaan Bacha Ke Rakhi Hai Apni Jaan Ke Liye,
Itna Pyar Kaise Ho Gaya Ek Anjaan Ke Liye."""
        """Kabhi Lafz Bhool Jaaun Kabhi Baat Bhool Jaaun,
Tujhe Iss Kadar Chahun Ki Apni Jaat Bhool Jaaun,
Kabhi Uthh Ke Tere Paas Se Jo Main Chal Dun,
Jaate Huye Khud Ko Tere Paas Bhool Jaaun.""",
    """Meri Baahon Mein Bahekne Ki Saza Bhi Sun Le,
Ab Bahut Der Mein Aazad Karunga Tujhko.""",
    """Tum Mil Gaye To Mujh Se Naraj Hai Khuda,
Kahta Hai Ke Tu Ab Kuchh Mangta Nahi Hai.""",
    """Meri Baahon Mein Bahekne Ki Saza Bhi Sun Le,
Ab Bahut Der Mein Aazad Karunga Tujhko.""",
    """Meri Baahon Mein Bahekne Ki Saza Bhi Sun Le,
Ab Bahut Der Mein Aazad Karunga Tujhko.""",
    """Tum Mil Gaye To Mujh Se Naraj Hai Khuda,
Kahta Hai Ke Tu Ab Kuchh Mangta Nahi Hai.""",
    """Meri Baahon Mein Bahekne Ki Saza Bhi Sun Le,
Ab Bahut Der Mein Aazad Karunga Tujhko."""
  ];
  List<String> sh1 = [
    """Har Tanha Raat Mein Ek Naam Yaad Aata Hai,
Kabhi Subhah To Kabhi Shaam Yaad Aata Hai,
Jab Sochte Hain Kar Lein Dobara Mohabbat,
Fir Pehli Mohabbat Ka Anzaam Yaad Aata Hai.""",
    """Wo Tere Khat Teri Tasvir Aur Sookhe Phool,
Bahut Udaas Karti Hain Mujhko Nishaniyan Teri.""",
    """Ab Na Kholo Mere Ghar Ke Udaas Darwaze,
Hawa Ka Shor Meri Uljhanein Bada Deta Hai.""",
    """Wo Tere Khat Teri Tasvir Aur Sookhe Phool,
Bahut Udaas Karti Hain Mujhko Nishaniyan Teri.""",
    """Ab Na Kholo Mere Ghar Ke Udaas Darwaze,
Hawa Ka Shor Meri Uljhanein Bada Deta Hai.""",
    """Bichhad Ke Mujhse Tum Apni Kashish Na Kho Dena,
Udaas Rehne Se Chehra Kharab Hota Hai."""
  ];

  List<String> sh2 = [
    """Iss Se Zyada Tujhe Aur Kitna Qareeb Laaun Main,
Ki Tujhe Dil Mein Rakh Kar Bhi Mera Dil Nahi Bharta.""",
    """Haqikat Na Sahi Tum Khwab Bankar Mila Karo,
Bhatke Musafir Ko Chaandani Raat Bankar Mila Karo.""",
    """Kabhi Lafz Bhool Jaaun Kabhi Baat Bhool Jaaun,
Tujhe Iss Kadar Chahun Ki Apni Jaat Bhool Jaaun,
Kabhi Uthh Ke Tere Paas Se Jo Main Chal Dun,
Jaate Huye Khud Ko Tere Paas Bhool Jaaun.""",
    """Meri Baahon Mein Bahekne Ki Saza Bhi Sun Le,
Ab Bahut Der Mein Aazad Karunga Tujhko.""",
    """Tum Mil Gaye To Mujh Se Naraj Hai Khuda,
Kahta Hai Ke Tu Ab Kuchh Mangta Nahi Hai.""",
    """Meri Baahon Mein Bahekne Ki Saza Bhi Sun Le,
Ab Bahut Der Mein Aazad Karunga Tujhko."""
  ];

  List<String> sh3 = [
    """Tere Khayal Se Khud Ko Chhupa Ke Dekha Hai,
Dil-o-Najar Ko Rula-Rula Ke Dekha Hai,
Tu Nahi To Kuchh Bhi Nahi Hai Teri Kasam,
Maine Kuchh Pal Tujhe Bhula Ke Dekha Hai.""",
    """Hum Aapki Har Cheez Se Pyar Kar Lenge,
Aapki Har Baat Par Aitbaar Kar Lenge,
Bas Ek Bar Keh Do Ki Tum Sirf Mere Ho,
Hum Zindagi Bhar AapKa Intezaar Kar Lenge.""",
    """Agar Ishq Karo To Aadaab-e-Wafa Bhi Seekho,
Yeh Chand Din Ki Bekaraari Mohabbat Nahin Hoti.""",
    """Duniya Ke Sitam Yaad Na Apni Hi Wafa Yaad,
Ab Mujhko Nahi Kuchh Bhi Mohabbat Ke Siwa Yaad.""",
    """Jadoo Woh Lafz Lafz Se Karta Chala Gaya,
Meetha Nashtar Tha Dil Mein Utarta Chala Gaya.""",
    """Maine Jaan Bacha Ke Rakhi Hai Apni Jaan Ke Liye,
Itna Pyar Kaise Ho Gaya Ek Anjaan Ke Liye."""
  ];
  List<String> sh4 = [
    """Har Tanha Raat Mein Ek Naam Yaad Aata Hai,
Kabhi Subhah To Kabhi Shaam Yaad Aata Hai,
Jab Sochte Hain Kar Lein Dobara Mohabbat,
Fir Pehli Mohabbat Ka Anzaam Yaad Aata Hai.""",
    """Wo Tere Khat Teri Tasvir Aur Sookhe Phool,
Bahut Udaas Karti Hain Mujhko Nishaniyan Teri.""",
    """Ab Na Kholo Mere Ghar Ke Udaas Darwaze,
Hawa Ka Shor Meri Uljhanein Bada Deta Hai.""",
    """Wo Tere Khat Teri Tasvir Aur Sookhe Phool,
Bahut Udaas Karti Hain Mujhko Nishaniyan Teri.""",
    """Ab Na Kholo Mere Ghar Ke Udaas Darwaze,
Hawa Ka Shor Meri Uljhanein Bada Deta Hai.""",
    """Bichhad Ke Mujhse Tum Apni Kashish Na Kho Dena,
Udaas Rehne Se Chehra Kharab Hota Hai."""
  ];

  List<String> sh5 = [
    """Iss Se Zyada Tujhe Aur Kitna Qareeb Laaun Main,
Ki Tujhe Dil Mein Rakh Kar Bhi Mera Dil Nahi Bharta.""",
    """Haqikat Na Sahi Tum Khwab Bankar Mila Karo,
Bhatke Musafir Ko Chaandani Raat Bankar Mila Karo.""",
    """Kabhi Lafz Bhool Jaaun Kabhi Baat Bhool Jaaun,
Tujhe Iss Kadar Chahun Ki Apni Jaat Bhool Jaaun,
Kabhi Uthh Ke Tere Paas Se Jo Main Chal Dun,
Jaate Huye Khud Ko Tere Paas Bhool Jaaun.""",
    """Meri Baahon Mein Bahekne Ki Saza Bhi Sun Le,
Ab Bahut Der Mein Aazad Karunga Tujhko.""",
    """Tum Mil Gaye To Mujh Se Naraj Hai Khuda,
Kahta Hai Ke Tu Ab Kuchh Mangta Nahi Hai.""",
    """Meri Baahon Mein Bahekne Ki Saza Bhi Sun Le,
Ab Bahut Der Mein Aazad Karunga Tujhko."""
  ];

  List<String> sh6 = [
    """Har Tanha Raat Mein Ek Naam Yaad Aata Hai,
Kabhi Subhah To Kabhi Shaam Yaad Aata Hai,
Jab Sochte Hain Kar Lein Dobara Mohabbat,
Fir Pehli Mohabbat Ka Anzaam Yaad Aata Hai.""",
    """Wo Tere Khat Teri Tasvir Aur Sookhe Phool,
Bahut Udaas Karti Hain Mujhko Nishaniyan Teri.""",
    """Ab Na Kholo Mere Ghar Ke Udaas Darwaze,
Hawa Ka Shor Meri Uljhanein Bada Deta Hai.""",
    """Wo Tere Khat Teri Tasvir Aur Sookhe Phool,
Bahut Udaas Karti Hain Mujhko Nishaniyan Teri.""",
    """Ab Na Kholo Mere Ghar Ke Udaas Darwaze,
Hawa Ka Shor Meri Uljhanein Bada Deta Hai.""",
    """Bichhad Ke Mujhse Tum Apni Kashish Na Kho Dena,
Udaas Rehne Se Chehra Kharab Hota Hai."""
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
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return Container(
            height: 6,
          );
        },
        itemCount: temp.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return third(temp,index);
              },));
            },
            tileColor: Color(0xffe52dd4),
            leading: Image.asset(
              images[widget.index1],
              width: 35,
              height: 35,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Color(0xffffffff),
            ),
            title: Text(
              temp[index],
              maxLines: 2,
              style: TextStyle(color: Color(0xffffffff)),
            ),
          );
        },
      ),
    );
  }
}
