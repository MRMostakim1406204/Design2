import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

var isSelected =false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
           
            children: [
              SizedBox(height: 70,),
              Container(
                child: Text("Welcome",style: TextStyle(
                  fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold
                ),),
                
              ),
              SizedBox(height: 10,),
              Text("Please provide following details for your new account",style: TextStyle(
                fontSize: 18
              ),),
              SizedBox(height: 70,),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                   labelText: "Donis",labelStyle: TextStyle(color: Colors.black),
                   border: OutlineInputBorder(
                   
                    borderRadius: BorderRadius.circular(15),
                   )     
                  ),
                ),
              ),
              SizedBox(height: 1,),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextField(
                  decoration: InputDecoration(
                   labelText: "Arnoid",labelStyle: TextStyle(color: Colors.black),
                   border: OutlineInputBorder(
                   
                    borderRadius: BorderRadius.circular(10),
                   )     
                  ),
                ),
              ),
              SizedBox(height: 1,),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextField(
                  decoration: InputDecoration(
                   labelText: "denisarnoid@gmail.com",labelStyle: TextStyle(color: Colors.black),
                   border: OutlineInputBorder(
                   
                    borderRadius: BorderRadius.circular(10),
                   )     
                  ),
                ),
              ),
              SizedBox(height: 10),
              
              Row(
                children: [
                  SizedBox(width: 30,),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Checkbox(value: isSelected, onChanged: (bool?value){
                                setState(() {
                    isSelected =value!;
                                });
                              }),
                  ),
                  SizedBox(width: 10,),
                   Expanded(
                        
                        child: RichText(text: TextSpan(
                          children: [
                            TextSpan(text: "  By creating your account you have to  agree with our",style: TextStyle(
                              fontSize: 22,color: Colors.black
                            )),
                            TextSpan(text: " Terms and condition",style: TextStyle(
                              fontSize: 22,color: Colors.blue
                            ))
                          ]
                        )),
                        )
                ],
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(15),
                child: MaterialButton(
                  color: Colors.blue,
                  minWidth: double.infinity,
                  height: 50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  onPressed: (){},
                child: Text("Sign Up",style: TextStyle(
                  fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold
                ),),),
              ),
              SizedBox(height: 1,),
              Stack(
                alignment: Alignment.centerLeft,
                children: [
                  
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: MaterialButton(
                      child: Text("Sign up with Facebook",style: TextStyle(
                        fontSize: 22,color: Colors.white,
                      ),),
                    height: 50,
                    minWidth: double.infinity,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    onPressed: (){},
                                  color: Colors.black54,),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage("data:image/png;base64,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"),
                      radius: 15,
                    ),
                  ),
              
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}