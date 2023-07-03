import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {


  final List<Contact> contacts = [
    Contact('John Doe', 'john.doe@example.com', '1234567890'),
    Contact('Jane Smith', 'jane.smith@example.com', '9876543210'),
    Contact('Bob Johnson', 'bob.johnson@example.com', '5555555555'),
    Contact('Sarah Miller', 'sarah.miller@example.com', '1234567890'),
    Contact('John Davis', 'john.davis@example.com', '9876543210'),
    Contact('Emily Wilson', 'emily.wilson@example.com', '2468135790'),
    Contact('Michael Thompson', 'michael.thompson@example.com', '1357924680'),
    Contact('Jessica Martinez', 'jessica.martinez@example.com', '3698521470'),
    Contact('David Anderson', 'david.anderson@example.com', '9517530862'),
    Contact('Jennifer Brown', 'jennifer.brown@example.com', '8642097531'),
    Contact('Christopher Taylor', 'christopher.taylor@example.com', '5802468139'),
    Contact('Melissa Garcia', 'melissa.garcia@example.com', '3147258360'),
    Contact('Andrew Hernandez', 'andrew.hernandez@example.com', '7968523014'),
    Contact('Amanda Thomas', 'amanda.thomas@example.com', '4680312579'),
    Contact('Daniel Rodriguez', 'daniel.rodriguez@example.com', '3579146802'),
    Contact('Michelle Lee', 'michelle.lee@example.com', '7890123456'),
    Contact('Matthew White', 'matthew.white@example.com', '2109876543'),
    Contact('Ashley Hall', 'ashley.hall@example.com', '6543210987'),
    Contact('Ryan Clark', 'ryan.clark@example.com', '9876543210'),
    Contact('Nicole Lewis', 'nicole.lewis@example.com', '1357924680'),
    Contact('William Turner', 'william.turner@example.com', '3698521470'),
    Contact('Linda Scott', 'linda.scott@example.com', '9517530862'),
    Contact('Brian Green', 'brian.green@example.com', '8642097531'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(contacts[index].name),
            onTap: () {
              _showContactDetails(context, contacts[index]);
            },
          );
        },
      ),

    );
  }
}
void _showContactDetails(BuildContext context, Contact contact) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Contact Details', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text(
              contact.name,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text('Email: ${contact.email}',style: TextStyle(fontSize: 16),),
            SizedBox(height: 8.0),
            Text('Phone: ${contact.phone}',style: TextStyle(fontSize: 16),),
          ],
        ),
      );
    },
  );
}

class Contact {
  final String name;
  final String email;
  final String phone;

  Contact(this.name, this.email, this.phone);
}
