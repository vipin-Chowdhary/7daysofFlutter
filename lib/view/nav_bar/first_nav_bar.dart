import 'package:flutter/material.dart';

class FirstScreenNavbar extends StatelessWidget {
  const FirstScreenNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder:
              (context) => IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Builder(
              builder: (context) {
                return ListTile(
                  onTap: () {
                    Scaffold.of(context).closeDrawer();
                  },

                  title: Text('close Drawer'),
                );
              },
            ),
            ListTile(title: Text('title')),
            ListTile(title: Text('title')),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Material(
              color: Colors.red,
              animationDuration: Duration(seconds: 8),
              shadowColor: Colors.pink,
              borderRadius: BorderRadius.circular(50),
              surfaceTintColor: Colors.yellow,
              clipBehavior: Clip.antiAlias,

              child: InkWell(
                onTap: () {
                  print("Tapped 1");
                },
                child: Container(
                  padding: EdgeInsets.all(16),
                  // color: Colors.blue,
                  child: Text('Tap Me', style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            SizedBox(height: 40),
            GestureDetector(
              onTap: () {
                print("Tapped 2");
              },
              child: Container(
                padding: EdgeInsets.all(16),
                color: Colors.green,
                child: Text('No Ripple Effect'),
              ),
            ),
            SizedBox(height: 40),
            InkResponse(
              onTap: () {
                print("Tapped");
              },
              radius: 30,
              child: Container(
                padding: EdgeInsets.all(16),
                child: Icon(Icons.touch_app),
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(onPressed: () {}, child: Text('Click')),
            SizedBox(height: 40),

            // Material(
            //   child: InkWell(),
            // )
          ],
        ),
      ),
    );
  }
}
