import 'package:carapp/modules/CarDetails/CarDetailsScreen.dart';
import 'package:carapp/network/shared/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:dashed_circle/dashed_circle.dart';

class HomePageScreen extends StatefulWidget {
  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen>
    with SingleTickerProviderStateMixin {
  late Animation gap;

  late Animation<double> base;

  late Animation<double> reverse;

  late AnimationController controller;

  /// Init
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 4));
    base = CurvedAnimation(parent: controller, curve: Curves.easeOut);
    reverse = Tween<double>(begin: 0.0, end: -1.0).animate(base);
    gap = Tween<double>(begin: 3.0, end: 0.0).animate(base)
      ..addListener(() {
        setState(() {});
      });
    controller.forward();
  }

  /// Dispose
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0.0,
        backgroundColor: Colors.grey[600],
        title: Stack(
          children: <Widget>[
            Icon(
              Icons.notifications,
              size: 32.0,
            ),
            new Positioned(
              right: 0,
              child: new Container(
                padding: EdgeInsets.all(1),
                decoration: new BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(8),
                ),
                constraints: BoxConstraints(
                  minWidth: 12,
                  minHeight: 12,
                ),
                child: new Text(
                  '2',
                  style: new TextStyle(
                    color: Colors.white,
                    fontSize: 9,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/Home - menu.svg',
              height: 20,
              width: 20,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: RotationTransition(
                            turns: base,
                            child: DashedCircle(
                              gapSize: gap.value,
                              dashes: 40,
                              color: Color(0XFFED4634),
                              child: RotationTransition(
                                turns: reverse,
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: CircleAvatar(
                                    radius: 40.0,
                                    backgroundImage:
                                        AssetImage('assets/images/image1.png'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          'جيلي',
                          style: TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: RotationTransition(
                            turns: base,
                            child: DashedCircle(
                              gapSize: gap.value,
                              dashes: 40,
                              color: Color(0XFFED4634),
                              child: RotationTransition(
                                turns: reverse,
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: CircleAvatar(
                                    radius: 40.0,
                                    backgroundImage:
                                        AssetImage('assets/images/image11.png'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          'تويوتا',
                          style: TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: RotationTransition(
                            turns: base,
                            child: DashedCircle(
                              gapSize: gap.value,
                              dashes: 40,
                              color: Color(0XFFED4634),
                              child: RotationTransition(
                                turns: reverse,
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: CircleAvatar(
                                    radius: 40.0,
                                    backgroundImage:
                                        AssetImage('assets/images/image1.png'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          'بي أم دبليو',
                          style: TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: RotationTransition(
                            turns: base,
                            child: DashedCircle(
                              gapSize: gap.value,
                              dashes: 40,
                              color: Color(0XFFED4634),
                              child: RotationTransition(
                                turns: reverse,
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: CircleAvatar(
                                      radius: 40.0,
                                      backgroundImage: AssetImage(
                                          'assets/images/image11.png')),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          'جيلي',
                          style: TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Container(
              height: 150.0,
              width: double.infinity,
              child: Image(
                image: AssetImage('assets/images/image6.png'),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "                   ابحث عن سيارتك",
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                  ),
                  suffixIcon: InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(defaultPadding * 0.75),
                      margin:
                          EdgeInsets.symmetric(horizontal: defaultPadding / 2),
                      child: SvgPicture.asset(
                        'assets/icons/Home-Search.svg',
                        width: 22,
                        height: 22,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: defaultPadding),
                  padding: EdgeInsets.symmetric(
                    horizontal: defaultPadding * 1.5,
                    vertical: defaultPadding / 2,
                  ),
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    border: Border.all(color: Colors.white10),
                  ),
                  child: Center(
                    child: Text(
                      'أمريكي',
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: defaultPadding),
                  padding: EdgeInsets.symmetric(
                    horizontal: defaultPadding * 1.5,
                    vertical: defaultPadding / 2,
                  ),
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    border: Border.all(color: Colors.white10),
                  ),
                  child: Center(
                    child: Text(
                      'أوروبي',
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: defaultPadding),
                  padding: EdgeInsets.symmetric(
                    horizontal: defaultPadding * 1.5,
                    vertical: defaultPadding / 2,
                  ),
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    border: Border.all(color: Colors.white10),
                  ),
                  child: Center(
                    child: Text(
                      'أسيوي',
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8.0,
            ),
            GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              mainAxisSpacing: 1.0,
              crossAxisSpacing: 1.0,
              childAspectRatio: 1 / 1.4,
              children: List.generate(
                6,
                (index) => buildGridProduct(),
              ),
            ),
            Container(
              height: 150.0,
              width: double.infinity,
              child: Image(
                image: AssetImage('assets/images/image5.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildGridProduct() => Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Container(
              width: double.infinity,
              color: Colors.grey[300],
              child: Center(
                child: Text(
                  'جي أم سي | يوكن | الفئة الرابعة',
                  style: TextStyle(fontSize: 14.0),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CarDetailsScreen()));
            },
            child: Image(
              image: AssetImage(
                'assets/images/image1.png',
              ),
              width: double.infinity,
              height: 140.0,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 88.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            border: Border.all(color: Colors.white),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/CarPage-Makfula.svg',
                                  width: 20.0,
                                  height: 20.0,
                                  color: Colors.black,
                                ),
                                Text(
                                  'مكفولة لـ',
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.black),
                                ),
                                Text(
                                  '2021',
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 80.0,
                          width: 36.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            border: Border.all(color: Colors.white10),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/Home-Ad3.svg',
                                  width: 20.0,
                                  height: 20.0,
                                ),
                                Text(
                                  'كم',
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.black),
                                ),
                                Text(
                                  '20000',
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 80.0,
                          width: 46.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            border: Border.all(color: Colors.white10),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/Home-Ad2.svg',
                                  width: 20.0,
                                  height: 20.0,
                                ),
                                Text(
                                  'سنة الصنع',
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.black),
                                ),
                                Text('2019'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 80.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            border: Border.all(color: Colors.white10),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/Home-ad1.svg',
                                  width: 20.0,
                                  height: 20.0,
                                ),
                                Text(
                                  'السعر',
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.black),
                                ),
                                Text(
                                  '12,700',
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
}
