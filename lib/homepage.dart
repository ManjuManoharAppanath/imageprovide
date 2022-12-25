import 'package:flutter/material.dart';
import 'package:imageprovide/image_provider.dart';
import 'package:provider/provider.dart';

import 'favoritepage.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items=['sayur','pisang','roti','udat','pani','masala'];
    final imgs=['img/1im.jpg','img/2im.jpg','img/3im.jpg','img/4im.jpg','img/5im.jpg','img/6im.jpg'];
    final provider=Provider.of<Favorite>(context);
    return Scaffold(appBar: AppBar(title: Text('Groceries'),
    ),
    body: ListView.builder(itemCount:items.length,itemBuilder: (BuildContext context,int i){
      return ListTile(leading: CircleAvatar(child: Image.asset(imgs[i]),radius: 60,),
      title: Text(items[i]),
        trailing: Checkbox(value:provider.isexist(items[i]) , onChanged:(value){
          provider.checked(items[i],imgs[i]);
        } ),
      );
    }),
      floatingActionButton: FloatingActionButton.extended(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Favorites(),),
        );
      }, label: Text('Favorite')),
    );
  }
}
