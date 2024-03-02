import 'package:flutter/material.dart';

class PageDetail extends StatelessWidget {
  const PageDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/cosmos.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      width: 150,
                      height: 200,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 3),
                            image: DecorationImage(
                                image: AssetImage('assets/images/cosmos.jpg'),
                                fit: BoxFit.fitWidth),
                            borderRadius: BorderRadius.circular(2)),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 5),
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                  ),
                  child: Column(
                    children: [
                      Text('cosmos'),
                      const Text('book by slang'),
                      const Row(
                        children: [
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Container(
                            width: 45,
                            height: 20,
                            decoration:
                                const BoxDecoration(color: Colors.white),
                            child: const Text('Free'),
                          ),
                          const SizedBox(width: 3),
                          Container(
                            width: 45,
                            height: 20,
                            decoration:
                                const BoxDecoration(color: Colors.white),
                            child: const Icon(Icons.heart_broken),
                          ),
                          const SizedBox(width: 3),
                          Container(
                            width: 45,
                            height: 20,
                            decoration:
                                const BoxDecoration(color: Colors.white),
                            child: const Icon(Icons.share),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    const Text('Book Information'),
                    const Text(
                        'Cosmos is one of the best selling science books of \n all time. In clear-eyed prose, Sagan reveals a jewel- \n like blue world inhabited by a life form that is just...'),
                    const SizedBox(height: 10),
                    Text('About Author'),
                    SizedBox(height: 10),
                    const Text(
                        'Cosmos is one of the best selling science books of \n all time. In clear-eyed prose, Sagan reveals a jewel- \n like blue world inhabited by a life form that is just...'),
                    SizedBox(height: 15),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('User review'),
                        Icon(Icons.chevron_right)
                      ],
                    ),
                    SizedBox(height: 5),
                    ListTile(
                      leading: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.purpleAccent[300]),
                          child: Icon(
                            Icons.supervised_user_circle,
                            size: 40,
                          )),
                      title: Text('Gemechis'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('This is Amazing Book'),
                          Text('Oct 2023'),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(height: 5),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.blue),
                      onPressed: () {},
                      child: Text('Start Reading'),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}