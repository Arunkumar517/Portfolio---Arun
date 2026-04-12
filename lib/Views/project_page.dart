import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({super.key});

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;
    bool _isMObile = _screenWidth<800;
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.transparent,
      body: _isMObile?SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              ...List.generate(5, (index){
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Container(
                      width: 200,
                      height: 400,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)
                      ),
                      child: Center(child: Text('Coming Soon',style: TextStyle(fontSize: 30),)),
                    ),
                  ),
                );
              }),
          ],
        ),
      ):SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(5, (index){
              return Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Container(
                    width: 700,
                    height: 400,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)
                    ),
                    child: Center(child: Text('Coming Soon',style: TextStyle(fontSize: 30),)),
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    ));
  }
}
