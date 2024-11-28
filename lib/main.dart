import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        leading: const Icon(Icons.handshake, color: Colors.white),
        title: const Text(
          'Burger Queen',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.person_2_rounded,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: [
            // ============= the card section =======================

            Container(
              width: MediaQuery.of(context).size.width * 1,
              color: Colors.pinkAccent,
              child: Container(
                margin: const EdgeInsets.all(20),
                child: Card(
                  child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(children: [
                                  Icon(Icons.place),
                                  Text(
                                    'Mon restaurant le plus proche',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )
                                ]),
                                Spacer(),
                                Text(
                                  '4 Km',
                                  style: TextStyle(fontSize: 20),
                                )
                              ]),
                          const SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: Container(
                                width: MediaQuery.of(context).size.width * 1,
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.pinkAccent,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Row(
                                  children: [
                                    Spacer(),
                                    Icon(
                                      Icons.touch_app,
                                      size: 29,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      'Burger Queen',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    Spacer()
                                  ],
                                )),
                          )
                        ],
                      )),
                ),
              ),
            ),

            const SizedBox(
              height: 16,
            ),
            const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'En ce moment',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Spacer()
                ]),

            //  ========== presentation ===========

            Container(
                width: MediaQuery.of(context).size.width * 0.97,
                height: MediaQuery.of(context).size.height * 0.6,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  image: DecorationImage(
                    image: AssetImage('assets/images/egg-bacon-burger.jpg'),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: const [
                    BoxShadow(color: Colors.black54, offset: Offset(2, 7))
                  ],
                ),
                child: const Column(
                  children: [
                    Text(
                      'Une petite faim ?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 19,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Venez personnaliser votre burger',
                      style:
                          TextStyle(fontSize: 18, backgroundColor: Colors.pink),
                    )
                  ],
                )),

            // ==================== chaud devant ======================

            const SizedBox(
              height: 16,
            ),
            const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Chaud Devant',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Spacer()
                ]),
            const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Le meilleur de nos burgers à portée de clic',
                  ),
                  Spacer()
                ]),

            //============= scroll horisontal

            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomCard(
                    imageUrl: 'assets/images/twins.jpg',
                    title: 'Twins',
                    description: 'Le burger des jumeaux qui font la paire',
                  ),
                  CustomCard(
                    imageUrl: 'assets/images/big-queen.jpg',
                    title: 'Big Queen',
                    description:
                        'Pour celles qui portent la couronne à la maison',
                  ),
                  CustomCard(
                    imageUrl: 'assets/images/egg-bacon-burger.jpg',
                    title: 'Egg Bacon',
                    description: 'Le burger des lève tôt',
                  ),
                  CustomCard(
                    imageUrl: 'assets/images/prince.jpg',
                    title: 'Prince',
                    description: 'Le préféré des futurs rois',
                  ),
                  CustomCard(
                    imageUrl: 'assets/images/cheese.jpg',
                    title: 'Cheese',
                    description: 'Le classique pour les fans de fromage',
                  ),
                ],
              ),
            ),

            //   ================ les accomplagnements

            const SizedBox(
              height: 16,
            ),
            const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Les accompaniments',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Spacer()
                ]
            ),

            Container(
              width: MediaQuery.of(context).size.width * 0.97,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [

                  CustomAccompagnement(
                      imageUrl: 'assets/images/fries.jpg',
                      name: 'Frites',
                  ),
                  const Divider(
                    thickness: 1.5,
                    endIndent: 8,
                    indent: 8,
                    color: Colors.grey,
                  ),


                  CustomAccompagnement(
                      imageUrl: 'assets/images/patate-douce.jpg',
                      name: 'Frites de patate douce',
                  ),
                  const Divider(
                    thickness: 1.5,
                    endIndent: 8,
                    indent: 8,
                    color: Colors.grey,
                  ),


                  CustomAccompagnement(
                      imageUrl: 'assets/images/poutine.jpg',
                      name: 'Poutine',
                  ),
                  const Divider(
                    thickness: 1.5,
                    endIndent: 8,
                    indent: 8,
                    color: Colors.grey,
                  ),


                  CustomAccompagnement(
                      imageUrl: 'assets/images/potatoes.jpg',
                      name: 'Potatoes',
                  ),
                ],
              ),
            ),

          //   ==================== une petite soife ============

            const SizedBox(
              height: 16,
            ),
            const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Une petite soif ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Spacer()
                ]
            ),
            const SizedBox(
              height: 18,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.97,
              height: 500,
              padding: const EdgeInsets.all(10),
              decoration:  BoxDecoration(
                  color: Colors.pinkAccent,
                 borderRadius: BorderRadius.circular(20)
              ),
              child: const  SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                      children: [

                        CustomBeer(
                            imageUrl: 'assets/images/sparkling.jpg',
                            title: 'Titre'
                        ),

                        CustomBeer(
                            imageUrl: 'assets/images/cupcake.jpg',
                            title: 'Titre'
                        ),

                        CustomBeer(
                            imageUrl: 'assets/images/strawberry-soda.jpg',
                            title: 'Titre'
                        ),

                        CustomBeer(
                            imageUrl: 'assets/images/orange-soda.jpg',
                            title: 'Titre'
                        ),

                        CustomBeer(
                            imageUrl: 'assets/images/cupcake.jpg',
                            title: 'Titre'
                        ),

                        CustomBeer(
                            imageUrl: 'assets/images/strawberry-soda.jpg',
                            title: 'Titre'
                        ),

                        CustomBeer(
                            imageUrl: 'assets/images/orange-soda.jpg',
                            title: 'Titre'
                        )
                      ],
                ),
              ),
            ),

          //   ===================== la touche finale =======================

            const SizedBox(
              height: 16,
            ),
            const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Une touche finale ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Spacer()
                ]
            ),

            const Wrap(
              direction: Axis.horizontal,

              spacing: 20,
              children: [
                  CustomEnd(
                      imageUrl: 'assets/images/donut.jpg',
                      title: 'Donut'
                  ),
                  CustomEnd(
                      imageUrl: 'assets/images/donut.jpg',
                      title: 'Donut'
                  ),
                  CustomEnd(
                      imageUrl: 'assets/images/donut.jpg',
                      title: 'Donut'
                  ),
                  CustomEnd(
                      imageUrl: 'assets/images/donut.jpg',
                      title: 'Donut'
                  ),

              ],
            )
          ],
        ),
      ),
    );
  }
}

class CustomSoif extends StatelessWidget{
 late String imageP;
 late String label;

  CustomSoif({
    super.key,
    required this.imageP,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        height: 450,
        padding: const EdgeInsets.all(10),
        decoration:   BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          image:  DecorationImage(
            image: AssetImage(imageP),
            fit: BoxFit.cover,
          ),
          boxShadow: const [
            BoxShadow(color: Colors.black54, offset: Offset(2, 7))
          ],
        ),
        child:  Column(
          children: [
            Text(
              label,
              style:const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 19,
              ),
            ),
            const Spacer(),

          ],
        )
    );
  }
}

class CustomAccompagnement extends StatelessWidget {
  final String imageUrl;
   String name;

   CustomAccompagnement({
    super.key,
    required this.imageUrl,
    required this.name
  });

  @override
  Widget build(BuildContext context) {
    return  Card(
      color: Colors.pinkAccent,
      elevation: 0,
      borderOnForeground: false,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
                borderRadius:
                BorderRadius.all(Radius.circular(50)),
            ),
            child: CircleAvatar(
                backgroundImage: AssetImage(imageUrl),
              ),
            ),

          const Spacer(),
            Text(
             name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;

  const CustomCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.pink,
      clipBehavior: Clip.antiAlias,
      child: Container(
        width: 300,
        height: 318,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          children: [
            Image.asset(
              imageUrl,
              height: 240,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            Text(
              description,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}


class CustomEnd extends StatelessWidget {
  final String imageUrl;
  final String title;

  const CustomEnd({
    Key? key,
    required this.imageUrl,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.pink,
      clipBehavior: Clip.antiAlias,
      child: Container(
        width: 170,
        height: 170,
        decoration:  BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          image: DecorationImage(
              image: AssetImage(imageUrl),
            fit: BoxFit.cover
          )
        ),
        child: Center(
          child: Card(
            child: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          ),
        ),
      ),
    );
  }
}


class CustomBeer extends StatelessWidget {
  final String imageUrl;
  final String title;

  const CustomBeer({
    Key? key,
    required this.imageUrl,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.pink,
      clipBehavior: Clip.antiAlias,
      child: Container(
        width: 200,
        height: MediaQuery.of(context).size.height * 1,
        decoration:  BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          image: DecorationImage(
              image: AssetImage(imageUrl),
            fit: BoxFit.cover
          )
        ),
        child: Column(
          children: [

            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

