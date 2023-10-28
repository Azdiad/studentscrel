import 'package:flutter/material.dart';
import 'package:students/View/widget/detailtile.dart';
import 'package:students/apifetch.dart';
import 'package:students/model/model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchControllers = TextEditingController();
  @override
  void initState() {
    super.initState();
    fetching();
  }

  @override
  Widget build(BuildContext context) {
    Details details = Details();
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Student List',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.yellow[300],
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                SearchBar(
                  leading: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                  ),
                  controller: searchControllers,
                ),
                const SizedBox(
                  height: 20,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const detailtile(),
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: Colors.cyanAccent[400],
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30))),
                              child: ListTile(
                                  title: Text('Students'),
                                  subtitle: const Text('Street',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  trailing: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.star))),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          )),
    );
  }
}
