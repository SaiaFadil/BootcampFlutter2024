import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 10),
            ElevatedButton.icon(
              icon: Icon(Icons.account_circle),
              label: Align(
                alignment: Alignment.centerLeft,
                child: Text('Account'),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.grey[300],
                onPrimary: Colors.black,
                padding: EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 10,
                ),
              ),
              onPressed: () {
                // Navigate to Account page
              },
            ),
            SizedBox(height: 10),
            ElevatedButton.icon(
              icon: Icon(Icons.card_giftcard),
              label: Align(
                alignment: Alignment.centerLeft,
                child: Text('Voucher Discount'),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.grey[300],
                onPrimary: Colors.black,
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
              ),
              onPressed: () {
                // Navigate to Voucher Discount page
              },
            ),
            SizedBox(height: 10),
            ElevatedButton.icon(
              icon: Icon(Icons.help),
              label: Align(
                alignment: Alignment.centerLeft,
                child: Text('Help Center'),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.grey[300],
                onPrimary: Colors.black,
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
              ),
              onPressed: () {
                // Navigate to Help Center page
              },
            ),
            SizedBox(height: 10),
            ElevatedButton.icon(
              icon: Icon(Icons.logout),
              label: Align(
                alignment: Alignment.centerLeft,
                child: Text('Log Out'),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.grey[300],
                onPrimary: Colors.black,
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10),
              ),
              onPressed: () {
                // Handle Log Out action
              },
            ),
          ],
        ),
      ),
    );
  }
}
