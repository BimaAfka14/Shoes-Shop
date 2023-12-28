import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 15,
            right: 15,
          ),
          child: ListView(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Selamat Datang Bima',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '@Lark_Imogen.',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    child: Icon(Icons.person),
                    backgroundColor: Colors.blueAccent,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('All shoes'),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CardCategory(
                      name: "Running Shoes",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CardCategory(
                      name: "Slip On",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CardCategory(
                      name: "Boats",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CardCategory(
                      name: "Futsal Shoes",
                    ),
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Popural Shoes',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Text("See all"),
                        Icon(
                          Icons.arrow_forward,
                          size: 15,
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ShoesCard(),
                    SizedBox(
                      width: 10,
                    ),
                    ShoesCard(),
                    SizedBox(
                      width: 10,
                    ),
                    ShoesCard(),
                    SizedBox(
                      width: 10,
                    ),
                    ShoesCard(),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'New Arrival',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Text("See all"),
                        Icon(
                          Icons.arrow_forward,
                          size: 15,
                        )
                      ],
                    ),
                  )
                ],
              ),
              NewShoesCard(),
              SizedBox(
                height: 10,
              ),
              NewShoesCard(),
              SizedBox(
                height: 10,
              ),
              NewShoesCard(),
              SizedBox(
                height: 10,
              ),
              NewShoesCard(),
              SizedBox(
                height: 10,
              ),
              NewShoesCard(),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NewShoesCard extends StatelessWidget {
  const NewShoesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 120,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(236, 237, 239, 1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Image.asset('assets/images/sepatu2.png'),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        const SizedBox(
          height: 120,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              Text(
                'Football',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              Spacer(),
              Text(
                'Predator 20.3 Firm \nGround',
                style: TextStyle(fontSize: 20, overflow: TextOverflow.fade),
              ),
              Spacer(),
              Text(
                '\$ 100',
                style: TextStyle(fontSize: 16, color: Colors.blue),
              ),
              Spacer(),
            ],
          ),
        )
      ],
    );
  }
}

class ShoesCard extends StatelessWidget {
  const ShoesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(236, 237, 239, 1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(3),
              child: Image.asset('assets/images/sepatu1.png'),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Hiking',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "Court Vision 2.0",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              '\$100',
              style: TextStyle(
                fontSize: 16,
                color: Colors.blue,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class CardCategory extends StatelessWidget {
  const CardCategory({
    super.key,
    required this.name,
  });
  final String name;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.grey,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: Colors.grey),
        ),
      ),
      child: Text(name),
    );
  }
}
