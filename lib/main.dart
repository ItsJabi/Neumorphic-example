import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_icons/flutter_icons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 120),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: <Widget>[Text('Welcome')],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: <Widget>[
                    Text('Sign In',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30)),
                  ],
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Row(
                  children: <Widget>[
                    Text('Email'),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Neumorphic(
                margin: EdgeInsets.only(left: 8, right: 20),
                padding: EdgeInsets.only(left: 10),
                style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
                    depth: 2.1,
                    color: Colors.grey[200],
                    lightSource: LightSource.bottomRight,
                    surfaceIntensity: 0,
                    intensity: 1),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'abc@gmail.com'),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Row(
                  children: <Widget>[
                    Text('Password'),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Neumorphic(
                margin: EdgeInsets.only(left: 8, right: 20),
                padding: EdgeInsets.only(left: 10),
                style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
                    depth: 2.1,
                    color: Colors.grey[200],
                    lightSource: LightSource.bottomRight,
                    surfaceIntensity: 0,
                    intensity: 1),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: '********'),
                  obscureText: true,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: NeumorphicText(
                  'Forgot Password?',
                  style: NeumorphicStyle(
                      depth: 4,
                      color: Colors.grey[400],
                      intensity: 1,
                      lightSource: LightSource.topLeft),
                  textStyle: NeumorphicTextStyle(
                    fontSize: 15,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: NeumorphicButton(
                  style: NeumorphicStyle(
                      color: Colors.pink,
                      depth: 3,
                      intensity: 1,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(20)),
                      shape: NeumorphicShape.concave,
                      lightSource: LightSource.bottomRight),
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 60),
                  onPressed: () {},
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image(
                        height: 20,
                        width: 20,
                        image: AssetImage('images/fb.png'),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Image(
                        height: 20,
                        width: 20,
                        image: AssetImage('images/twi.png'),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Image(
                          height: 20,
                          width: 20,
                          image: AssetImage('images/ins.png')),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      NeumorphicText(
                        'Already have an account?',
                        style: NeumorphicStyle(
                            depth: 4,
                            color: Colors.grey[400],
                            intensity: 1,
                            lightSource: LightSource.topLeft),
                        textStyle: NeumorphicTextStyle(
                          fontSize: 15,
                          letterSpacing: 1.0,
                        ),
                      ),
                      InkWell(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Colors.pink,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline),
                        ),
                      )
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
