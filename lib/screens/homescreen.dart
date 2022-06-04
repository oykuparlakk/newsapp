import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newsapp/vm/listviewmodel.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<ListViewModel>(context, listen: false).fetchTopNewsHeadlines();
  }

  @override
  Widget build(BuildContext context) {
    var listviewmodel = Provider.of<ListViewModel>(context);
    return const Scaffold();
  }
}
