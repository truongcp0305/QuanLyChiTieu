import 'package:flutter/material.dart';
import 'package:quan_ly_chi_tieu/screens/models/icons.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var icons = IconsApp();
    List<String> key_map1 = [];
    List<String> value_map1 = [];
    icons.icons_1.forEach((element) {
      element.keys.forEach((key) {
        key_map1.add(key);
      });
      element.values.forEach((value) {
        value_map1.add(value);
      });
    });
    return Scaffold(
      appBar: AppBar(
        title: Text('Chọn danh mục'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Text(
              'Danh mục chi tiêu',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Colors.grey
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: icons.icons_1.length,
              itemBuilder: (context, index){
                return GestureDetector(
                  onTap: (){},
                  child: ListTile(
                    leading: Image.network(
                        value_map1[index].toString(),
                      height: 37,
                      width: 37,
                      fit: BoxFit.cover,
                    ),
                    title: Text(key_map1[index]),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
