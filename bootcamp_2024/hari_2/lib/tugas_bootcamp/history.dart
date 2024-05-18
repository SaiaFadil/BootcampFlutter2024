import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  final List<Map<String, dynamic>> historyData = List.generate(
    12,
    (index) => {
      'date': '99 Januari 3037 - 99:99',
      'orderId': '#124574245',
      'price': 'Rp 99999',
      'status': 'Berhasil',
      'image': 'https://asset-a.grid.id/crop/0x0:0x0/800x600/filters:format(webp)/photo/2018/10/11/2853722966.png',
      'title': 'TopUp Diamond +999 Bonus (34Diamond)',
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.withOpacity(0.2),
    
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: historyData.length,
        itemBuilder: (context, index) {
          final item = historyData[index];
          return HistoryCard(
            date: item['date'],
            orderId: item['orderId'],
            price: item['price'],
            status: item['status'],
            image: item['image'],
            title: item['title'],
          );
        },
      ),
    );
  }
}

class HistoryCard extends StatelessWidget {
  final String date;
  final String orderId;
  final String price;
  final String status;
  final String image;
  final String title;

  const HistoryCard({
    Key? key,
    required this.date,
    required this.orderId,
    required this.price,
    required this.status,
    required this.image,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.network(
              image,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(date),
                  const SizedBox(height: 5),
                  Text(orderId),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(price),
                const SizedBox(height: 5),
                Container(
                  decoration: BoxDecoration(
                    color: status == 'Berhasil' ? Colors.green : Colors.red,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
                  child: Text(
                    status,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
