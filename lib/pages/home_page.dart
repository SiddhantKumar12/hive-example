import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Box homeBox;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeBox = Hive.box("home");
    homeBox.put("1", "sidd");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          homeBox.get("1"),
        ),
      ],
    );
  }
}
