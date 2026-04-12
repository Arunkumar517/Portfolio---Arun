import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});
  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 120),
              child: Center(child: Text('CONTACT US',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
            ),
            SizedBox(height: 60,),
            Icon(Icons.call,size: 20,),
            Text('CALL US',style: TextStyle(fontSize: 16),),
            InkWell(
              onTap: ()=>openLink(type: 'phone', Value: '9150366145'),
                child: Text('+91 9150366145',style: TextStyle(fontSize: 14),)),
            SizedBox(height: 40,),
            Icon(Icons.mail_outline_outlined,size: 20,),
            Text('MAIL US',style: TextStyle(fontSize: 16),),
            InkWell(
                onTap: ()=>openLink(type: 'email', Value: 'marunkumar886@gmail.com'),
                child: Text('marunkumar886@gmail.com',style: TextStyle(fontSize: 14),)),
          ],
        ),
      ),
    ));
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