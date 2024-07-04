import 'package:flutter/material.dart';

class ListExample extends StatelessWidget {
  // var data = [
  // ['Ujang Albert', '20 Tahun', 'Sumenep'],
  // ['Max Darso', '20 Tahun', 'Ciparay'],
  // ['Lorezo Inun', '20 Tahun', 'Pamengpeuk'],
  // ['Mahmud Alexander', '20 Tahun', 'Al Arabia']
  // ];

  final List<Map<String, dynamic>> data = [
    {
      'nama': 'Cindy Sagita Sari',
      'umur': 17,
      'alamat': 'Bojong Suren',
      'photo': [
        'https://picsum.photos/458/354?image=1080',
        'https://picsum.photos/200',
        'https://picsum.photos/id/237/200/300',
        'https://picsum.photos/seed/picsum/200/300',
        'https://picsum.photos/200/300?grayscale',
        'https://picsum.photos/200/300/?blur'
      ]
    },
    {
      'nama': 'Siti Nur Aliifah',
      'umur': 17,
      'alamat': 'Rancamanyar',
      'photo': [
        'https://picsum.photos/458/354?image=1080',
        'https://picsum.photos/200',
        'https://picsum.photos/id/237/200/300',
        'https://picsum.photos/seed/picsum/200/300',
        'https://picsum.photos/200/300?grayscale',
        'https://picsum.photos/200/300/?blur'
      ]
    },
    {
      'nama': 'Alex',
      'umur': 17,
      'alamat': 'Rancamanyar',
      'photo': [
        'https://picsum.photos/458/354?image=1080',
        'https://picsum.photos/200',
        'https://picsum.photos/id/237/200/300',
        'https://picsum.photos/seed/picsum/200/300',
        'https://picsum.photos/200/300?grayscale',
        'https://picsum.photos/200/300/?blur'
      ]
    },
    {
      'nama': 'Fitri Afifah',
      'umur': 18,
      'alamat': 'Bojong Suren',
      'photo': [
        'https://picsum.photos/458/354?image=1080',
        'https://picsum.photos/200',
        'https://picsum.photos/id/237/200/300',
        'https://picsum.photos/seed/picsum/200/300',
        'https://picsum.photos/200/300?grayscale',
        'https://picsum.photos/200/300/?blur'
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.all(10),
          // color: Colors.purple,
          borderOnForeground: true,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Nama: ${data[index]['nama']}'),
                Text('Umur: ${data[index]['umur'].toString()}'),
                Text('Alamat: ${data[index]['alamat']}'),
                Text('Galeri:'),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: data[index]['photo'].length,
                    itemBuilder: (context, imgIndex) {
                      return Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Image.network(
                          data[index]['photo'][imgIndex],
                          fit: BoxFit.cover,
                          width: 100,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
