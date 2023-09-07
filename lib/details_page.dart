import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});
  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  bool isShowPlaceOrder=false;
  int _tabTextIndexSelected=0;
  final List<String> cupQuantity = [
    '1','2','3','4',
  ];
  String? selectedQuantityValue;
  final List<String> cupSize = [
    'S','M','L'
  ];
  String? selectedSizeValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height - 20.0,
                width: MediaQuery.of(context).size.width,
                color: const Color(0xFFF3B2B7),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 2,
                child: Container(
                  height: MediaQuery.of(context).size.height/2 -20.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 2 + 25.0,
                left: 15.0,
                child: Container(
                  height: MediaQuery.of(context).size.height / 2 - 50.0,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    children: [
                      const Text(
                        'Preparation Time',
                        style: TextStyle(
                          fontFamily: 'nunito',
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF726B68),
                        ),
                      ),
                      const SizedBox(height: 7.0),
                      const Text(
                        '5min',
                        style: TextStyle(
                            fontFamily: 'nunito',
                            fontSize: 14.0,
                            color: Color(0xFFC6C4C4)),
                      ),
                      const SizedBox(height: 10.0),
                      Padding(
                        padding: const EdgeInsets.only(right: 35.0),
                        child: Container(
                          height: 0.5,
                          color: const Color(0xFFC6C4C4),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      const Text(
                        'Ingredients',
                        style: TextStyle(
                            fontFamily: 'nunito',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF726B68)),
                      ),
                      const SizedBox(height: 20.0),
                      Container(
                        height: 120.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            buildIngredientItem(
                              'Water',
                              const Icon(Feather.droplet, size: 26.0, color: Colors.white),
                              const Color(0xFF6FC5DA),
                            ),
                            buildIngredientItem(
                              'Brewed Espresso',
                              const Icon(Feather.target, size: 26.0, color: Colors.white),
                              const Color(0xFF615955),
                            ),
                            buildIngredientItem(
                              'Sugar',
                              const Icon(Feather.box, size: 26.0, color: Colors.white),
                              const Color(0xFFF39595),
                            ),
                            buildIngredientItem(
                              'Toffee Nut Syrup',
                              const Icon(MaterialCommunityIcons.peanut_outline , size: 26.0, color: Colors.white),
                              const Color(0xFF8FC28A),
                            ),
                            buildIngredientItem(
                              'Natural Flavors',
                              const Icon(MaterialCommunityIcons.leaf_maple, size: 26.0, color: Colors.white),
                              const Color(0xFF3B8079),
                            ),
                            buildIngredientItem(
                              'Vanilla Syrup',
                              const Icon(MaterialCommunityIcons.flower_tulip_outline, size: 26.0, color: Colors.white),
                              const Color(0xFFF8B870),
                            ),
                            // Add more ingredient items here
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 35.0),
                        child: Container(
                          height: 0.5,
                          color: const Color(0xFFC6C4C4),
                        ),
                      ),
                      const SizedBox(height:10.0),
                      const Text('Nutrition Information',
                        style: TextStyle(
                            fontFamily: 'nunito',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF726B68)),
                      ),
                      const SizedBox(height: 10.0),
                      const Row(
                        children: [
                          Text('Calories',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 14.0,
                                color: Color(0xFFD4D3D2)
                            )
                          ),
                          SizedBox(width: 15.0),
                          Text('250',
                              style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF716966)
                              ),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Text('Proteins',
                              style: TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 14.0,
                                  color: Color(0xFFD4D3D2)
                              )
                          ),
                          SizedBox(width: 15.0),
                          Text('10g',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF716966)
                            ),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Text('Caffeine',
                              style: TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 14.0,
                                  color: Color(0xFFD4D3D2)
                              )
                          ),
                          SizedBox(width: 15.0),
                          Text('150mg',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF716966)
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15.0),
                      //Line
                      Padding(
                        padding: const EdgeInsets.only(right: 35.0),
                        child: Container(
                          height: 0.5,
                          color: const Color(0xFFC6C4C4),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      InkWell(
                        onTap: () {
                          setState( () {
                            isShowPlaceOrder = true;
                          });
                        },
                        child: Padding(
                            padding: const EdgeInsets.only(right: 25.0),
                          child: Container(
                            height: 50.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35.0),
                              color: const Color(0xFF473D3A),
                            ),
                            child: const Center(
                              child: Text(
                                'Make Order',
                                style: TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ),
                      const SizedBox(height: 5.0)
                    ],
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height /6,
                  left: 120.0,
                  child: Container(
                    width: 400.0,
                    height: 400.0,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/pinkcup.png'),
                        fit: BoxFit.cover,
                      )
                    ),
                  ),
              ),
              Positioned(
                top: 25.0,
                  left: 15.0,
                  child: Container(
                    height: 300,
                    width: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              width: 150.0,
                              child: const Text(
                                'Caramel Macchiato',
                                  style: TextStyle(
                                      fontFamily: 'varela',
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  )
                              ),
                            ),
                            const SizedBox(width: 15.0),
                            Container(
                              width: 40.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.white
                              ),
                              child: const Center(
                                  child: Icon(Icons.favorite, size: 18.0, color: Colors.red)
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 10.0),
                        Container(
                          width: 170.0,
                          child: const Text('Freshly steamed milk with vanilla-flavored syrup is marked with espresso and topped with caramel drizzle for an oh-so-sweet finish.',
                              style: TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 13.0,
                                  color: Colors.white
                              )
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        Row(
                          children: [
                            Container(
                              height: 60.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                  color: const Color(0xFF473D3A)
                              ),
                              child: const Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('4.2',
                                      style: TextStyle(
                                          fontFamily: 'nunito',
                                          fontSize: 13.0,
                                          color: Colors.white
                                      ),
                                    ),
                                    Text('/5',
                                      style: TextStyle(
                                          fontFamily: 'nunito',
                                          fontSize: 13.0,
                                          color: Color(0xFF7C7573)
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 15.0),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Stack(
                                      children: [
                                        Container(
                                            height: 35.0,
                                            width: 80.0
                                        ),
                                        Positioned(
                                            left: 40.0,
                                            child: Container(
                                                height: 35.0,
                                                width: 35.0,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(17.5),
                                                    border: Border.all(
                                                        color: const Color(0xFFF3B2B7),
                                                        style: BorderStyle.solid,
                                                        width: 1.0
                                                    ),
                                                    image: const DecorationImage(
                                                        image: AssetImage('assets/man.jpg'),
                                                        fit: BoxFit.cover
                                                    )
                                                )
                                            )
                                        ),
                                        Positioned(
                                          left: 20.0,
                                          child: Container(
                                            height: 35.0,
                                            width: 35.0,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(17.5),
                                                image: const DecorationImage(
                                                    image: AssetImage('assets/model.jpg'),
                                                    fit: BoxFit.cover
                                                ),
                                                border: Border.all(
                                                    color: const Color(0xFFF3B2B7),
                                                    style: BorderStyle.solid,
                                                    width: 1.0
                                                )
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 35.0,
                                          width: 35.0,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(17.5),
                                              image: const DecorationImage(
                                                  image: AssetImage('assets/model2.jpg'),
                                                  fit: BoxFit.cover
                                              ),
                                              border: Border.all(
                                                  color: const Color(0xFFF3B2B7),
                                                  style: BorderStyle.solid,
                                                  width: 1.0
                                              )
                                          ),
                                        ),
                                      ]
                                  ),
                                  const SizedBox(
                                      height: 3.0
                                  ),
                                  const Text(
                                    '+ 27 more',
                                    style: TextStyle(
                                        fontFamily: 'nunito',
                                        fontSize: 12.0,
                                        color: Colors.white
                                    ),
                                  )
                                ]
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
              ),
              Visibility(
                visible: isShowPlaceOrder,
                child: Positioned(
                    top: MediaQuery.of(context).size.height/2 - 150.0,
                    child: Container(
                      height: MediaQuery.of(context).size.height/2 + 150.0,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40.0),
                          topLeft: Radius.circular(40.0),
                        ),
                          color: Colors.white
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isShowPlaceOrder=false;
                                });
                              },
                              child: Container(
                                alignment: Alignment.centerRight,
                                child:  const Icon(Entypo.cross, size: 38.0, color: Colors.grey),
                              ),
                            ),
                            const SizedBox(height: 10.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    const Text('Temperature',
                                        style: TextStyle(
                                          fontFamily: 'nunito',
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                        )
                                    ),
                                    const SizedBox(
                                      height: 8.0,
                                    ),
                                    FlutterToggleTab(
                                        labels: const ['Hot', 'Cold'],
                                        height: 36,
                                        width: 28,
                                        borderRadius: 20,
                                        selectedIndex: _tabTextIndexSelected,
                                        selectedBackgroundColors: const [Colors.black54],
                                        selectedTextStyle: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        unSelectedTextStyle: const TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w500
                                        ),
                                        selectedLabelIndex: (index) {
                                          setState( () {
                                            _tabTextIndexSelected = index;
                                           }
                                          );
                                        },
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    const Text('Quantity',
                                        style: TextStyle(
                                          fontFamily: 'nunito',
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                        )
                                    ),
                                    const SizedBox(height: 8.0),
                                    Container(
                                      height: 36,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const Icon(Entypo.circle_with_minus, size: 36.0, color: Color(0xFFDAB68A)),
                                          Container(
                                            margin: const EdgeInsets.symmetric(horizontal: 4),
                                            child: const Text(
                                              '2',
                                              style: TextStyle(
                                                fontSize: 28.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          const Icon(Entypo.circle_with_plus, size: 36.0, color: Color(0xFFDAB68A)),
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],

                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Container(
                                height: 0.5,
                                color: const Color(0xFFC6C4C4),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Text('Select Cup',
                                        style: TextStyle(
                                          fontFamily: 'nunito',
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                        )
                                    ),
                                    const SizedBox(width: 10.0),
                                    Container(
                                      height: 42,
                                      width: 60,
                                      child: DropdownButtonFormField2<String>(
                                        isExpanded: true,
                                        decoration: InputDecoration(
                                          // Add Horizontal padding using menuItemStyleData.padding so it matches
                                          // the menu padding when button's width is not specified.
                                          contentPadding: const EdgeInsets.symmetric(vertical: 10),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(15),
                                          ),
                                          // Add more decoration..
                                        ),
                                        hint: const Text(
                                          '-',
                                          style: TextStyle(fontSize: 14),
                                        ),
                                        items: cupQuantity
                                            .map((item) => DropdownMenuItem<String>(
                                          value: item,
                                          child: Text(
                                            item,
                                            style: const TextStyle(
                                              fontSize: 14,
                                            ),
                                          ),
                                        ))
                                            .toList(),
                                        validator: (value) {
                                          if (value == null) {
                                            return 'Please select.';
                                          }
                                          return null;
                                        },
                                        onChanged: (value) {
                                          //Do something when selected item is changed.
                                        },
                                        onSaved: (value) {
                                          selectedQuantityValue = value.toString();
                                        },
                                        buttonStyleData: const ButtonStyleData(
                                          padding: EdgeInsets.only(right: 4),
                                        ),
                                        iconStyleData: const IconStyleData(
                                          icon: Icon(
                                            Icons.arrow_drop_down,
                                            color: Colors.black45,
                                          ),
                                          iconSize: 24,
                                        ),
                                        dropdownStyleData: DropdownStyleData(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15),
                                          ),
                                        ),
                                        menuItemStyleData: const MenuItemStyleData(
                                          padding: EdgeInsets.symmetric(horizontal: 16),
                                        ),
                                      ),
                                    ),
                                  ]
                                ),
                                Row(
                                    children: [
                                      const Text('Select Size',
                                          style: TextStyle(
                                            fontFamily: 'nunito',
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          )
                                      ),
                                      const SizedBox(width: 10.0),
                                      Container(
                                        height: 42,
                                        width: 60,
                                        child: DropdownButtonFormField2<String>(
                                          isExpanded: true,
                                          decoration: InputDecoration(
                                            // Add Horizontal padding using menuItemStyleData.padding so it matches
                                            // the menu padding when button's width is not specified.
                                            contentPadding: const EdgeInsets.symmetric(vertical: 10),
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(15),
                                            ),
                                            // Add more decoration..
                                          ),
                                          hint: const Text(
                                            '-',
                                            style: TextStyle(fontSize: 14),
                                          ),
                                          items: cupSize
                                              .map((item) => DropdownMenuItem<String>(
                                            value: item,
                                            child: Text(
                                              item,
                                              style: const TextStyle(
                                                fontSize: 14,
                                              ),
                                            ),
                                          ))
                                              .toList(),
                                          validator: (value) {
                                            if (value == null) {
                                              return 'Please select.';
                                            }
                                            return null;
                                          },
                                          onChanged: (value) {
                                            //Do something when selected item is changed.
                                          },
                                          onSaved: (value) {
                                            selectedSizeValue = value.toString();
                                          },
                                          buttonStyleData: const ButtonStyleData(
                                            padding: EdgeInsets.only(right: 4),
                                          ),
                                          iconStyleData: const IconStyleData(
                                            icon: Icon(
                                              Icons.arrow_drop_down,
                                              color: Colors.black45,
                                            ),
                                            iconSize: 24,
                                          ),
                                          dropdownStyleData: DropdownStyleData(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(15),
                                            ),
                                          ),
                                          menuItemStyleData: const MenuItemStyleData(
                                            padding: EdgeInsets.symmetric(horizontal: 16),
                                          ),
                                        ),
                                      ),
                                    ]
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: Container(
                                height: 0.5,
                                color: const Color(0xFFC6C4C4),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 60.0),
                              child: (
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        const Column(
                                          children: [
                                            Icon(FontAwesome.cube, size: 30.0, color: Colors.black),
                                            Text('Sugar',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.grey
                                            ),
                                            )
                                          ],
                                        ),
                                        Container(
                                          height: 46,
                                          width: 180,
                                          padding: EdgeInsets.all(2.0),
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(18),
                                            color: const Color(0xFFE8E8E8),
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              const Icon(Entypo.circle_with_minus, size: 30.0, color: Color(0xFFDAB68A)),
                                              Container(
                                                child: const Text(
                                                  '1',
                                                  style: TextStyle(
                                                    fontSize: 24.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const Icon(Entypo.circle_with_plus, size: 30.0, color: Color(0xFFDAB68A)),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),

                                  ],
                                )
                              ),
                            ),
                            const SizedBox(height: 15),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 60.0),
                              child: (
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          const Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Icon(Entypo.crop, size: 30.0, color: Colors.black),
                                              Text('-Ice-',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.grey
                                                ),
                                              )
                                            ],
                                          ),
                                          Container(
                                            height: 46,
                                            width: 180,
                                            padding: EdgeInsets.all(2.0),
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(18),
                                              color: const Color(0xFFE8E8E8),
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                const Icon(Entypo.circle_with_minus, size: 30.0, color: Color(0xFFDAB68A)),
                                                Container(
                                                  child: const Text(
                                                    '2',
                                                    style: TextStyle(
                                                      fontSize: 24.0,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                const Icon(Entypo.circle_with_plus, size: 30.0, color: Color(0xFFDAB68A)),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),

                                    ],
                                  )
                              ),
                            ),
                            const SizedBox(height: 15),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 60.0),
                              child: (
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          const Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Icon(FlutterIcons.ice_cream_faw5s, size: 30.0, color: Colors.black),
                                              Text('Cream',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.grey
                                                ),
                                              )
                                            ],
                                          ),
                                          Container(
                                            height: 46,
                                            width: 180,
                                            padding: EdgeInsets.all(2.0),
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(18),
                                              color: const Color(0xFFE8E8E8),
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                const Icon(Entypo.circle_with_minus, size: 30.0, color: Colors.grey),
                                                Container(
                                                  child: const Text(
                                                    'No',
                                                    style: TextStyle(
                                                      fontSize: 24.0,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                const Icon(Entypo.circle_with_plus, size: 30.0, color: Color(0xFFDAB68A)),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),

                                    ],
                                  )
                              ),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Total',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                    Text('\$9,50',
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFFDAB68A)
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 50.0,
                                  width: 260,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(35.0),
                                    color: const Color(0xFF473D3A),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Place Order',
                                      style: TextStyle(
                                        fontFamily: 'nunito',
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],

                            )
                          ],
                        ),
                      ),
                    )
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildIngredientItem(String name, Icon icon, Color bgColor) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
        child: Column(
          children: [
            Container(
              height: 60.0,
              width: 60.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: bgColor,
              ),
              child: Center(
                child: icon
              ),
            ),

            const SizedBox(height: 4.0),
            Container(
              width: 70.0,
              child: Center(
                child: Text(
                  name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontFamily: 'nunito',
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF726B68),
                  ),
                ),
              ),
            )
          ],
        ),
    );
  }
}
