import 'package:fashion_store/common/widget/textFeild/formText.dart';
import 'package:fashion_store/navigationBar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: CircleAvatar(),
        ),
        automaticallyImplyLeading: false,
        //App Title
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello Farhan',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            Text('Good Morning!'),
          ],
        ),

        // App bar righ icons
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_outlined),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_bag_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.dark_mode)),
        ],
      ),
      bottomNavigationBar: bottomNavigtionBar.navBar,

      body: Padding(
        padding: const EdgeInsets.only(
          bottom: 20,
          left: 10,
          right: 10,
          top: 30,
        ),

        child: Column(
          children: [
            //Search Bar
            SizedBox(
              height: 60,
              child: formText(
                hint: 'Search',
                color: const Color.fromARGB(48, 255, 90, 40),
                prefix: Icons.search,
                suffix: Icons.sort,
                filled: true,
              ),
            ),
            SizedBox(height: 10),

            //Categories
            SizedBox(
              height: 35,
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(width: 10),
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    height: 30,
                    width: 70,
                    alignment: Alignment(0, 0),

                    decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      'All',
                      style: Theme.of(
                        context,
                      ).textTheme.labelLarge!.copyWith(color: Colors.white),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10),

            //Banner
            Container(
              height: 120,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.deepOrangeAccent,
                borderRadius: BorderRadius.circular(10),
              ),

              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Row(
                      children: [
                        RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Get your\n',
                                style: Theme.of(context).textTheme.titleMedium!
                                    .copyWith(color: Colors.white),
                              ),
                              TextSpan(
                                text: 'Special Sale\n',
                                style: Theme.of(context).textTheme.titleLarge!
                                    .copyWith(color: Colors.white),
                              ),
                              TextSpan(
                                text: 'Up to 40%',
                                style: Theme.of(context).textTheme.titleMedium!
                                    .copyWith(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Shop now'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            Row(
              children: [
                Text(
                  'Popular Product',
                  style: Theme.of(context).textTheme.titleMedium!,
                ),
                Spacer(),
                TextButton(onPressed: () {}, child: Text('See All')),
              ],
            ),
            SizedBox(height: 10),
            // Products
            SizedBox(
              height: 350,
              child: GridView.builder(
                shrinkWrap: true,

                itemCount: 6,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            spreadRadius: 0.1,
                            blurStyle: BlurStyle.inner,
                          ),
                          BoxShadow(
                            color: Colors.deepOrange,
                            spreadRadius: 0.1,
                            blurStyle: BlurStyle.outer,
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
