import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResumePage extends StatefulWidget {
  const ResumePage({super.key});

  @override
  State<ResumePage> createState() => _ResumePageState();
}

class _ResumePageState extends State<ResumePage> {
  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;
    bool _isMObile = _screenWidth<800;
    return SafeArea (child: Scaffold(
      backgroundColor: Colors.transparent,
      body: _isMObile? SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text('RESUME',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(top:80,bottom: 20),
                child: GestureDetector(
                  child: Image.asset('assets/images/Arunkumar - Flutter-Resume.jpg',height: 400,width: 280,),),
              ),
              Text('data'),
            ],
          ),
        ),
      )
      :SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 75),
                child: Text('RESUME',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:80,left: 100,bottom: 20),
                      child: GestureDetector(
                        child: Image.asset('assets/images/Arunkumar - Flutter-Resume.jpg',height: 500,width: 350,),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Text('data'),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    ));
  }
}


