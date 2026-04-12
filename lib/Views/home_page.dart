import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;
    bool _isMObile = _screenWidth<800;
    return SafeArea(child: Scaffold(backgroundColor: Colors.transparent,
      body: _isMObile?Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Container(
              height: 400,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(image:AssetImage('assets/images/Persion_Image.png'),fit: BoxFit.cover)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 140,),
                        child: Text('HI THERE!',style: TextStyle(fontSize: 12),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Text('IM',style: TextStyle(fontSize: 14),),
                            ),
                            SizedBox(width: 5,),
                            Text('ARUNKUMAR',style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: Container(
                          height: 36,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Color(0xffdacd98),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(child: Text('Flutter Developer',style: TextStyle(color: Colors.white,fontSize: 16),)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                  onTap: ()=>_launchWhatsApp(),
                                  child: SvgPicture.asset('assets/icons/whatsapp.svg',color: Colors.green,)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                  onTap: ()=>openLink(type: 'mailto', Value: 'marunkumar886@gmail.com'),
                                  child: SvgPicture.asset('assets/icons/mail.svg',color: Colors.red,)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                  onTap: ()=>linkUrl('Https://www.instagram.com/arxn_z16?igsh=MXA0eTl1b3F4YTM5eQ=='),
                                  child: SvgPicture.asset('assets/icons/instagram.svg',color: Colors.pinkAccent,)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                  onTap: ()=>linkUrl('www.linkedin.com/in/arunkumar-software-developer'),
                                  child: SvgPicture.asset('assets/icons/linkedin.svg',color: Colors.blueAccent,)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                  onTap: ()=>linkUrl('https://github.com/Arunkumar517'),
                                  child: SvgPicture.asset('assets/icons/github.svg',color: Colors.black,)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
          ),

        ],
      ):

      Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 500,top: 190),
                child: Text('HI THERE!',style: TextStyle(fontSize: 40),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 38),
                      child: Text('IM',style: TextStyle(fontSize: 48),),
                    ),
                    SizedBox(width: 10,),
                    Text('ARUNKUMAR',style:TextStyle(fontSize: 96,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: Container(
                  height: 66,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Color(0xffdacd98),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(child: Text('Flutter Developer',style: TextStyle(color: Colors.white,fontSize: 36),)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 150,top: 20),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                          onTap: ()=>_launchWhatsApp(),
                          child: SvgPicture.asset('assets/icons/whatsapp.svg',color: Colors.green,)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                          onTap: ()=>openLink(type: 'email', Value: 'marunkumar886@gmail.com'),
                          child: SvgPicture.asset('assets/icons/mail.svg',color: Colors.red,)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                          onTap: ()=>linkUrl('Https://www.instagram.com/arxn_z16?igsh=MXA0eTl1b3F4YTM5eQ=='),
                          child: SvgPicture.asset('assets/icons/instagram.svg',color: Colors.pinkAccent,)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                          onTap: ()=>linkUrl('www.linkedin.com/in/arunkumar-software-developer'),
                          child: SvgPicture.asset('assets/icons/linkedin.svg',color: Colors.blueAccent,)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                          onTap: ()=>linkUrl('https://github.com/Arunkumar517'),
                          child: SvgPicture.asset('assets/icons/github.svg',color: Colors.black,)),
                    ),
                  ],
                ),
              ),

            ],
          ),
          Container(
            height: 700,
            width: 500,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(image:AssetImage('assets/images/Persion_Image.png'),fit: BoxFit.cover)),
          ),
        ],
      ),
    ));
  }
}

Future<void> linkUrl(String Url) async {
  final Uri url =Uri.parse(Url);
  if(!await launchUrl(url, mode: LaunchMode.externalApplication)){
    throw Exception('Could not launch $url');
  }
}

Future<void>openLink({required String type,required String Value})async{
  String prefix='';
  if(type=='phone')prefix='tel:';
  if(type=='email')prefix='mailto:';

  final Uri url=Uri.parse('$prefix$Value');
  if(!await launchUrl(url)){
    throw Exception('Could not launch $url');
  }
}


Future<void> _launchWhatsApp() async {
  // 1. Number-a international format-la kudunga (Without + or 00)
  // Example: 91 is India code, apparam unga 10 digit number
  String phoneNumber = "919150366145";
  String message = "";

  // 2. URL-a construct pannunga (Message-la space iruntha athai encode pannanum)
  var whatsappUrl = "https://wa.me/$phoneNumber?text=${Uri.encodeComponent(message)}";

  final Uri uri = Uri.parse(whatsappUrl);

  try {
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      // WhatsApp install panlana browser-la open aagum
      throw 'Could not launch $whatsappUrl';
    }
  } catch (e) {
    debugPrint("Error: $e");
  }
}