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

  Future fetchNewOrders() async {
    return lists;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50), child: CustomNewOrdersAppBar()),
      body: FutureBuilder(
        future: fetchNewOrders(), // async work
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.none &&
              snapshot.hasData == null) {
            //print('project snapshot data is: ${projectSnap.data}');
            return Container();
          }

          return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                return customNewOrdersCard(context, lists, index);
              });
        },
      ),
      // body: Center(
      //   child: Padding(
      //     padding: const EdgeInsets.all(20.0),
      //     child: ListView.builder(
      //         itemCount: 3,
      //         itemBuilder: (BuildContext context, int index) {
      //           return customNewOrdersCard(context, lists, index);
      //         }),
      //   ),
      // SingleChildScrollView(
      // scrollDirection: Axis.vertical,
      // child: Padding(
      //   padding: EdgeInsets.all(10),
      //   child: Column(
      //     children: [Text('asd')],
      //   ),
      // ))
      // )
      // body:
    );
  }
}

Container customNewOrdersCard(BuildContext context, List lists, int index) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
    color: Colors.grey[50],
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Ordered No',
                      style: TextStyle(color: Colors.grey[600], height: 2)),
                  Text(lists[index]['orderNo']),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('Delivery', style: TextStyle(height: 2)),
                  Text(lists[index]['delivery']),
                ],
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.grey[400],
          height: 15,
          thickness: 1,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(lists[index]['name'],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        height: 1.5,
                      )),
                  Text(lists[index]['address'],
                      style: TextStyle(height: 1.5, fontSize: 13)),
                  Text(lists[index]['city'] + ' ' + lists[index]['pinCode'],
                      style: TextStyle(height: 1.5, fontSize: 13)),
                  Text(lists[index]['mobile'],
                      style: TextStyle(height: 1.5, fontSize: 13)),
                ],
              )
            ],
          ),
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
