import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:food_data/models/Food.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List <Food> result = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FLUTTER FOOD'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: ElevatedButton(
                  onPressed: _handleClickButton,
                  child: Text('LOAD FOODS DATA'),
                ),
              ),
            ),
            result.isEmpty?
            SizedBox.shrink():
            Expanded(
              child: ListView.builder(
                itemCount: result.length,
                itemBuilder: (context, index){
                  var fooditem = result[index];
                  return Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    margin: EdgeInsets.all(8.0),
                    elevation: 5.0,
                    shadowColor: Colors.black.withOpacity(0.2),
                    child: InkWell(
                      onTap: (){},
                      child: Row(
                        children: [
                          Image.network(
                            fooditem.image,
                            width: 85.0,
                            height: 85.0,
                            fit: BoxFit.cover,
                          ),


                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
  _handleClickButton(){
    _fetchFood();
  }
  _fetchFood() async{
    final url = Uri.parse('https://cpsu-test-api.herokuapp.com/foods');


    /*result.then((response){
      print(response.body);
    });*/

    }
  }
