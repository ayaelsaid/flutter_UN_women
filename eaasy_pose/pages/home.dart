import 'package:easy_pose/pages/categoreies.dart';
import 'package:easy_pose/pages/products.dart';
import 'package:easy_pose/sql.dart';
import 'package:easy_pose/widgets/grit_view.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showLoading = true;
  bool result = false;
  @override
  void initState() {
    init();
    super.initState();
  }

  void init() async {
    result = await GetIt.I.get<SqlHelper>().createTables();

    showLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () async {
        var sqlHelper = GetIt.I.get<SqlHelper>();
        var result = await sqlHelper.db!.rawQuery('PRAGMA foreign_keys');

        print(result);
      }),
      drawer: Container(),
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  color: Theme.of(context).primaryColor,
                  height: MediaQuery.of(context).size.height / 3,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Easy POS',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: 24,
                              ),
                            ),
                            Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: showLoading
                                    ? Transform.scale(
                                        scale: .5,
                                        child: const CircularProgressIndicator(
                                          color: Colors.white,
                                        ),
                                      )
                                    : CircleAvatar(
                                        radius: 10,
                                        backgroundColor:
                                            result ? Colors.green : Colors.red,
                                      ))
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        headerItem('Exchange Rate', '1USD = 50 Egp'),
                        headerItem('Today\'s Sales', '1100 Egp'),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
              child: Container(
            color: const Color(0xfffbfafb),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: GridView.count(
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                crossAxisCount: 2,
                children: [
                  GridViewItem(
                    color: Colors.orange,
                    iconData: Icons.calculate,
                    label: 'All Sales',
                    onTap: () {},
                  ),
                  GridViewItem(
                    color: Colors.pink,
                    iconData: Icons.inventory_2,
                    label: 'Products',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProductsPage()));
                    },
                  ),
                  GridViewItem(
                    color: Colors.lightBlue,
                    iconData: Icons.groups,
                    label: 'Clients',
                    onTap: () {},
                  ),
                  GridViewItem(
                    color: Colors.green,
                    iconData: Icons.point_of_sale,
                    label: 'New Sale',
                    onTap: () {},
                  ),
                  GridViewItem(
                    color: Colors.yellow,
                    iconData: Icons.category,
                    label: 'Categories',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CategoriesPage()));
                    },
                  ),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }

  Widget headerItem(
    String label,
    String value,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        elevation: 0,
        color: const Color(0xff216ce0),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 16,
                ),
              ),
              Text(
                value,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}