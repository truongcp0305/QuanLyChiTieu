import 'package:flutter/material.dart';
import 'package:quan_ly_chi_tieu/screens/bar_char_test.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.green,
        child: const Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        child: Column(

          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              width: double.infinity,
              child:  Padding(
                padding: const EdgeInsets.only(top: 20, left: 20,),
                child: Row(
                  children: [
                    Text(
                        "550,000\$",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 30
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 190),
                      child: const Icon(
                        Icons.notifications
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              width: 360,
              height: 120,
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'My wallet (wallet flat icon)',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25),
                    decoration: BoxDecoration(
                      border: BorderDirectional(top: BorderSide(width: 0.8, color: Colors.grey.shade300))
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Image.network(
                              "https://cdn2.iconfinder.com/data/icons/hotel-service-32/32/wallet_finance_money_business_saving-512.png",
                            width: 30,
                            height: 30,
                            fit: BoxFit.cover,
                          ),
                        ),
                         const Padding(
                           padding: EdgeInsets.only(top: 15, left: 20),
                           child: Text("Cash", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),),
                         ),
                         Padding(
                          padding: EdgeInsets.only(top: 15, left: 150),
                          child: Text(
                              "550,000\$",
                            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            const Align(
              alignment: Alignment(-0.9, 0),
              child: Text(
                'Bao cao chi tieu',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
            Container(
              width: 360,
              height: 300,
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.only(top: 10),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              child: Column(
                children: [
                  BarChartSample7(),
                  Text('data')
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
