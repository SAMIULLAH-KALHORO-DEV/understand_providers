import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../favorite_provider.dart';

class MyfavoriteItemScreen extends StatefulWidget {
  const MyfavoriteItemScreen({super.key});

  @override
  State<MyfavoriteItemScreen> createState() => _MyfavoriteItemScreenState();
}

class _MyfavoriteItemScreenState extends State<MyfavoriteItemScreen> {
  @override
  Widget build(BuildContext context) {
    print("build");
    final favoriteProvider = Provider.of<FavoriteItemProvider>(context);
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
            itemCount: favoriteProvider.seletectedItem.length,
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
