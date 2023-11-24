import 'package:flutter/material.dart';

class regester extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  var nameControler= TextEditingController();
  var passwordControler= TextEditingController();
  var emailControler= TextEditingController();
  var phoneControler= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Create your account',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    TextFormField(
                      controller: nameControler,
                      decoration: InputDecoration(
                        labelText: 'Your name',
                          labelStyle: TextStyle(
                            fontSize: 20.0,
                          ),
                        border: OutlineInputBorder(),
                        prefix: Icon(
                        Icons.person,
                        ),
                    ),
                      onTap: (){},
                      validator: (value) {
                        if(value!.isEmpty)
                        {return 'name missed';}
                        else
                          return null;},
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                      controller: passwordControler,
                      decoration: InputDecoration(
                        labelText: 'Password',
                          labelStyle: TextStyle(
                            fontSize: 20.0,
                          ),
                        border: OutlineInputBorder(),
                        prefix: Icon(
                        Icons.lock,
                        ),
                        suffix: Icon(
                          Icons.remove_red_eye,
                        ),
                    ),
                      onTap: (){},
                      validator: (value) {
                        if(value!.isEmpty)
                        {return 'password missed';}
                        else
                          return null;},

                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                      controller: emailControler,
                      decoration: InputDecoration(
                        labelText: 'Email',
                          labelStyle: TextStyle(
                            fontSize: 20.0,
                          ),
                        border: OutlineInputBorder(),
                        prefix: Icon(
                        Icons.email,
                        ),
                    ),
                      onTap: (){},
                      validator: (value) {
                        if(value!.isEmpty)
                        {return 'email missed';}
                        else
                          return null;},

                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                      controller: phoneControler,
                      decoration: InputDecoration(
                        labelText: 'Mobile',
                          labelStyle: TextStyle(
                            fontSize: 20.0,
                          ),
                        border: OutlineInputBorder(),
                        prefix: Icon(
                        Icons.phone,
                        ),
                    ),
                      onTap: (){},
                      validator: (value) {
                        if(value!.isEmpty)
                        {return 'mobile phone missed';}
                        else
                          return null;},

                    ),
                    SizedBox(
                      height: 15.0,
                    ),

                     Container(
                       width: double.infinity,
                       child: MaterialButton(
                          onPressed: (){
                            if(formKey.currentState!.validate())
                              {
                                print(nameControler.text);
                                print(phoneControler.text);
                                print(emailControler.text);
                                print(passwordControler.text);

                              }
                          },
                          child: Text('Sign up ',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(20.0),
                         ),
                          color: Colors.blue,




                        ),
                     ),

                  ],
                ),
              ),
            ),
          ),
        ),
      )




    );
  }
}
