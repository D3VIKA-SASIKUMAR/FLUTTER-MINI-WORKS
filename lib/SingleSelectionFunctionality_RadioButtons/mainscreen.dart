import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mini/SingleSelectionFunctionality_RadioButtons/secondScreen.dart';

class MainScreenn extends StatefulWidget {
  const MainScreenn({super.key});

  @override
  State<MainScreenn> createState() => _MainScreennState();
}

class _MainScreennState extends State<MainScreenn> {
  List<String> districts = [
    'THIRUVANANTHAPURAM',
    'KOLLAM',
    'PATHANAMTHITTA',
    'ALAPPUZHA',
    'KOTTAYAM'
        'IDUKKI',
    'ERNAKULAM',
    'THRISSUR',
    'PALAKKAD',
    'MALAPPURAM',
    'KOZHIKODE',
    'WAYANAD',
    'KANNUR',
    'KASARAGOD'
  ];
  String? _selecteddistricts;
  String _selectGender = "Male";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(children: [
            TextFormField(
              cursorColor: const Color.fromARGB(255, 1, 1, 1),
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                labelText: 'Email',
                labelStyle:
                    TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: const Color.fromARGB(255, 0, 0, 0), width: 1.0),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: const Color.fromARGB(255, 0, 0, 0), width: 1),
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: const Color.fromARGB(255, 0, 0, 0), width: 1.0),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: const Color.fromARGB(255, 0, 0, 0), width: 1),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 12.0)),
              value: _selecteddistricts,
              items: districts.map((district) {
                return DropdownMenuItem(value: district, child: Text(district));
              }).toList(),
              onChanged: (value) {
                _selecteddistricts = value;
              },
              hint: Text("Choose distrct"),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Radio(
                    activeColor: Colors.black,
                    value: "Female",
                    groupValue: _selectGender,
                    onChanged: (value) {
                      setState(() {
                        _selectGender = value!;
                      });
                    }),
                Text(
                  "Female",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 20,
                ),
                Radio(
                    activeColor: Colors.black,
                    value: "Male",
                    groupValue: _selectGender,
                    onChanged: (value) {
                      setState(() {
                        _selectGender = value!;
                      });
                    }),
                Text(
                  "Male",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 20,
                ),
                Radio(
                    activeColor: Colors.black,
                    value: "Others",
                    groupValue: _selectGender,
                    onChanged: (value) {
                      setState(() {
                        _selectGender = value!;
                      });
                    }),
                Text(
                  "Others",
                  style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Secondscreen()));
                },
                child: Text(
                  'Start',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ))
          ]),
        ),
      ),
    );
  }
}
