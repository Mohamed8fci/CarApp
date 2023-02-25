import 'package:carapp/network/shared/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CarDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              child: Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/image1.png',
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 22.0, vertical: 8.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            child: SvgPicture.asset(
                              "assets/icons/CarPage-Fav.svg",
                              height: 20,
                              width: 20,
                            ),
                            radius: 22.0,
                            backgroundColor: Colors.grey,
                          ),
                          SizedBox(
                            width: 12.0,
                          ),
                          CircleAvatar(
                            child: SvgPicture.asset(
                              "assets/icons/CarPage-Share.svg",
                              height: 20,
                              width: 20,
                            ),
                            radius: 22.0,
                            backgroundColor: Colors.grey,
                          ),
                          Spacer(),
                          CircleAvatar(
                            child: SvgPicture.asset(
                              "assets/icons/Back.svg",
                              height: 20,
                              width: 20,
                            ),
                            radius: 22.0,
                            backgroundColor: Colors.grey,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 100.0,
                        width: 90.0,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                          border: Border.all(color: Colors.black12),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/Home-Ad3.svg',
                                  width: 32.0,
                                  height: 32.0,
                                ),
                                Text(
                                  'الممشي',
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.grey),
                                ),
                                Text(
                                  '2000',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 100.0,
                        width: 90.0,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                          border: Border.all(color: Colors.black12),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/Home-Ad2.svg',
                                  width: 32.0,
                                  height: 32.0,
                                ),
                                Text(
                                  'سنة الصنع',
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.grey),
                                ),
                                Text(
                                  '2009',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 100.0,
                        width: 90.0,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                          border: Border.all(color: Colors.black12),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                  'assets/icons/Car Page - Slindr.svg',
                                  width: 32.0,
                                  height: 32.0,
                                ),
                                Text(
                                  'المحرك/سلندر',
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.grey),
                                ),
                                Text(
                                  '6',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 8.0),
                    child: Text(
                      'د.ك',
                      style: TextStyle(color: Colors.black, fontSize: 18.0),
                    ),
                  ),
                  Text(
                    '8,700',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'يوكن بحالة جيدة',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin:
                  EdgeInsets.only(left: defaultPadding, right: defaultPadding),
              decoration: BoxDecoration(
                color: Colors.red[900],
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                border: Border.all(color: Colors.white10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Text(
                      'مكفولة حتي 7000  كم',
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 22.0, vertical: 8.0),
                    child: SvgPicture.asset(
                      'assets/icons/CarPage-Makfula.svg',
                      color: Colors.white,
                      width: 24.0,
                      height: 24.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: Container(
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 90.0,
                          ),
                          Text(
                            'ابيض',
                            style: TextStyle(fontSize: 18.0),
                          ),
                          Spacer(),
                          Text(
                            'اللون الخارجي',
                            style: TextStyle(fontSize: 18.0),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Icon(Icons.directions_car),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 90.0,
                          ),
                          Text(
                            'بيج',
                            style: TextStyle(fontSize: 18.0),
                          ),
                          Spacer(),
                          Text(
                            'اللون الداخلي',
                            style: TextStyle(fontSize: 18.0),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Icon(
                            Icons.directions_car_sharp,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 90.0,
                          ),
                          Text(
                            'مخمل',
                            style: TextStyle(fontSize: 18.0),
                          ),
                          Spacer(),
                          Text(
                            'نوع المقعد',
                            style: TextStyle(fontSize: 18.0),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Icon(Icons.airline_seat_recline_extra),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 90.0,
                          ),
                          Icon(
                            Icons.check,
                            color: Colors.green,
                          ),
                          Spacer(),
                          Text(
                            'فتحة سقف',
                            style: TextStyle(fontSize: 18.0),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Icon(Icons.local_car_wash),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 90.0,
                          ),
                          Icon(
                            Icons.check,
                            color: Colors.green,
                          ),
                          Spacer(),
                          Text(
                            'كاميرا خلفية',
                            style: TextStyle(fontSize: 18.0),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Icon(
                            Icons.camera,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 70.0,
                          ),
                          Text(
                            'أمامي - خلفي',
                            style: TextStyle(fontSize: 18.0),
                          ),
                          Spacer(),
                          Text(
                            'سينسر',
                            style: TextStyle(fontSize: 18.0),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Icon(Icons.car_rental),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 90.0,
                          ),
                          Text(
                            '6',
                            style: TextStyle(fontSize: 18.0),
                          ),
                          Spacer(),
                          Text(
                            'سليندر',
                            style: TextStyle(fontSize: 18.0),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Icon(Icons.auto_fix_high),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 80.0,
                          ),
                          Text(
                            'اوتوماتيك',
                            style: TextStyle(fontSize: 18.0),
                          ),
                          Spacer(),
                          Text(
                            'ناقل حركة',
                            style: TextStyle(fontSize: 18.0),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Icon(Icons.approval),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
              child: Text(
                'رنجات المنيوم 18 أنش أسود كروم - ديكور خشب + كروم - مقعد السائق الكهرباي - دواسات جانبية - تحكم بالمقود مع تعديل يدوي - f1 - نظام المرتفعات - سايد بريك كهربائي - مرأة دخليك اوتو - USB - traction off - شاحن كهربائي - 7 مقاعد الخلفي والوسطي قابل للاغلاق - جناح خلفي - عواكس خلفية - سيرفس منتظم بالوكالة',
                style: TextStyle(fontSize: 14.0, color: Colors.black),
                textDirection: TextDirection.rtl,
              ),
            ),
            Container(
              margin:
                  EdgeInsets.only(left: defaultPadding, right: defaultPadding),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: const BorderRadius.all(Radius.circular(22)),
                border: Border.all(color: Colors.white10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'كل السيارات',
                    style: TextStyle(fontSize: 16.0, color: Colors.white),
                  ),
                  SizedBox(
                    width: 22.0,
                  ),
                  Text(
                    'يوكن للسيارات المعتمدة',
                    style: TextStyle(fontSize: 16.0, color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 22.0, vertical: 8.0),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://png.pngitem.com/pimgs/s/80-800194_transparent-users-icon-png-flat-user-icon-png.png",
                        //height: 22,
                        // width: 22,
                      ),
                      radius: 18.0,
                      backgroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              mainAxisSpacing: 1.0,
              crossAxisSpacing: 1.0,
              childAspectRatio: 1 / 1.4,
              children: List.generate(
                2,
                (index) => buildGridProduct(),
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 4.0),
                  padding: EdgeInsets.symmetric(
                    horizontal: 14.0,
                    vertical: defaultPadding / 2,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'احجز السيارة',
                        style: TextStyle(fontSize: 16.0, color: Colors.black),
                      ),
                      SizedBox(
                        width: 9.0,
                      ),
                      SvgPicture.asset(
                        'assets/icons/CarPage-Book.svg',
                        width: 19.0,
                        height: 19.0,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: defaultPadding / 2,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Row(
                    children: [
                      Text(
                        'موقع السيارة',
                        style: TextStyle(fontSize: 16.0, color: Colors.white),
                      ),
                      SizedBox(
                        width: 9.0,
                      ),
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 4.0,
                ),
                CircleAvatar(
                  child: SvgPicture.asset(
                    "assets/icons/Car Page - Chat by WHatsapp.svg",
                    height: 19,
                    width: 19,
                  ),
                  radius: 19.0,
                  backgroundColor: Colors.grey,
                ),
                SizedBox(
                  width: 4.0,
                ),
                CircleAvatar(
                  child: SvgPicture.asset(
                    "assets/icons/Car Page - Call.svg",
                    height: 20,
                    width: 20,
                  ),
                  radius: 19.0,
                  backgroundColor: Colors.grey,
                ),
              ],
            ),
            SizedBox(
              height: 20,
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
          Image(
            image: AssetImage(
              'assets/images/image1.png',
            ),
            width: double.infinity,
            height: 140.0,
            fit: BoxFit.cover,
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
