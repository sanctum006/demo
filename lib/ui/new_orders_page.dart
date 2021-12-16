import 'package:flutter/material.dart';

class NewOrdersPage extends StatefulWidget {
  const NewOrdersPage({Key? key}) : super(key: key);

  @override
  _NewOrdersPageState createState() => _NewOrdersPageState();
}

class _NewOrdersPageState extends State<NewOrdersPage> {
  final lists = [
    {
      'orderNo': 'DFJ5923JC09E',
      'name': 'Pushpendra Yadav',
      'delivery': '02 Oct 2021 at 7:44 PM',
      'address': 'A/2 Shiv Nagar, Near Jain Temple',
      'city': 'Bangalore',
      'pinCode': '560004',
      'mobile': '+91-9844884488'
    },
    {
      'orderNo': 'DFJ5923JC09E',
      'name': 'Pushpendra Yadav',
      'delivery': '02 Oct 2021 at 7:44 PM',
      'address': 'A/2 Shiv Nagar, Near Jain Temple',
      'city': 'Bangalore',
      'pinCode': '560004',
      'mobile': '+91-9844884488'
    },
    {
      'orderNo': 'DFJ5923JC09E',
      'name': 'Pushpendra Yadav',
      'delivery': '02 Oct 2021 at 7:44 PM',
      'address': 'A/2 Shiv Nagar, Near Jain Temple',
      'city': 'Bangalore',
      'pinCode': '560004',
      'mobile': '+91-9844884488'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(50), child: CustomNewOrdersAppBar()),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView.builder(
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return customNewOrdersCard(context, lists, index);
                }),
          ),
          // SingleChildScrollView(
          // scrollDirection: Axis.vertical,
          // child: Padding(
          //   padding: EdgeInsets.all(10),
          //   child: Column(
          //     children: [Text('asd')],
          //   ),
          // ))
        )
        // body:
        );
  }
}

Container customNewOrdersCard(BuildContext context, List lists, int index) {
  return Container(
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.only(bottom: 20),
    color: Colors.blue[50],
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Ordered No'),
                Text(lists[index]['orderNo']),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('Delivery'),
                Text(lists[index]['delivery']),
              ],
            ),
          ],
        ),
        Divider(
          color: Colors.grey[700],
          height: 25,
          thickness: 1,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(lists[index]['name']),
            Text(lists[index]['address']),
            Text(lists[index]['city'] + ' ' + lists[index]['pinCode']),
            Text(lists[index]['mobile']),
          ],
        ),
      ],
    ),
  );
}

Widget CustomNewOrdersAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Text(
              '<- New Orders',
              style: TextStyle(color: Colors.grey[700], fontSize: 20),
            ),
          ),
        ],
      ),
    ),
  );
}
