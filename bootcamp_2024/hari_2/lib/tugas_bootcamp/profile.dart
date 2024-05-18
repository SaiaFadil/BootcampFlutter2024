import 'package:flutter/material.dart';
import 'package:hari_2/tugas_bootcamp/CustomColors.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.withOpacity(0.2),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 100),
            padding: EdgeInsets.all(10),
            height: 450,
            width: double.infinity,
            child: Card(
              color: CustomColors.secondaryColor,
              surfaceTintColor: CustomColors.secondaryColor,
              elevation: 10,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: CustomColors.secondaryColor,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                padding: EdgeInsets.fromLTRB(15, 50, 15, 50),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child:Text("Doni Aja",style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),) 
                            
                    ),
              
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                Icon(Icons.call,
                                    size: 25, color: CustomColors.whiteColor),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Nomor Telepon",
                                  style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child:  Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                          "0815362836329",style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),))
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                Icon(Icons.location_pin,
                                    size: 25, color: CustomColors.whiteColor),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Alamat",
                                 style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child:  Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                           "Nganjuk Jawa Timur",style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                                          ),
                                        ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                Icon(Icons.circle_outlined,
                                    size: 25, color: CustomColors.whiteColor),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Jenis Kelamin",
                                 style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child:  Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                          "Laki-Laki",style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),))
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                Icon(Icons.date_range,
                                    size: 25, color: CustomColors.whiteColor),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Tempat/Tanggal Lahir",
                                 style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                          "Nganjuk, 27 Februari 2005",style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),)
                                        ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 15),
              child:CircleAvatar(
                      foregroundColor: CustomColors.whiteColor,

                      backgroundColor:
                          CustomColors.secondaryColor, // Inner circle color
                      radius: 70.0,
                      child: CircleAvatar(
                        backgroundColor: CustomColors.whiteColor,
                        radius: 65,
                        child: CircleAvatar(
                            foregroundColor: CustomColors.secondaryColor,
                            radius: 55, // Ubah ukuran avatar
                            backgroundImage: NetworkImage(
                               "https://cdn.antaranews.com/cache/1200x800/2024/03/12/img-og-pubg.jpg.webp")) // Ganti URL gambar sesuai kebutuhan
                            ),
                      ),
                    )
                  
                  
        ],
      ),
    );

  }
}
