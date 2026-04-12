import 'package:flutter/material.dart';
import 'package:newflutterproject/Views/about_page.dart';
import 'package:newflutterproject/Views/contact_page.dart';
import 'package:newflutterproject/Views/home_page.dart';
import 'package:newflutterproject/Views/project_page.dart';
import 'package:newflutterproject/Views/resume_page.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController=TabController(length: 5, vsync: this);
  }

  Widget _drowerHeader(bool isMobile){
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration:BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.white,
                Colors.black45,
              ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: isMobile?Row(
              children: [
                Builder(builder: (context){
                  return IconButton(onPressed: ()=>Scaffold.of(context).openDrawer(), icon: Icon(Icons.menu));
                },),
              ],
            ):
            Padding(
              padding: const EdgeInsets.only(left:650,right: 25 ),
              child: TabBar(
                  unselectedLabelColor:Colors.black,
                  labelColor: Colors.white,
                  indicatorColor: Colors.transparent,
                  dividerColor: Colors.transparent,
                  automaticIndicatorColorAdjustment: false,
                  controller: _tabController,
                  tabs:[
                    Tab(text: 'HOME',),
                    Tab(text: 'ABOUT',),
                    Tab(text: 'RESUME',),
                    Tab(text: 'PROJECT',),
                    Tab(text: 'CONTACT',),
                  ]),
            ),
          ),
        ),
      ],
    );
  }

  Widget _drawerTitle(String title,int index){
    return ListTile(
      title: Text(title),
      onTap: (){
        _tabController.animateTo(index);
        Navigator.pop(context);
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    double ScreenWidth = MediaQuery.of(context).size.width;
    bool isMobile = ScreenWidth<800;
    return SafeArea(child: Scaffold(
      drawer: isMobile?Drawer(
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/Home_bg.png'),fit: BoxFit.cover)
          ),
          child: ListView(
            children: [
              SizedBox(height: 50,),
              _drawerTitle('HOME',0),
              _drawerTitle('ABOUT',1),
              _drawerTitle('RESUME',2),
              _drawerTitle('PROJECT',3),
              _drawerTitle('CONTACT',4),
            ],
          ),
        ),
      ):null,
      backgroundColor: Colors.transparent,
      body: Container(
        decoration:BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.white,
            Colors.black45,
          ],
          begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          color: Colors.transparent,
          image: DecorationImage(image: AssetImage('assets/images/Home_bg.png'),fit: BoxFit.cover)
        ),
        child: Column(
          children: [
            _drowerHeader(isMobile),
          Expanded(
              child: TabBarView(
              controller:_tabController,
              children: [
            HomePage(),
            AboutPage(),
            ResumePage(),
            ProjectPage(),
            ContactPage(),
          ]))
        ],)


      ),
    ));
  }
}