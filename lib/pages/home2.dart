import 'package:flutter/material.dart';
import 'package:untitled/pages/Places.dart';

class home2 extends StatefulWidget {
  const home2({Key? key}) : super(key: key);

  @override
  State<home2> createState() => _home2State();
}

class _home2State extends State<home2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(scrollDirection: Axis.vertical, children: [
        Column(
          children: [
            const SizedBox(height: 20),
            const Center(
              child: Text(
                'Welcome',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                'Explore new destinations',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),

            //THE SEARCH TEXTFIELD..............................................

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Material(
                borderRadius: BorderRadius.circular(25),
                elevation: 5,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(children: [
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              hintText: 'Search',
                              prefixIcon: Icon(Icons.search)),
                        ),
                      ),
                      const CircleAvatar(
                        backgroundColor: Colors.orange,
                        child: Icon(
                          Icons.sort_by_alpha_sharp,
                          color: Colors.white,
                        ),
                      )
                    ]),
                  ),
                ),
              ),
            ),

            //.................................................................

            const SizedBox(height: 20),

            const Row(
              children: [
                SizedBox(width: 20),
                Text(
                  'Category',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),

            //..........................................................

            Container(
              height: 65,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      Material(
                        borderRadius: BorderRadius.circular(25),
                        elevation: 5,
                        child: const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                          child: Row(
                            children: [
                              SizedBox(width: 5),
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://i.pinimg.com/564x/15/e0/15/15e015d2aec7f5c12529a6256597446d.jpg'),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Cities',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(25),
                        elevation: 5,
                        child: const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                          child: Row(
                            children: [
                              SizedBox(width: 5),
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://i.pinimg.com/564x/ce/88/86/ce8886eae681f12635a1e66c16164d29.jpg'),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Mountain',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(25),
                        elevation: 5,
                        child: const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                          child: Row(
                            children: [
                              SizedBox(width: 5),
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://i.pinimg.com/564x/30/ce/fd/30cefd6addef9769869049b652a269b0.jpg'),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Ancient Ruins',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(25),
                        elevation: 5,
                        child: const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                          child: Row(
                            children: [
                              SizedBox(width: 5),
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://i.pinimg.com/564x/66/bc/ea/66bceae5ea35af4771069ddd92622503.jpg'),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Forest',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            ///////////////////////////////////////////////////////////////////////////////////////////

            const SizedBox(height: 10),

            const Row(
              children: [
                SizedBox(width: 20),
                Text(
                  'Recommended',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            //////////////////////////////////////////////////////////////////////////////////////

            Container(
              height: 350,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                Row(
                  children: [
                    const SizedBox(width: 10),
                    Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(25),
                      child: Container(
                        height: 220,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                height: 150,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://i.pinimg.com/564x/fe/ab/db/feabdbd7ed3fd59843169e3f50a04dc5.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Center(
                              child: Text(
                                'Lalibela',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children:[
                                SizedBox(width: 10),
                                Icon(Icons.location_on,
                                    color: Colors.red),
                                Text('Ethiopia',style: TextStyle(color: Colors.grey))

                              ]
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(25),
                      child: Container(
                        height: 220,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                height: 150,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://i.pinimg.com/564x/6f/0d/b4/6f0db439bd9f25a3e3f4962ac8bff712.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Center(
                              child: Text(
                                'Addis Abeba, Ethiopia',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Row(
                                children:[
                                  SizedBox(width: 10),
                                  Icon(Icons.location_on,
                                      color: Colors.red),
                                  Text('Ethiopia',style: TextStyle(color: Colors.grey))

                                ]
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(25),
                      child: Container(
                        height: 220,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                height: 150,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  image: DecorationImage(
                                    image: NetworkImage('https://i.pinimg.com/564x/d6/7d/9e/d67d9e7d78538ab83a7f02fc053fa3b3.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Center(
                              child: Text(
                                'simien mountains',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Row(
                                children:[
                                  SizedBox(width: 10),
                                  Icon(Icons.location_on,
                                      color: Colors.red),
                                  Text('Ethiopia',style: TextStyle(color: Colors.grey))

                                ]
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
            )
          ],

          ///////////////////////////////////////////////////////////////
        ),
      ]),
    );
  }
}
