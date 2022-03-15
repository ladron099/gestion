import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gestion/constants.dart';

import 'Screens/quizz_screen.dart';
import 'components/rounded_button.dart';
import 'data/questions_example.dart';

class information extends StatefulWidget {
  const information({Key? key}) : super(key: key);

  @override
  State<information> createState() => _informationState();
}

class _informationState extends State<information> {
  int index=0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body:
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 46.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for(int i = 0; i < questions.length; i++ )
                Center(
                  child:
                  Container(
                    padding: EdgeInsets.all(10),
                    width: double.maxFinite,
                    child: Card(
                      color: kPrimaryColor,
                      shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      elevation: 7,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(12),
                            child: Text(
                              '${questions[i].question}',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          for (int j = 0; j < questions[i].answers!.length; j++)
                            if(questions[i].answers!.values.toList()[j])
                            Container(
                            margin: EdgeInsets.all(12),
                            child: Text(
                              '${questions[i].answers?.keys.toList()[j]}',
                              textAlign: TextAlign.left,
                              style:
                                  TextStyle(fontSize: 25, color: Color(0xFF8ad7de)),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                 height: size.height * 0.04,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: RawMaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => QuizzScreen()));

                    },
                    shape: StadiumBorder(),
                    fillColor: kPrimaryColor,
                    padding: EdgeInsets.all(18.0),
                    elevation: 0.0,
                    child: Text(
                     ' TESTER MES COMPETENCES',

                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
