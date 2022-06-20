import 'package:flutter/material.dart';

import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String dropdownValue = 'USD Dollar';
  String dropdownTwoValue = 'All';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        leading: const Icon(LineIcons.arrowLeft),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(LineIcons.alternateExternalLink),
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(color: Colors.black),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage('assets/am_flag.jpg'),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  child: Container(
                    height: 30,
                    child: Stack(children: [
                      const Center(
                        child: Text(
                          'USD Account',
                          style: TextStyle(
                              color: Color(0xFF6E6E6E),
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 3,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 4),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xFF232323)),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8))),
                          child: const Text('Hide',
                              style: TextStyle(
                                  color: Color(0xFFA4A4A4), fontSize: 10)),
                        ),
                      ),
                    ]),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 5, right: 14),
                      child: Text(
                        '\$',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Text(
                      '180,970.83',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            width: double.infinity,
            decoration: const BoxDecoration(color: Color(0xFF0E0E10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Transactions History',
                    style: TextStyle(color: Colors.white)),
                const SizedBox(height: 10),
                Container(
                  height: 38,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1.0, color: const Color(0xFF303032)),
                      borderRadius: BorderRadius.circular(6)),
                  width: double.infinity,
                  child: dropOne(),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      height: 38,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1.0, color: const Color(0xFF303032)),
                          borderRadius: BorderRadius.circular(6)),
                      width: MediaQuery.of(context).size.width - 80,
                      child: dropTwo(),
                    ),
                    const Spacer(),
                    Container(
                      height: 38,
                      // padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1.0, color: const Color(0xFF303032)),
                          borderRadius: BorderRadius.circular(6)),
                      width: 38,
                      child: const Center(
                          child: Icon(
                        Icons.calendar_today_outlined,
                        size: 16,
                        color: Color(0xFFCDCDCB),
                      )),
                    ),
                  ],
                ),
              ],
            ),
          ),
          greyBlock('Yesterday'),
          brandList('assets/pret.png', 'Pret A Manager', '-\$55.31 USD'),
          lineLine(),
          brandList('assets/left.png', 'Darren Hodking', '+\$130.31 USD'),
          lineLine(),
          brandList('assets/mcdon.png', 'McDonalds', '-\$55.31 USD'),
          lineLine(),
          brandList('assets/starbucks.png', 'Starbucks', '-\$55.31 USD'),
          lineLine(),
          brandList('assets/right.png', 'Dave Winklevoss', '-\$300.31 USD'),
          lineLine(),
          greyBlock('Sat, Dec 11'),
          brandList('assets/virgin.png', 'Virgin Megastore', '-\$500.31 USD'),
          lineLine(),
          brandList('assets/nike.jpg', 'Nike', '-\$500.31 USD'),
          lineLine(),
          greyBlock('Thurs, Dec 9'),
          brandList('assets/louis.png', 'Louis Vuitton', '-\$500.31 USD'),
          lineLine(),
          brandList('assets/carrefoure.png', 'Carrefour', '-\$500.31 USD'),
          lineLine(),
        ],
      )),
    );
  }

  Divider lineLine() {
    return const Divider(
      height: 1,
      color: Color(0xFFF2F2F2),
    );
  }

  ListTile brandList(image, name, sum) {
    return ListTile(
      dense: true,
      visualDensity: const VisualDensity(vertical: -1.4),
      leading: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 12,
        backgroundImage: AssetImage(image),
      ),
      title: Text(
        name,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: const Text(
        '12:23',
        style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w700,
            color: Color(0xFFB9B9B9)),
      ),
      trailing: Text(
        sum,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  Container greyBlock(text) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 9),
        width: double.infinity,
        decoration: const BoxDecoration(color: Color(0xFFCCCCCC)),
        child: Text(
          text,
          style: const TextStyle(
              fontSize: 14, color: Colors.black, fontWeight: FontWeight.w600),
        ));
  }

  DropdownButton<String> dropOne() {
    return DropdownButton<String>(
      dropdownColor: Colors.black,
      underline: Container(),
      value: dropdownValue,
      icon: const Icon(
        Icons.expand_more,
        size: 15,
        color: Color(0xFFCDCDCB),
      ),
      isExpanded: true,
      elevation: 16,
      style: const TextStyle(color: Color(0xFFCDCDCB)),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['USD Dollar', 'RUB Rubl']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

  DropdownButton<String> dropTwo() {
    return DropdownButton<String>(
      dropdownColor: Colors.black,
      underline: Container(),
      value: dropdownTwoValue,
      icon: const Icon(
        Icons.expand_more,
        size: 15,
        color: Color(0xFFCDCDCB),
      ),
      isExpanded: true,
      elevation: 16,
      style: const TextStyle(color: Color(0xFFCDCDCB)),
      onChanged: (String? newValue) {
        setState(() {
          dropdownTwoValue = newValue!;
        });
      },
      items: <String>['All', 'Not all']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
