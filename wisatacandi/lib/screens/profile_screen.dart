import 'package:flutter/material.dart';
import 'package:wisata_candi_rizky/widgets/profile_item_info.dart';

class ProfileScreen  extends StatefulWidget {
  const ProfileScreen ({super.key});

  @override
  State<ProfileScreen > createState() =>  _ProfileScreenState();
}

class _ProfileScreenState extends State <ProfileScreen > {
  //TODO: 1. Deklarasikan varibale yang dibutuhkan

  bool isSignedIn = false;
  String fullName = "Dummy";
  String userName = "Dummy";
  int favoriteCandiCount = 0;

  //TODO: 5. Implementasi fungsi SignIn
  void signIn(){
    setState(() {
      isSignedIn = !isSignedIn;
    });
  }
  //TODO: 6. Implementasi fungsi SignOut
  void signOut(){
    setState(() {
      isSignedIn = !isSignedIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 200, width: double.infinity, color: Colors.deepPurple,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                //TODO: 2. Buat bagian ProfileHeader yang berisi gambar profil
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top:200 - 50),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.deepPurple,
                              width: 2,
                              ),
                              shape: BoxShape.circle,
                          ),
                          child: const CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage('images/placeholder_image.png'),
                          ),
                        ),
                        if(isSignedIn)
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.camera_alt,
                            color: Colors.deepPurple[50],
                          ),
                          
                        )
                      ],
                    ),
                  ),
                ),
                //TODO: 3. Buat bagian ProfileInfo yang berisi info profil
                SizedBox(height: 20,),
                Divider(color: Colors.deepPurple[100],),
                SizedBox(height: 14,),
                Row(
                  children: [
                    SizedBox(
                        width: MediaQuery
                        .of(context)
                        .size
                        .width / 3,
                      child: Row(
                        children: [
                          Icon(Icons.lock,color: Colors.amber,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Pengguna',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Text(
                        ': $userName',
                        style: const TextStyle(fontSize: 18),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 4,),
                Divider(color: Colors.deepPurple[100],),
                SizedBox(height: 4,),
                Row(
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width /3,
                    child: Row(
                      children: [
                        Icon(Icons.person,color: Colors.blue,),
                        SizedBox(width: 8,),
                        Text(
                          'Nama',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    ),
                    Expanded(
                      child: Text(
                        ': $fullName',
                         style: const TextStyle(fontSize:18)
                      ),
                    ),
                    if (isSignedIn)const Icon(Icons.edit),
                  ],
                ),
                SizedBox(height: 4,),
                Divider(color: Colors.deepPurple[100],),
                SizedBox(height: 4,),
                ProfileItemInfo(icon: Icons.favorite, label: "Favorite", value: '$favoriteCandiCount', iconColor: Colors.red),
                //TODO: 4. Buat ProfileAction yang berisi textbutton sign in/out
                SizedBox(height: 4,),
                Divider(color: Colors.deepPurple[100],),
                SizedBox(height: 4,),
                isSignedIn 
                  ? TextButton(onPressed: signOut, child: const Text('Sign Out')) 
                  : TextButton(onPressed: signIn, child: const Text('Sign In')),
              ],
            ),
          )
        ],
      ),
    );
  }
}