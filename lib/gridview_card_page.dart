import 'package:flutter/material.dart';

class Menu{
  final String? title;
  final IconData? icon;
  final Color? bgcolor;
  Menu({this.title,this.icon,this.bgcolor});
}

List<Menu> menus = [
  Menu(title: "Menu 1",icon: Icons.apple,bgcolor: Colors.redAccent),
  Menu(title: "Menu 2",icon: Icons.person,bgcolor: Colors.yellowAccent),
  Menu(title: "Menu 3",icon: Icons.android,bgcolor: Colors.greenAccent),
];

class GridViewCrad extends StatelessWidget{
  const GridViewCrad({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(8),
        child: GridView.count(
          crossAxisCount: menus.length,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          //children: List.generate(9, (index) => Card()),
          children: List.generate(menus.length,(index){
            return Card(
              color: menus[index].bgcolor,
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                 Radius.circular(20) 
                )
              ),
              child: InkWell(
                borderRadius: BorderRadius.all(
                  Radius.circular(20)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(menus[index].icon,size: 65,color: Colors.white,),
                    Text(menus[index].title!,style: TextStyle(color: Colors.white))
                  ],
                ),
                onTap: (){},
              ),
            );
          }),
        ),
      ),
    );
  }
}