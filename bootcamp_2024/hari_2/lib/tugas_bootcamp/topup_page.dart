import 'package:flutter/material.dart';
import 'package:hari_2/tugas_bootcamp/CustomColors.dart';

class TopUpFormScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: _buildTextField(
                    label: 'Id akun',
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: _buildTextField(
                    label: 'Server',
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            _buildTextField(
              label: 'Email',
            ),
            SizedBox(height: 10),
            _buildTextField(
              label: 'No Telepon (Opsional)',
            ),
            SizedBox(height: 10),
            _buildTextField(
              label: 'Jumlah',
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: _buildTextField(
                    label: 'Kode Promo',
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.cyan,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    // Logic for using the promo code
                  },
                  child: Text(
                    'Gunakan',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
               NotifBerhasilEditInformasi(context);
              },
              child: Text(
                'TOP UP SEKARANG',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.cyan,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

// ini untuk membuat template TextField atau kolom
  Widget _buildTextField({
    required String label,
  }) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        filled: true,
        fillColor: Colors.grey[300],
      ),
    );
  }
}





   void NotifBerhasilEditInformasi(
      BuildContext context) {
    showDialog(
      context: context,

      barrierDismissible: false, // Prevent dismissal by tapping outside
      builder: (context) => Stack(
        children: <Widget>[
          // Transparent background with a slight dimming effect
          ModalBarrier(color: Colors.black.withOpacity(0.3)),
          Center(
            child: Container(
              width: 300.0, // Adjust width as needed
              height: 200.0, // Adjust height as needed
              decoration: BoxDecoration(
                color: CustomColors.secondaryColor,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Animated checkmark
                  ScaleTransition(
                    scale: Tween<double>(begin: 0.0, end: 1.0).animate(
                      CurvedAnimation(
                        parent: AlwaysStoppedAnimation(1),
                        curve: Curves.easeInOut,
                      ),
                    ),
                    child: Icon(
                      Icons.check,
                      size: 60.0,
                      color: CustomColors.whiteColor,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  // Login success text
                  Text(
                    "Top Up Berhasil!",
                    style:TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                   
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20.0),
                  // "OK" button with navigation
                  // ElevatedButton(
                  //   onPressed: () => , // Dismiss dialog
                  //   child: Text(
                  //     "Ok",
                  //     style: TextStyle(
                  //       color: Colors.white,
                  //       fontSize: 16.0,
                  //     ),
                  //   ),
                  //   style: CustomButton.DefaultButton(CustomColors.primaryColor)
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
