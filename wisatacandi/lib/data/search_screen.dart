import 'package:flutter/material.dart';
import 'package:wisata_candi_rizky/models/candi.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  // TODO: 1. Deklarasikan variabel yang dibutuhkan
  List<Candi> _filteredCandis = [];
  String _searchQuery = '';
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // TODO: 2. Buat appbar dengan judul Pencarian Candi
        appBar: AppBar(title: Text('Pencarian Candi'),),
        // TODO: 3. Buat body berupa Column
        body: Column(
          children: [
        // TODO: 4. Buat TextField pencarian sebagai anak dari Column
            TextField(
          autofocus: false,
          decoration: InputDecoration(
            hintText: 'Cari Candi',
            prefixIcon: Icon(Icons.search),
            border: InputBorder.none,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.deepPurple),
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
          ),
        ),
        Padding(padding: const EdgeInsets.all(16),
        ),
            // TODO: 5. Buat Listview hasil pencarian sebagai anak dari column\
            ListView.builder(
              itemCount: _filteredCandis.length,
              itemBuilder: (context, index) {
                final candi = _filteredCandis[index];
                return Card(
                  margin: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 4,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container()
                    ],
                  ),

                );
              },
            ),
          ],
        )
      );
    }
  }
