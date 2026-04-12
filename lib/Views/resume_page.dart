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
                child: Text('RESUME',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(top:80,bottom: 20),
                child: GestureDetector(
                  child: Image.asset('assets/images/Arunkumar - Flutter-Resume.jpg',height: 400,width: 280,),),
              ),
              ListTile(title: Text('Specialized in Flutter, Riverpod & Firebase'),
              subtitle: Align(
                  alignment: Alignment.center,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Text('''I am passionate about Flutter mobile app development, with a strong focus on building high-performance, user-friendly applications across mobile, web, and desktop platforms. I have hands-on experience in API integration, enabling seamless communication between frontend applications and backend services to deliver dynamic, data-driven user experiences.

                      I enjoy developing scalable applications that are both static and dynamic in nature, ensuring they are efficient, maintainable, and adaptable to growing user demands. My work emphasizes creating responsive designs that provide a consistent and engaging experience across different screen sizes and devices.

                      With a keen interest in modern development practices, I continuously strive to improve my skills in cross-platform development, performance optimization, and clean architecture. I am committed to building robust, scalable, and visually appealing applications that solve real-world problems effectively.'''),
                    ),
                  )),
              )
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
                child: Text('RESUME',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:80,left: 100,bottom: 20),
                      child: GestureDetector(
                        child: Image.asset('assets/images/Arunkumar - Flutter-Resume.jpg',height: 500,width: 350,),),
                    ),
                    Expanded(
                      child: ListTile(title: Text('Specialized in Flutter, Riverpod & Firebase'),
                        subtitle: Text('''I am passionate about Flutter mobile app development, with a strong focus on building high-performance, user-friendly applications across mobile, web, and desktop platforms. I have hands-on experience in API integration, enabling seamless communication between frontend applications and backend services to deliver dynamic, data-driven user experiences.

I enjoy developing scalable applications that are both static and dynamic in nature, ensuring they are efficient, maintainable, and adaptable to growing user demands. My work emphasizes creating responsive designs that provide a consistent and engaging experience across different screen sizes and devices.

With a keen interest in modern development practices, I continuously strive to improve my skills in cross-platform development, performance optimization, and clean architecture. I am committed to building robust, scalable, and visually appealing applications that solve real-world problems effectively.''',),
                      ),
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


