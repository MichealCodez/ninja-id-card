import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: NinjaID(),
  ));
}

class NinjaID extends StatefulWidget {
  const NinjaID({Key? key}) : super(key: key);

  @override
  State<NinjaID> createState() => _NinjaIDState();
}

class _NinjaIDState extends State<NinjaID> {

  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850 ],
      appBar: AppBar(
        title: const Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/resized.JPG'),
                radius: 80.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[200],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey[500],
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 20.0,),
            const Text(
              'Micheal David',
              style: TextStyle(
                color: Colors.blueGrey,
                letterSpacing: 2.0,
                fontSize: 30.0,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 30.0,),
            Text(
              'NINJA LEVEL',
              style: TextStyle(
                color: Colors.grey[500],
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 20.0,),
            Text(
              '$ninjaLevel',
              style: const TextStyle(
                  color: Colors.blueGrey,
                  letterSpacing: 2.0,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 30.0,),
            Row(
              children: <Widget> [
                Icon(
                  Icons.mail,
                  color: Colors.grey[300],
                  size: 30.0,
                ),
                 const SizedBox(width: 10.0,),
                 Text(
                   'madtechnow@gmail.com',
                   style: TextStyle(
                     color: Colors.grey[300],
                     fontSize: 20.0,
                     letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel += 1;
          });
        },
        backgroundColor: Colors.grey[700],
        child: const Icon(Icons.add),
      ),
    );
  }
}

