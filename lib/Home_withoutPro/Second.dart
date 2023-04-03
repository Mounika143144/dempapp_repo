import 'package:flutter/material.dart';

class Second extends StatefulWidget {
   final List<int> numbers;
  const Second({super.key, required this.numbers});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          int last = widget.numbers.last;
          setState(() {
            widget.numbers.add(last + 1);
          });
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Center(child: Text('2',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500)))
      ),
      body: Column(
        children: [
          Text('Total numbers in a list: ${widget.numbers.last.toString()}'
            ,
            style: const TextStyle(fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
              height: 200,
              width: double.maxFinite,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemCount: widget.numbers.length,
                  itemBuilder: (context, index) {
                    return Center(
                        child: Text(
                      widget.numbers[index].toString(),
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

