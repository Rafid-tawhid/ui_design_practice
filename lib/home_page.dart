import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {

    tabController=TabController(length: 4, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('images/tuxedo.png'),
                      fit: BoxFit.contain
                    )
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Text("Searching For",style: TextStyle(fontSize: 25,fontFamily: 'Roboto-bold'),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Text("Recepies",style: TextStyle(fontSize: 25,fontFamily: 'Roboto-bold'),),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search',
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search)
              ),
            ),
          ),
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,

              children: [
                _items("Burger","images/burger.png","150",Colors.pinkAccent,Colors.white),
                _items("Burger","images/burger.png","150",Colors.pinkAccent,Colors.white),
                _items("Burger","images/burger.png","150",Colors.pinkAccent,Colors.white),
                _items("Burger","images/burger.png","150",Colors.pinkAccent,Colors.white),
                _items("Burger","images/burger.png","150",Colors.pinkAccent,Colors.white),
                _items("Burger","images/burger.png","150",Colors.pinkAccent,Colors.white),
                _items("Burger","images/burger.png","150",Colors.pinkAccent,Colors.white),
              ],
            ),

          ),
          SizedBox(height: 20,),
          TabBar(tabs: [
            Text("Recomonded"),
            Text("Recomonded"),
            Text("Recomonded"),
            Text("Recomonded"),
          ],
            controller: tabController,
            indicatorColor: Colors.red,
            unselectedLabelColor: Colors.pink,
            labelColor: Colors.green,
            isScrollable: true,
          ),

        ],
      ),
    );
  }
}

_items(String s, String t, String u, MaterialAccentColor pinkAccent, Color white) {

  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 175,
      width: 150,

      decoration: BoxDecoration(
        color: pinkAccent,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: white,
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Image.asset(t,fit: BoxFit.contain,),
              ),
            ),
          ),
          Text(s,style: TextStyle(fontSize: 22,color: Colors.white),),
          Text(u+" \$",style: TextStyle(fontSize: 18,color: Colors.white),),

        ],
      ),
    ),
  );
}






