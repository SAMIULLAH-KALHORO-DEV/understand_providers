import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:understand_providers/provder/favorite_provider.dart';

import 'myfavorite.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  List<int> selectedItem = [];
  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite App"),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyfavoriteItemScreen(),
                  ));
            },
            child: Icon(Icons.favorite),
          )
        ],
      ),
      body: Column(children: [
        Expanded(
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return Consumer<FavoriteItemProvider>(
                builder: (context, value, child) {
                  return ListTile(
                    onTap: () {
                      if (value.seletectedItem.contains(index)) {
                        value.removeItems(index);
                      } else {
                        value.addItems(index);
                      }
                    },
                    title: Text("Item" + index.toString()),
                    trailing: Icon(value.seletectedItem.contains(index)
                        ? Icons.favorite
                        : Icons.favorite_border_outlined),
                  );
                },
              );
            },
          ),
        )
      ]),
    );
  }
}
