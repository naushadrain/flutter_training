import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("profile"), 
           centerTitle: true,
        ),
        
        body:const SingleChildScrollView(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1720048170970-3848514c3d60?q=80&w=3870&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
              ),
              SizedBox(height: 20),
              Text(
                'Shamim Hossain',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                
                Text(
                  '@shamimGrophics',
                ),
                SizedBox(height: 20),
              Text(
                'Edit Profile',
              style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
                Divider(height: 1,color: Colors.black),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Settings',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),
                  
                  ),
                  Text(
                  'Settings',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),
                  
                  ),
              ],
            )
                
            ],
            
          ),
          
          ),
          
    );
    
    
  }
}

