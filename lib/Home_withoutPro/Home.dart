import 'package:demo/Home_withoutPro/Second.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<int> numbers = [1, 2, 3, 4, 5];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          int last = numbers.last;
          setState(() {
            numbers.add(last + 1);
          });
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(title: const Center(child: Text('1',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),)),actions:[IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) =>Second(numbers: numbers)));
                
          },
          icon: const Icon(Icons.arrow_forward),
        ),]),
      body: Column(
        children: [
          Text('Total numbers in a list: ${ numbers.last.toString()}'
           ,
            style: const TextStyle(fontSize: 20),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: ListView.builder(
                  itemCount: numbers.length,
                  itemBuilder: (context, index) {
                    return Center(
                        child: Text(
                      numbers[index].toString(),
                      style: const TextStyle(fontSize: 20),
                    ));
                  }),
            ),
          )
        ],
      ),
    );
  }
}
