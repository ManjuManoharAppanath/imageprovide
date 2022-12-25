import 'package:flutter/material.dart';
import 'package:imageprovide/image_provider.dart';
import 'package:provider/provider.dart';
class Favorites extends StatelessWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider=Provider.of<Favorite>(context);
    final fav=provider.items;
    final pic=provider.image;
    return Scaffold(appBar: AppBar(title: Text('Groceries'),
    ),
      body: ListView.builder(itemCount:fav.length,itemBuilder: (BuildContext context,int i){
        return ListTile(leading: CircleAvatar(child: Image.asset(pic[i]),radius: 50,),
          title: Text(fav[i]),
          trailing: Checkbox(value:provider.isexist(fav[i]) , onChanged:(value){
            provider.checked(fav[i],pic[i]);
          } ),
        );
      }),
      // floatingActionButton: FloatingActionButton.extended(onPressed: (){
      //   Navigator.push(context, MaterialPageRoute(builder: (context)=>))
      // }, label: Text('Favorite')),
    );
  }
}

