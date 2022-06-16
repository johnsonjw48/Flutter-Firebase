// ignore_for_file: unused_field, unused_element, must_be_immutable, duplicate_ignore
// ignore: unused_import, import_of_legacy_library_into_null_safe

// ignore: unused_import
import 'package:path/path.dart';
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/foundation.dart';
import 'package:startup_namer/main.dart';
import 'package:startup_namer/models/accident.dart';

import 'package:startup_namer/partieA.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:intl/intl.dart';



//LIEU ET DATE LIEU ET DATE LIEU ET DATE LIEU ET DATE LIEU ET DATE LIEU ET DATE LIEU ET DATE LIEU ET DATE LIEU ET DATE LIEU ET DATE
//LIEU ET DATE LIEU ET DATE LIEU ET DATE LIEU ET DATE LIEU ET DATE LIEU ET DATE LIEU ET DATE LIEU ET DATE LIEU ET DATE LIEU ET DATE
//LIEU ET DATE LIEU ET DATE LIEU ET DATE LIEU ET DATE LIEU ET DATE LIEU ET DATE LIEU ET DATE LIEU ET DATE LIEU ET DATE LIEU ET DATE

// ignore: camel_case_types, must_be_immutable
class lieudate extends StatefulWidget {
  late Accident accident;
  lieudate({Key? key,
    required this.accident
  }) : super(key: key);

  @override
  _lieudate createState() => _lieudate(accident: accident);
}

class _lieudate extends State<lieudate>{
  late Accident accident;
  TextEditingController pays = TextEditingController();
  TextEditingController ville = TextEditingController();
  TextEditingController rue = TextEditingController();
  TextEditingController codepostal = TextEditingController();
  TextEditingController date = TextEditingController();
  TextEditingController heure = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  _lieudate( {required this.accident});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
                centerTitle: true,
                backgroundColor: Colors.green,
                title: const Text('Lieu et date'),
                // actions: <Widget>
                automaticallyImplyLeading: true,
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.pop(context, false),
                  // onPressed:() => exit(0),
                )),
            body: Center(
                child: SingleChildScrollView(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Form(
                        key: _formKey,
                        child: Column(
                            children: <Widget>[
                              const SizedBox(
                                height: 15,
                              ),
                              StepProgressIndicator(
                                totalSteps: 8,
                                currentStep: 1,
                                selectedColor: Colors.green,
                                unselectedColor: Colors.grey,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const SizedBox(
                                  height: 50,
                                  width: 600,
                                  child: Card(
                                      color: Colors.green,
                                      child: Center(
                                          child: Text(
                                            "Données sur le lieu de l'accident",
                                            style: TextStyle(color: Colors.white, fontSize: 15),
                                          )))),
                              Container(
                                width: 340,
                                padding: const EdgeInsets.all(10.0),
                                child: TextFormField(
                                  controller: pays,
                                  decoration: const InputDecoration(
                                    labelText: 'Pays',
                                    helperText:'*Obligatoire',
                                    border: OutlineInputBorder(),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.trim().isEmpty) {
                                      return '*Obligatoire';
                                    }
                                    // Return null if the entered username is valid
                                    return null;
                                  },
                                ),
                              ),
                              Container(
                                width: 340,
                                padding: const EdgeInsets.all(10.0),
                                child: TextFormField(
                                  controller: ville,
                                  decoration: const InputDecoration(
                                    labelText: 'Ville',
                                    helperText:'*Obligatoire',
                                    border: OutlineInputBorder(),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.trim().isEmpty) {
                                      return '*Obligatoire';
                                    }
                                    // Return null if the entered username is valid
                                    return null;
                                  },
                                ),
                              ),//Text
                              Container(
                                  width: 340,
                                  padding: const EdgeInsets.all(10.0),
                                  child: TextFormField(
                                    controller: rue,
                                    decoration: const InputDecoration(
                                      labelText: 'Rue',
                                      helperText:'*Obligatoire',
                                      border: OutlineInputBorder(),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.trim().isEmpty) {
                                        return '*Obligatoire';
                                      }
                                      // Return null if the entered username is valid
                                      return null;
                                    },)),

                              Container(
                                  width: 340,
                                  padding: const EdgeInsets.all(10.0),
                                  child: TextFormField(
                                    controller: codepostal,
                                    decoration: const InputDecoration(
                                      labelText: 'Code postal',
                                      helperText:'*Obligatoire',
                                      border: OutlineInputBorder(),
                                    ),
                                    validator: (value) {
                                      if (value == null || value.trim().isEmpty) {
                                        return '*Obligatoire';
                                      }
                                      // Return null if the entered username is valid
                                      return null;
                                    },
                                  )),


                              const SizedBox(
                                height: 5,
                                width: 600,
                              ),
                              const SizedBox(
                                height: 50,
                                width: 600,
                                child: Card(
                                  color: Colors.green,
                                  child: Center(
                                    child: Text(
                                      "Données sur la date et l'heure de l'accident",
                                      style: TextStyle(color: Colors.white, fontSize: 15),
                                    ), //Text
                                  ), //Center
                                ), //Card
                              ),
                              Container(
                                width: 340,
                                padding: const EdgeInsets.all(10.0),
                                child: TextFormField(
                                  controller: date,
                                  decoration: const InputDecoration(

                                    labelText: 'Date',
                                    helperText:'*Obligatoire',
                                    border: OutlineInputBorder(),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.trim().isEmpty) {
                                      return '*Obligatoire';
                                    }
                                    // Return null if the entered username is valid
                                    return null;
                                  },

                                  readOnly: true,  //set it true, so that user will not able to edit text
                                  onTap: () async {
                                    DateTime? pickedDate = await showDatePicker(
                                        context: context, initialDate: DateTime.now(),
                                        firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                                        lastDate: DateTime(2101)
                                    );

                                    if(pickedDate != null ){
                                      print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                                      String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
                                      print(formattedDate); //formatted date output using intl package =>  2021-03-16
                                      //you can implement different kind of Date Format here according to your requirement
                                      setState(() {
                                        date.text = formattedDate; //set output date to TextField value.
                                      });
                                    }else{
                                      print("Date is not selected");
                                    }
                                  },
                                ),
                              ),
                              Container(
                                width: 340,
                                padding: const EdgeInsets.all(10.0),
                                child: TextFormField(
                                  readOnly: true,
                                  controller: heure,
                                  decoration: const InputDecoration(
                                    labelText: 'Heure',
                                    helperText:'*Obligatoire',
                                    border: OutlineInputBorder(),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.trim().isEmpty) {
                                      return '*Obligatoire';
                                    }
                                    // Return null if the entered username is valid
                                    return null;
                                  },

                                  onTap: () async {
                                    var time =  await showTimePicker(
                                      initialTime: TimeOfDay.now(),
                                      context: context,);
                                    heure.text = time!.format(context);
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 35,
                                width: 100,
                                // ignore: deprecated_member_use
                                child: RaisedButton(
                                  onPressed: () {

                                    final bool? isValid = _formKey.currentState?.validate();
                                    if (isValid == false) {
                                     // setState((){
                                        accident.pays=pays.text;
                                        accident.ville=ville.text;
                                        accident.rue=rue.text;
                                        accident.codepostal=codepostal.text;
                                        accident.date=date.text;
                                        accident.heure=heure.text;
                                     // });
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => LRadio(accident:accident)),
                                      );
                                    }
                                  },
                                  color:const Color(0xffFF1744),
                                  textColor:Colors.white,
                                  padding:const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Text(
                                      'Suivant',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.
                                          white)
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                                width: 600,
                              ),
                            ]
                        ))))));
  }
  getItemAndNavigate(BuildContext context) {}
}


//QUESTIONS GENERALES QUESTIONS GENERALES QUESTIONS GENERALES QUESTIONS GENERALES QUESTIONS GENERALES QUESTIONS GENERALES QUESTIONS GENERALES
//QUESTIONS GENERALES QUESTIONS GENERALES QUESTIONS GENERALES QUESTIONS GENERALES QUESTIONS GENERALES QUESTIONS GENERALES QUESTIONS GENERALES
//QUESTIONS GENERALES QUESTIONS GENERALES QUESTIONS GENERALES QUESTIONS GENERALES QUESTIONS GENERALES QUESTIONS GENERALES QUESTIONS GENERALES
// ignore: camel_case_types
class LRadio extends StatefulWidget {
  late Accident accident;
  LRadio({required this.accident });

  @override
  _LRadioState createState() => _LRadioState(accident: accident);
}
// ignore: camel_case_types
class _LRadioState extends State<LRadio> {
  late Accident accident;
  _LRadioState({required this.accident });

  String? _groupC1SelectedValue;
  String? _groupC2SelectedValue;
  String? _groupC3SelectedValue;


  void initStateA() {
    _groupC1SelectedValue = "0";
    super.initState();
  }

  void initStateB() {
    _groupC2SelectedValue = "0";
    super.initState();
  }

  void initStateC() {
    _groupC3SelectedValue = "0";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.green,
              title: const Text('Questions générales'),
              // actions: <Widget>
              automaticallyImplyLeading: true,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context, false),
                // onPressed:() => exit(0),
              )),
          body: Center(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 15,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: StepProgressIndicator(
                    totalSteps: 8,
                    currentStep: 2,
                    selectedColor: Colors.green,
                    unselectedColor: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Expanded(
                    child: ListView(children: <Widget>[
                      Text(accident.date),
                      Container(
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                        child: const Text(
                          "Il y a t'il des dommades matériels à d'autres véhicules que A et B ?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                          width: 340,
                          padding: const EdgeInsets.all(5),
                          margin: const EdgeInsets.fromLTRB(55, 0, 0, 0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Radio(
                                          value: "0",
                                          groupValue: _groupC1SelectedValue,
                                          onChanged: _groupC1Changes),
                                      const Expanded(
                                        child: Text("Non",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  flex: 1,
                                ),
                                Expanded(
                                  child: Row(
                                    children: [
                                      Radio(
                                          value: "1",
                                          groupValue: _groupC1SelectedValue,
                                          onChanged: _groupC1Changes),
                                      const Expanded(
                                        child: Text("Oui",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  flex: 1,
                                ),
                              ])),

                      Container(
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                        child: const Text(
                          "Il y a t'il des dommades matériels à d'autres objets que les véhicules ?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                          width: 340,
                          padding: const EdgeInsets.all(5),
                          margin: const EdgeInsets.fromLTRB(55, 0, 0, 0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Radio(
                                          value: "0",
                                          groupValue: _groupC2SelectedValue,
                                          onChanged: _groupC2Changes),
                                      const Expanded(
                                        child: Text("Non",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  flex: 1,
                                ),
                                Expanded(
                                  child: Row(
                                    children: [
                                      Radio(
                                          value: "1",
                                          groupValue: _groupC2SelectedValue,
                                          onChanged: _groupC2Changes),
                                      const Expanded(
                                        child: Text("Oui",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  flex: 1,
                                ),
                              ])),

                      Container(
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                        child: const Text(
                          "Il y a t'il des blessés ?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                          width: 340,
                          padding: const EdgeInsets.all(5),
                          margin: const EdgeInsets.fromLTRB(55, 0, 0, 0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Radio(
                                          value: "0",
                                          groupValue: _groupC3SelectedValue,
                                          onChanged: _groupC3Changes),
                                      const Expanded(
                                        child: Text("Non",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  flex: 1,
                                ),
                                Expanded(
                                  child: Row(
                                    children: [
                                      Radio(
                                          value: "1",
                                          groupValue: _groupC3SelectedValue,
                                          onChanged: _groupC3Changes),
                                      const Expanded(
                                        child: Text("Oui",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  flex: 1,
                                ),
                              ])),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                          width: 340,
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Row(

                              children: [
                                const Text(
                                  "NB:",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                                const Text(
                                  "Cette section du formulaire est obligatoire",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                              ])),
                    ])),


                SizedBox(
                  height: 35,
                  width: 100,
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    onPressed: () {

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => temoin(accident:accident)),
                      );
                    },
                    color: Colors.red,
                    textColor: Colors.white,
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                      "Suivant",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                  width: 600,
                ),
              ],
            ),
          )),
    );
  }

  void _groupC1Changes(String? value) {
    setState(() {
      _groupC1SelectedValue = value!;
      accident.q1='X';
    });
  }
  void _groupC2Changes(String? value) {
    setState(() {
      _groupC2SelectedValue= value;
      accident.q2='X';
    });
  }
  void _groupC3Changes(String? value) {
    setState(() {
      _groupC3SelectedValue = value!;
      accident.q3='X';
    });
  }
  getItemAndNavigate(BuildContext context) {}
}
//TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS
//TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS
//TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS

// ignore: camel_case_types
class temoin extends StatefulWidget {
  late Accident accident;
  temoin({required this.accident });
  @override

  _temoinState createState() => _temoinState(accident:accident);
}

class _temoinState extends State<temoin> {
  late Accident accident;
  _temoinState({required this.accident});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.green,
            title: const Text('Témoins'),
            // actions: <Widget>
            automaticallyImplyLeading: true,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context, false),
              // onPressed:() => exit(0),
            )),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const SizedBox(
                  height: 1,
                  width: 600,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: StepProgressIndicator(
                    totalSteps: 8,
                    currentStep: 2,
                    selectedColor: Colors.green,
                    unselectedColor: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 150,
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child:const Text(
                    "Y-a-t-il des témoins sur le lieu de l'accident?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // ignore: deprecated_member_use
                    SizedBox(
                      height: 35,
                      width: 100,
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => assureA(accident:accident)),
                          );
                        },
                        color: Colors.red,
                        textColor: Colors.white,
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: const Text(
                          "Non",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 35,
                      width: 100,
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => TEMOIN(accident:accident)),
                          );
                        },
                        color: Colors.green,
                        textColor: Colors.white,
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: const Text(
                          "Oui",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 200,

                ),
              ]
          ),
        ),
      ),
    );
  }

  getItemAndNavigate(BuildContext context) {}
}
//TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS
//TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS
//TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS TEMOINS
// ignore: camel_case_types
class TEMOIN extends StatefulWidget {
  late Accident accident;
  TEMOIN({required this.accident,});

  @override
  _TEMOINState createState() => _TEMOINState(accident:accident);
}
class _TEMOINState extends State<TEMOIN> {
  late Accident accident;
  _TEMOINState({required this.accident,});


  final _formKey = GlobalKey<FormState>();
  TextEditingController nomt = TextEditingController();
  TextEditingController adresset = TextEditingController();
  TextEditingController prenomt = TextEditingController();
  TextEditingController telephonet = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Témoins',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green,
          title: const Text('Témoins'),
          automaticallyImplyLeading: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),
            // onPressed:() => exit(0),
          ),),

        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 15,
                    width: 600,
                  ),
                  StepProgressIndicator(
                    totalSteps: 8,
                    currentStep: 2,
                    selectedColor: Colors.green,
                    unselectedColor: Colors.grey,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 340,
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller : nomt,
                      decoration: const InputDecoration(
                        labelText: 'Nom',
                        helperText:'*Obligatoire',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return '*Obligatoire';
                        }
                        // Return null if the entered username is valid
                        return null;
                      },
                    ),
                  ),
                  Container(
                    width: 340,
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller : prenomt,
                      decoration: const InputDecoration(
                        labelText: 'Prénom',
                        helperText:'*Obligatoire',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return '*Obligatoire';
                        }
                        // Return null if the entered username is valid
                        return null;
                      },
                    ),
                  ),
                  Container(
                    width: 340,
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller : adresset,
                      decoration: const InputDecoration(
                        labelText: 'Adresse',
                        helperText:'*Obligatoire',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return '*Obligatoire';
                        }
                        // Return null if the entered username is valid
                        return null;
                      },
                    ),
                  ),
                  Container(
                    width: 340,
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller : telephonet,
                      decoration: const InputDecoration(
                        labelText: 'N° de téléphone',
                        helperText:'*Obligatoire',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return '*Obligatoire';
                        }
                        // Return null if the entered username is valid
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 90,
                    width: 600,
                  ),
                  SizedBox(
                    height: 35,
                    width: 100,
                    // ignore: deprecated_member_use
                    child: RaisedButton(

                      onPressed: () {

                        final bool? isValid = _formKey.currentState?.validate();
                        if (isValid == false) {
                         // setState((){
                            accident.nom_temoin=nomt.text;
                            accident.prenom_temoin=prenomt.text;
                            accident.adresse_temoin=adresset.text;
                            accident.telephone_temoin=telephonet.text;
                          //});
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => assureA(accident:accident)),
                          );
                        }
                      },
                      color: Colors.red,
                      textColor: Colors.white,
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text(
                        "Suivant",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                    width: 600,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  getItemAndNavigate(BuildContext context) {}
}
