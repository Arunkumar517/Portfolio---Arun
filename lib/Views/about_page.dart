import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;
    bool _isMObile = _screenWidth<800;
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Center(
          child: _isMObile?Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40,bottom: 5),
                child: Text('ABOUT',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Text('''I am a Junior App Developer with a strong foundation in Flutter and Dart, focused on building efficient and scalable cross-platform applications. I completed a 6-month internship at Sumisa Technologies, where I gained practical experience in developing and implementing scalable features, including a marketing module.

During my internship, I worked on real-time state management using Riverpod, improving application performance and ensuring smooth user interactions. I am passionate about writing clean, maintainable code and continuously improving my skills in modern app development practices.
              ''',textAlign: TextAlign.start,),
              ),
              Text('EXPERIENCE',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ListTile(
                title: Center(child: Text('Sumisa Technology Pvt Ltd, Perambalur. - (Intern)')),
                subtitle:Center(child: Text('I have 6 months of professional experience as a Flutter Developer, working on real-time projects at Sumisa Technologies Pvt Ltd, Perambalur. During this period, I gained hands-on experience in developing scalable application features, collaborating in a team environment, and applying best practices in modern app development.')),
              ),
            ],
          ):Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Text('ABOUT',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10,left:20,right: 20),
                child: Text('''I am a Junior App Developer with a strong foundation in Flutter and Dart, focused on building efficient and scalable cross-platform applications. I completed a 6-month internship at Sumisa Technologies, where I gained practical experience in developing and implementing scalable features, including a marketing module.

During my internship, I worked on real-time state management using Riverpod, improving application performance and ensuring smooth user interactions. I am passionate about writing clean, maintainable code and continuously improving my skills in modern app development practices.
              ''',textAlign: TextAlign.center,),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Text('EXPERIENCE',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              ListTile(
                title: Center(child: Text('Sumisa Technology Pvt Ltd, Perambalur. - (Intern)')),
                subtitle:Center(child: Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Text('I have 6 months of professional experience as a Flutter Developer, working on real-time projects at Sumisa Technologies Pvt Ltd, Perambalur. During this period, I gained hands-on experience in developing scalable application features, collaborating in a team environment, and applying best practices in modern app development.'),
                )),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
