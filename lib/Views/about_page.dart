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
              Text('ABOUT'),
              Text('''I am a Junior App Developer with a Strong foundation in Flutter and Dart. Having compleate a 6 - month internship
              at Sumisa Technologys, I've gained hands - on experience in building scalable features like marketing module, and real - time 
              state management using Riverpod.
              ''',textAlign: TextAlign.start,),
              Text('EXPERIENCE'),
              ListTile(
                title: Center(child: Text('Sumisa Technology Pvt Ltd, Perambalur. - (Intern)')),
                subtitle:Center(child: Text('         I am experice in 6 month of flutter developer in real time project handled in Sumisa Technologyes Pvt Ltd, Perambalur')),
              ),
            ],
          ):Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Text('ABOUT'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text('''I am a Junior App Developer with a Strong foundation in Flutter and Dart.\n Having compleate a 6 - month internship at Sumisa Technologys, I've gained hands -\n on experience in building scalable features like marketing module, and real - time state management using Riverpod.
              ''',textAlign: TextAlign.center,),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Text('EXPERIENCE'),
              ),
              ListTile(
                title: Center(child: Text('Sumisa Technology Pvt Ltd, Perambalur. - (Intern)')),
                subtitle:Center(child: Text('         I am experice in 6 month of flutter developer in real time project handled in Sumisa Technologyes Pvt Ltd, Perambalur')),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
