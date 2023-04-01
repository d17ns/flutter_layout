import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Candi Prambanan',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Yogyakarta, Indonesia',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Candi Prambanan merupakan candi Hindu yang terbesar di Indonesia. '
            'Sampai saat ini belum dapat dipastikan kapan candi ini dibangun '
            'dan atas perintah siapa, namun kuat dugaan bahwa Candi Prambanan '
            'dibangun sekitar pertengahan abad ke-9 oleh raja dari Wangsa Sanjaya, '
            'yaitu Raja Balitung Maha Sambu. Dugaan tersebut didasarkan pada isi '
            'Prasasti Syiwagrha yang ditemukan di sekitar Prambanan dan saat ini '
            'tersimpan di Museum Nasional di Jakarta. Prasasti berangka tahun 778 '
            'Saka (856 M) ini ditulis pada masa pemerintahan Rakai Pikatan.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Candi Prambanan',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Candi Prambanan'),
        ),
        body: ListView(
          children: [
            Image.asset(
                'images/prambanan.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}