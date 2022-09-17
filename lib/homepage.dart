import 'package:flutter/material.dart';

import 'global.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Web Browser"),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...Global.website
              .map((e) => Card(
                    shadowColor: Colors.black,
                    elevation: 5,
                    shape: const StadiumBorder(
                      side: BorderSide(
                        color: Colors.black,
                        width: 5.0,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: ListTile(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed('webpage', arguments: e);
                      },
                      contentPadding: const EdgeInsets.all(5),
                      style: ListTileStyle.list,
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(e['image']),
                      ),
                      title: Text(
                        e['name'],
                        style: const TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        strutStyle: const StrutStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                      subtitle: Text(
                        e['site'],
                        style: const TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        strutStyle: const StrutStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic),
                      ),
                      trailing: const Icon(Icons.saved_search),
                    ),
                  ))
              .toList(),
        ],
      ),
    );
  }
}
