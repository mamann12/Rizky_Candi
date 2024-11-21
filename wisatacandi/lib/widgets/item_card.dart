import 'package:flutter/material.dart';
import 'package:wisata_candi_rizky/models/candi.dart';
import 'package:wisata_candi_rizky/screens/detail_screen.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.candi});
  //TODO 1. Deklarasi variable yang dibutuhkan dan pasang pada konstruktor
  final Candi candi;
  @override
  Widget build(BuildContext context) {
    //TODO 6. Bungkus Card dengan InkWell
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen(candi: candi)));
      },
      child: Card(
        //TODO 2. Terapkan parameter shape, margin, elevation, dari card
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        margin: EdgeInsets.all(4),
        elevation: 1,
        child: Column(
          children: [
            //TODO 3. Buat image sebagai anak dari column
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  candi.imageAsset,
                  width: double.infinity,
                  fit:BoxFit.cover,
                ),
              ),
            ),
            //TODO 4. Buat Text sebagai anak dari column
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 8),
              child: Text(
                candi.name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            //TODO 5. Buat Text sebagai anak dari column
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 8),
              child: Text(
                 candi.type,
                style: const TextStyle(
                  fontSize: 12,
                ),    
              ),
            ),
          ],
        ),
      ),
    );
  }
}