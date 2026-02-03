import 'package:flutter/material.dart';
import 'package:my_app/package/AzkarCounterPage.dart';



 class Homepage extends StatelessWidget {
  final String title;
  const Homepage({super.key, required this.title});

  final List<String> azkar = const [
    "سبحان الله",
    "الحمد لله",
    "الله أكبر",
    "لا إله إلا الله",
    "استغفر الله",
    "اللهم صل وسلم على نبينا محمد"
  ];
  @override 
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("أذكار المسلم"),
        centerTitle: true,
        backgroundColor: Colors.teal
      ),
      body : ListView.builder(
        itemCount: azkar.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            elevation: 4,
            child: ListTile(
              leading : const Icon(Icons.mosque, color: Colors.teal),
              title: Text(azkar[index],
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              trailing: const Icon(Icons.arrow_forward_ios, size : 18),
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => AzkarCounterPage(title: azkar[index]),
                ),
                );
              },
              ),
            );
        },
    ),
    );
 } 
}