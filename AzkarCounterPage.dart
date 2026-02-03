import 'package:flutter/material.dart';

class AzkarCounterPage extends StatefulWidget {
  final String title;
  const AzkarCounterPage({super.key, required this.title});

  @override

  State<AzkarCounterPage> createState() => _AzkeaCounterPageState();
}

class _AzkeaCounterPageState extends State<AzkarCounterPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState((){
      _counter++;
    });
  }

  void _resetCounter(){
    setState((){
      _counter = 0;
    });
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title : Text(widget.title),centerTitle: true,),
      body : Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("عدد التسبيحات " , style : TextStyle(fontSize: 22)),
            const SizedBox(height: 20),

            GestureDetector(
              onTap: _incrementCounter,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(color: Colors.black26, blurRadius: 10),
                  ]),

                  alignment: Alignment.center,
                  child: Text("$_counter", style: const TextStyle(fontSize: 60, color:Colors.white,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton.icon(onPressed: _resetCounter,
              icon: const Icon(Icons.refresh),
              label: const Text("إعادة تعيين"),
              )
          ],
        ),
      ),
    );
  }
}