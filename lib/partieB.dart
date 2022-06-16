// ignore_for_file: must_be_immutable, unused_field
// ignore: unused_import, import_of_legacy_library_into_null_safe

// ignore: unused_import
import 'package:path/path.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:startup_namer/etatAB.dart';
import 'package:startup_namer/models/accident.dart';
import 'package:startup_namer/partieA.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'dart:async';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:images_picker/images_picker.dart';


import 'dart:typed_data';
// ignore: import_of_legacy_library_into_null_safe
import 'package:signature/signature.dart';



//ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE
//ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE
//ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE

// ignore: camel_case_types
class assureB extends StatefulWidget {
  late Accident accident;
  assureB({required this.accident,});

  @override
  _assureBState createState() => _assureBState(accident:accident);
}
class _assureBState extends State<assureB> {
  late Accident accident;
  _assureBState({required this.accident,});

  final _formKey = GlobalKey<FormState>();
  TextEditingController Noma = TextEditingController();
  TextEditingController Prenoma = TextEditingController();
  TextEditingController Adressea = TextEditingController();
  TextEditingController Codepostala = TextEditingController();
  TextEditingController Paysa = TextEditingController();
  TextEditingController Telephonea = TextEditingController();
  TextEditingController Emaila = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Assuré B',
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.yellow.shade700,
            title: const Text('Assuré B'),
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
                    currentStep: 3,
                    selectedColor: Colors.yellow.shade700,
                    unselectedColor: Colors.grey,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 340,
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller : Noma,
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
                      controller : Prenoma,
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
                      controller : Adressea,
                      decoration: const InputDecoration(
                        labelText: 'Adresse',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Container(
                    width: 340,
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller : Codepostala,
                      decoration: const InputDecoration(
                        labelText: 'Code postal',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Container(
                    width: 340,
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller : Paysa,
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
                      controller : Telephonea,
                      decoration: const InputDecoration(
                        labelText: 'N° de téléphone',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Container(
                    width: 340,
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller : Emaila,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        helperText:'*Obligatoire',
                        border: OutlineInputBorder(),
                      ),

                      validator: (value) {
                        if (value == null || value.trim().isEmpty)
                          return '*Obligatoire';
                        String pattern = r'\w+@\w+\.\w+';
                        if (!RegExp(pattern).hasMatch(value))
                          return 'Format address e-mail invalid .';
                        return null;
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
                          setState((){
                            accident.nom_assureb=Noma.text;
                            accident.prenom_assureb=Prenoma.text;
                            accident.adresse_assureb=Adressea.text;
                            accident.codepostal_assureb=Codepostala.text;
                            accident.pays_assureb=Paysa.text;
                            accident.telephone_assureb=Telephonea.text;
                            accident.email_assureb=Emaila.text;

                          });
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => assureurB(accident:accident)),
                          );
                        }},

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
            ),
          ),
        ),
      ),
    );
  }

  getItemAndNavigate(BuildContext context) {}
}

//ASSUREUR ASSUREUR ASSUREUR ASSUREUR ASSUREUR ASSUREUR ASSUREUR ASSUREUR ASSUREUR ASSUREUR ASSUREUR ASSUREUR ASSUREUR ASSUREUR ASSUREUR ASSUREUR
//ASSUREUR ASSUREUR ASSUREUR ASSUREUR ASSUREUR ASSUREUR ASSUREUR ASSUREUR ASSUREUR ASSUREUR ASSUREUR ASSUREUR ASSUREUR ASSUREUR ASSUREUR ASSUREUR
//ASSUREUR ASSUREUR ASSUREUR ASSUREUR ASSUREUR ASSUREUR ASSUREUR ASSUREUR ASSUREUR ASSUREUR ASSUREUR ASSUREUR ASSUREUR ASSUREUR ASSUREUR ASSUREUR

// ignore: camel_case_types
class assureurB extends StatefulWidget {
  late Accident accident;
  assureurB({required this.accident,});

  @override
  _assureurB createState() => _assureurB(accident:accident);
}

class _assureurB extends State<assureurB>{
  late Accident accident;
  _assureurB({required this.accident, });

  TextEditingController Nomaa = TextEditingController();
  TextEditingController Emailaa = TextEditingController();
  TextEditingController Numcontrataa = TextEditingController();
  TextEditingController Numcarteaa = TextEditingController();
  TextEditingController Dateaa1 = TextEditingController();
  TextEditingController Dateaa2 = TextEditingController();


  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(

            centerTitle: true,
            backgroundColor: Colors.yellow.shade700,
            title: const Text('Assureur B'),
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
                    currentStep: 3,
                    selectedColor: Colors.yellow.shade700,
                    unselectedColor: Colors.grey,
                  ),
                  const SizedBox(
                    height: 15,
                  ),

                  Container(
                    width: 340,
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller : Nomaa,
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
                      controller : Emailaa,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        helperText:'*Obligatoire',
                        border: OutlineInputBorder(),
                      ),

                      validator: (value) {
                        if (value == null || value.trim().isEmpty)
                          return '*Obligatoire';
                        String pattern = r'\w+@\w+\.\w+';
                        if (!RegExp(pattern).hasMatch(value))
                          return 'Format address e-mail invalid .';
                        return null;
                      },
                    ),
                  ),
                  Container(
                    width: 340,
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller : Numcontrataa,
                      decoration: const InputDecoration(
                        labelText: 'N° de contrat',
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
                      controller : Numcarteaa,
                      decoration: const InputDecoration(
                        labelText: 'N° de carte verte ',
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
                      controller: Dateaa1,
                      decoration: const InputDecoration(

                        labelText: 'Carte verte valable depuis',
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
                            firstDate: DateTime(1900), //DateTime.now() - not to allow to choose before today.
                            lastDate: DateTime.now()
                        );

                        if(pickedDate != null ){
                          print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                          String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
                          print(formattedDate); //formatted date output using intl package =>  2021-03-16
                          //you can implement different kind of Date Format here according to your requirement
                          setState(() {
                            Dateaa1.text = formattedDate; //set output date to TextField value.
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
                      controller: Dateaa2,
                      decoration: const InputDecoration(

                        labelText: "Carte verte valable jusqu'au",
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
                            firstDate: DateTime(1900), //DateTime.now() - not to allow to choose before today.
                            lastDate: DateTime.now()
                        );

                        if(pickedDate != null ){
                          print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                          String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
                          print(formattedDate); //formatted date output using intl package =>  2021-03-16
                          //you can implement different kind of Date Format here according to your requirement
                          setState(() {
                            Dateaa2.text = formattedDate; //set output date to TextField value.
                          });
                        }else{
                          print("Date is not selected");
                        }
                      },
                    ),
                  ),

                  SizedBox(
                    height: 35,
                    width: 100,
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      onPressed: ()
                      { final bool? isValid = _formKey.currentState?.validate();
                      if (isValid == false) {
                        setState((){
                          accident.nom_assureurb=Nomaa.text;
                          accident.email_assureurb=Emailaa.text;
                          accident.num_contratb=Numcontrataa.text;
                          accident.num_carteb=Numcarteaa.text;
                          accident.date_debutb=Dateaa1.text;
                          accident.date_finb=Dateaa2.text;
                        });
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => agenceB(accident:accident)),
                        );
                      }},
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
//AGENCE AGENCE AGENCE AGENCE AGENCE AGENCE AGENCE AGENCE AGENCE AGENCE AGENCE AGENCE AGENCE AGENCE AGENCE AGENCE AGENCE
//AGENCE AGENCE AGENCE AGENCE AGENCE AGENCE AGENCE AGENCE AGENCE AGENCE AGENCE AGENCE AGENCE AGENCE AGENCE AGENCE AGENCE
//AGENCE AGENCE AGENCE AGENCE AGENCE AGENCE AGENCE AGENCE AGENCE AGENCE AGENCE AGENCE AGENCE AGENCE AGENCE AGENCE AGENCE
// ignore: camel_case_types
class agenceB extends StatefulWidget {
  late Accident accident;
  agenceB({required this.accident,});

  @override
  _agenceBState createState() => _agenceBState(accident:accident);
}

class _agenceBState extends State<agenceB> {
  late Accident accident;
  _agenceBState({required this.accident});


  TextEditingController Nomag = TextEditingController();
  TextEditingController Adresseag = TextEditingController();
  TextEditingController Telephoneag = TextEditingController();
  TextEditingController Emailag = TextEditingController();
  TextEditingController Paysag = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Agence ou Courtier B',
        home: Scaffold(
            appBar: AppBar(
                centerTitle: true,
                backgroundColor: Colors.yellow.shade700,
                title: const Text('Agence / Courtier B'),
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

                        child: Column(
                          children: <Widget>[
                            const SizedBox(
                              height: 15,
                            ),

                            StepProgressIndicator(
                              totalSteps: 8,
                              currentStep: 3,
                              selectedColor: Colors.yellow.shade700,
                              unselectedColor: Colors.grey,
                            ),
                            const SizedBox(
                              height: 15,
                              width: 600,
                            ),
                            Container(
                              width: 340,
                              padding: const EdgeInsets.all(10.0),
                              child: TextFormField(
                                controller : Nomag,
                                decoration: const InputDecoration(
                                  labelText: 'Nom',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            Container(
                              width: 340,
                              padding: const EdgeInsets.all(10.0),
                              child: TextFormField(
                                controller : Adresseag,
                                decoration: const InputDecoration(
                                  labelText: 'Adresse',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            Container(
                              width: 340,
                              padding: const EdgeInsets.all(10.0),
                              child: TextFormField(
                                controller : Telephoneag,
                                decoration: const InputDecoration(
                                  labelText: 'N° de téléphone',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            Container(
                              width: 340,
                              padding: const EdgeInsets.all(10.0),
                              child: TextFormField(
                                controller : Emailag,
                                decoration: const InputDecoration(
                                  labelText: 'Email',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            Container(
                              width: 340,
                              padding: const EdgeInsets.all(10.0),
                              child: TextFormField(
                                controller : Paysag,
                                decoration: const InputDecoration(
                                  labelText: 'Pays',
                                  border: OutlineInputBorder(),
                                ),
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
                                  setState((){
                                    accident.nom_agenceb=Nomag.text;
                                    accident.adresse_agenceb=Adresseag.text;
                                    accident.telephone_agenceb=Telephoneag.text;
                                    accident.email_agenceb=Emailag.text;
                                    accident.pays_agenceb=Paysag.text;
                                  });
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => vehiculeB(accident:accident)),
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
                        )))))
    );
  }
  getItemAndNavigate(BuildContext context) {}
}

//VEHICULE  VEHICULE  VEHICULE  VEHICULE  VEHICULE  VEHICULE VEHICULE  VEHICULE  VEHICULE  VEHICULE  VEHICULE  VEHICULE VEHICULE VEHICULE
//VEHICULE  VEHICULE  VEHICULE  VEHICULE  VEHICULE  VEHICULE VEHICULE  VEHICULE  VEHICULE  VEHICULE  VEHICULE  VEHICULE VEHICULE VEHICULE
//VEHICULE  VEHICULE  VEHICULE  VEHICULE  VEHICULE  VEHICULE VEHICULE  VEHICULE  VEHICULE  VEHICULE  VEHICULE  VEHICULE VEHICULE VEHICULE

// ignore: camel_case_types
class vehiculeB extends StatefulWidget {
  late Accident accident;
  vehiculeB({required this.accident,});

  @override
  _vehiculeBState createState() => _vehiculeBState(accident:accident);
}

class _vehiculeBState extends State<vehiculeB> {
  late Accident accident;
  _vehiculeBState({required this.accident});

  final _formKey = GlobalKey<FormState>();
  TextEditingController typev = TextEditingController();
  TextEditingController marquev = TextEditingController();
  TextEditingController numplaquev = TextEditingController();
  TextEditingController paysimv = TextEditingController();
  TextEditingController numplaquer = TextEditingController();
  TextEditingController paysimr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Véhicule B',
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.yellow.shade700,
            title: const Text('Véhicule B'),
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
                    width: 600,
                  ),
                  StepProgressIndicator(
                    totalSteps: 8,
                    currentStep: 3,
                    selectedColor: Colors.yellow.shade700,
                    unselectedColor: Colors.grey,
                  ),
                  const SizedBox(
                    height: 15,
                    width: 600,
                  ),
                  Container(
                    height: 45,
                    width: 600,
                    color: Colors.yellow.shade700,
                      child: Center(
                        child: Text(
                          "Véhicule",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ), //Text
                      ), //Center
                    ), //Card

                  Container(
                    width: 340,
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller : typev,
                      decoration: const InputDecoration(
                        labelText: 'Type',
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
                      controller : marquev,
                      decoration: const InputDecoration(
                        labelText: 'Marque et modèle',
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
                      controller : numplaquev,
                      decoration: const InputDecoration(
                        labelText: 'N° Plaque',
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
                      controller : paysimv,
                      decoration: const InputDecoration(
                        labelText: "Pays d'immatriculation",
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
                    height: 10,
                    width: 600,
                  ),
              Container(
                height: 45,
                width: 600,
                color: Colors.yellow.shade700,
                child: Center(
                        child: Text(
                          "Remorque",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ), //Text//Center
                    ), //Card
                  ),
                  Container(
                    width: 340,
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller : numplaquer,
                      decoration: const InputDecoration(
                        labelText: 'N° Plaque',
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
                      controller : paysimr,
                      decoration: const InputDecoration(
                        labelText: "Pays d'immatriculation",
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

                  SizedBox(
                    height: 35,
                    width: 100,
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      onPressed: () {
                        final bool? isValid = _formKey.currentState?.validate();
                        if (isValid == false) {
                          setState((){
                            accident.typeb=typev.text;
                            accident.marqueb=marquev.text;
                            accident.num_vehiculeb=numplaquev.text;
                            accident.pays_vehiculeb=paysimv.text;
                            accident.num_remorqueb=numplaquer.text;
                            accident.pays_remorqueb=paysimr.text;
                          });
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  ConducteurB(accident:accident)),
                          );
                        }},
                      color: const Color(0xffFF1744),
                      textColor: Colors.white,
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text(
                        'Suivant',
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

//CONDUCTEUR  CONDUCTEUR  CONDUCTEUR  CONDUCTEUR  CONDUCTEUR  CONDUCTEUR  CONDUCTEUR  CONDUCTEUR  CONDUCTEUR  CONDUCTEUR  CONDUCTEUR
//CONDUCTEUR  CONDUCTEUR  CONDUCTEUR  CONDUCTEUR  CONDUCTEUR  CONDUCTEUR  CONDUCTEUR  CONDUCTEUR  CONDUCTEUR  CONDUCTEUR  CONDUCTEUR
//CONDUCTEUR  CONDUCTEUR  CONDUCTEUR  CONDUCTEUR  CONDUCTEUR  CONDUCTEUR  CONDUCTEUR  CONDUCTEUR  CONDUCTEUR  CONDUCTEUR  CONDUCTEUR

// ignore: camel_case_types
class ConducteurB extends StatefulWidget {
  late Accident accident;
  ConducteurB({ required this.accident});

  @override
  _ConducteurB createState() => _ConducteurB(accident:accident);
}

class _ConducteurB extends State<ConducteurB>{
  late Accident accident;
  _ConducteurB({required this.accident});

  final _formKey = GlobalKey<FormState>();
  TextEditingController nomc = TextEditingController();
  TextEditingController prenomc = TextEditingController();
  TextEditingController datenaisc = TextEditingController();
  TextEditingController adressec = TextEditingController();
  TextEditingController paysc = TextEditingController();
  TextEditingController telephonec = TextEditingController();
  TextEditingController emailc = TextEditingController();
  TextEditingController numpermisc = TextEditingController();
  TextEditingController catpermisc = TextEditingController();
  TextEditingController datepermisc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(

            centerTitle: true,
            backgroundColor: Colors.yellow.shade700,
            title: const Text('Conducteur B'),
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
                    width: 600,
                  ),
                  StepProgressIndicator(
                    totalSteps: 8,
                    currentStep: 3,
                    selectedColor: Colors.yellow.shade700,
                    unselectedColor: Colors.grey,
                  ),
                  const SizedBox(
                    height: 15,
                    width: 600,
                  ),
                  Container(
                    width: 340,
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller : nomc,
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
                      },),
                  ),
                  Container(
                    width: 340,
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller : prenomc,
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
                      controller: datenaisc,
                      decoration: const InputDecoration(

                        labelText: 'Date de naissance',
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
                            firstDate: DateTime(1900), //DateTime.now() - not to allow to choose before today.
                            lastDate: DateTime.now()
                        );

                        if(pickedDate != null ){
                          print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                          String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
                          print(formattedDate); //formatted date output using intl package =>  2021-03-16
                          //you can implement different kind of Date Format here according to your requirement
                          setState(() {
                            datenaisc.text = formattedDate; //set output date to TextField value.
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
                      controller : adressec,
                      decoration: const InputDecoration(
                        labelText: 'Adresse',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Container(
                    width: 340,
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller : paysc,
                      decoration: const InputDecoration(
                        labelText: 'Pays',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),

                  Container(
                    width: 340,
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller : telephonec,
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
                  Container(
                    width: 340,
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller : emailc,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Container(
                    width: 340,
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller : numpermisc,
                      decoration: const InputDecoration(
                        labelText: 'N° Permis',
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
                      controller : catpermisc,
                      decoration: const InputDecoration(
                        labelText: 'Catégorie permis',
                        helperText:'*Obligatoire',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return '*Obligatoire';
                        }
                        // Return null if the entered username is valid
                        return null;
                      },),
                  ),
                  Container(
                    width: 340,
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      controller: datepermisc,
                      decoration: const InputDecoration(

                        labelText: "Permis valable jusqu'au",
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
                            datepermisc.text = formattedDate; //set output date to TextField value.
                          });
                        }else{
                          print("Date is not selected");
                        }
                      },
                    ),
                  ),

                  SizedBox(
                    height: 35,
                    width: 100,
                    // ignore: deprecated_member_use
                    child: RaisedButton(onPressed: () {
                      final bool? isValid = _formKey.currentState?.validate();
                      if (isValid == false) {
                        setState((){
                          accident.nom_conducteurb=nomc.text;
                          accident.prenom_conducteurb=prenomc.text;
                          accident.date_conducteurb=datenaisc.text;
                          accident.adresse_conducteurb=adressec.text;
                          accident.pays_conducteurb=paysc.text;
                          accident.telephone_conducteurb=telephonec.text;
                          accident.email_conducteurb=emailc.text;
                          accident.num_permisb=numpermisc.text;
                          accident.cat_permisb=catpermisc.text;
                          accident.date_permisb=datepermisc.text;
                        });
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => circonstanceA(accident:accident)),
                        );
                      }},
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
            ),
          ),
        ),
      ),
    );
  }

  getItemAndNavigate(BuildContext context) {}
}

//CIRCONSTANCES ! CIRCONSTANCES ! CIRCONSTANCES ! CIRCONSTANCES ! CIRCONSTANCES ! CIRCONSTANCES ! CIRCONSTANCES ! CIRCONSTANCES ! CIRCONSTANCES ! CIRCONSTANCES !
//CIRCONSTANCES ! CIRCONSTANCES ! CIRCONSTANCES ! CIRCONSTANCES ! CIRCONSTANCES ! CIRCONSTANCES ! CIRCONSTANCES ! CIRCONSTANCES ! CIRCONSTANCES ! CIRCONSTANCES !
//CIRCONSTANCES ! CIRCONSTANCES ! CIRCONSTANCES ! CIRCONSTANCES ! CIRCONSTANCES ! CIRCONSTANCES ! CIRCONSTANCES ! CIRCONSTANCES ! CIRCONSTANCES ! CIRCONSTANCES !

// ignore: camel_case_types
class circonstanceB extends StatefulWidget {
  late Accident accident;
  circonstanceB({required this.accident});

  @override
  _circonstanceBState createState() => _circonstanceBState(accident:accident);
}
class _circonstanceBState extends State<circonstanceB> {
  late Accident accident;
  _circonstanceBState({required this.accident});

  String? _groupC1SelectedValue;
  String? _groupC2SelectedValue;
  String? _groupC17SelectedValue;

  void initStateA() {
    _groupC1SelectedValue = "0";
    super.initState();
  }

  void initStateB() {
    _groupC2SelectedValue = "0";
    super.initState();
  }

  void initStateQ() {
    _groupC17SelectedValue = "0";
    super.initState();
  }
  void initState() {
    super.initState();
  }
  final List<String> _list = [];

  bool? C3 = false;
  bool? C4 = false;
  bool? C5 = false;
  bool? C6 = false;
  bool? C7 = false;
  bool? C8 = false;
  bool? C9 = false;
  bool? C10 = false;
  bool? C11 = false;
  bool? C12 = false;
  bool? C13 = false;
  bool? C14 = false;
  bool? C15 = false;
  bool? C16 = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Circonstances B',
        home: Scaffold(
            appBar: AppBar(
                centerTitle: true,
                backgroundColor:  Colors.yellow.shade700,
                title: const Text('Circonstances B'),
                automaticallyImplyLeading: true,
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.pop(context, false),
                  // onPressed:() => exit(0),
                )),
            body: Center(
              child: Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 15,
                      width: 20,
                    ),
                    StepProgressIndicator(
                      totalSteps: 8,
                      currentStep: 4,
                      selectedColor: Colors.yellow.shade700,
                      unselectedColor: Colors.grey,
                    ),
                    const SizedBox(
                      height: 15,
                      width: 20,
                    ),
                    Expanded(
                      child: ListView(
                        children: <Widget>[
                          Container(
                              padding: const EdgeInsets.all(5),
                              margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                              child: Row(
                                children: [
                                  Radio(
                                      value: "En stationnement     X",
                                      groupValue: _groupC1SelectedValue,
                                      onChanged: _groupC1Changes),
                                  const SizedBox(
                                    height: 20,
                                    width: 20,
                                  ),
                                  const Expanded(
                                      child: Text(
                                        "En stationnement",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      )),
                                ],
                              )),
                          Container(
                              padding: const EdgeInsets.all(5),
                              margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                              child: Row(
                                children: [
                                  Radio(
                                      value: "A l'arrêt     X",
                                      groupValue: _groupC1SelectedValue,
                                      onChanged: _groupC1Changes),
                                  const SizedBox(
                                    height: 20,
                                    width: 20,
                                  ),
                                  const Expanded(
                                      child: Text(
                                        "A l'arrêt",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      )),
                                ],
                              )),
                          Container(
                              padding: const EdgeInsets.all(5),
                              margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                              child: Row(children: [
                                Radio(
                                    value: "Quittait un stationnement     X",
                                    groupValue: _groupC2SelectedValue,
                                    onChanged: _groupC2Changes),
                                const SizedBox(
                                  height: 20,
                                  width: 20,
                                ),
                                const Expanded(
                                    child: Text(
                                      "Quittait un stationnement",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    )),
                              ])),
                          Container(
                              padding: const EdgeInsets.all(5),
                              margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                              child: Row(children: [
                                Radio(
                                    value: "Ouvrait une portière     X",
                                    groupValue: _groupC2SelectedValue,
                                    onChanged: _groupC2Changes),
                                const SizedBox(
                                  height: 20,
                                  width: 20,
                                ),
                                const Expanded(
                                    child: Text(
                                      "Ouvrait une portière",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    )),
                              ])),
                          ListTile(
                            title: const Text("Prenait un stationnement",
                                style: TextStyle(
                                  fontSize: 15,
                                )),
                            leading: Checkbox(
                              value: C3,
                              onChanged: (value) {
                                setState(() {
                                  C3= value;
                                  accident.c3b ='X';
                                });
                              },
                            ),
                          ),
                          ListTile(
                            title: const Text(
                                "Sortait d'un parking, d'un lieu privé, d'un chemin de terre",
                                style: TextStyle(
                                  fontSize: 15,
                                )),
                            leading: Checkbox(
                              value: C4,
                              onChanged: (value) {
                                setState(() {
                                  C4 = value;
                                  accident.c4b = 'X';
                                });
                              },
                            ),
                          ),
                          ListTile(
                            title: const Text(
                                "S'engageait dans un parking, un lieu privé, un chemin de terre",
                                style: TextStyle(
                                  fontSize: 15,
                                )),
                            leading: Checkbox(
                              value: C5,
                              onChanged: (value) {
                                setState(() {
                                  C5 = value;
                                  accident.c5b = 'X';
                                });
                              },
                            ),
                          ),
                          ListTile(
                            title: const Text(
                                "S'engageait sur une place à sens giratoire",
                                style: TextStyle(
                                  fontSize: 15,
                                )),
                            leading: Checkbox(
                              value: C6,
                              onChanged: (value) {
                                setState(() {
                                  C6 = value;
                                  accident.c6b = 'X';
                                });
                              },
                            ),
                          ),
                          ListTile(
                            title: const Text(
                                "Roulait sur une place à sens giratoire",
                                style: TextStyle(
                                  fontSize: 15,
                                )),
                            leading: Checkbox(
                              value: C7,
                              onChanged: (value) {
                                setState(() {
                                  C7 = value;
                                  accident.c7b = 'X';
                                });
                              },
                            ),
                          ),
                          ListTile(
                            title: const Text(
                                "Heurtait à l'arrière, en roulant dans le même sens et sur une même file",
                                style: TextStyle(
                                  fontSize: 15,
                                )),
                            leading: Checkbox(
                              value: C8,
                              onChanged: (value) {
                                setState(() {
                                  C8 = value;
                                  accident.c8b = 'X';
                                });
                              },
                            ),
                          ),
                          ListTile(
                            title: const Text(
                                "Roulait dans le même sens et sur une file différente",
                                style: TextStyle(
                                  fontSize: 15,
                                )),
                            leading: Checkbox(
                              value: C9,
                              onChanged: (value) {
                                setState(() {
                                  C9 = value;
                                  accident.c9b = 'X';
                                });
                              },
                            ),
                          ),
                          ListTile(
                            title: const Text("Changait de file",
                                style: TextStyle(
                                  fontSize: 15,
                                )),
                            leading: Checkbox(
                              value: C10,
                              onChanged: (value) {
                                setState(() {
                                  C10 = value;
                                  accident.c10b = 'X';
                                });
                              },
                            ),
                          ),
                          ListTile(
                            title: const Text("Doublait",
                                style: TextStyle(
                                  fontSize: 15,
                                )),
                            leading: Checkbox(
                              value: C11,
                              onChanged: (value) {
                                setState(() {
                                  C11 = value;
                                  accident.c11b = 'X';
                                });
                              },
                            ),
                          ),
                          ListTile(
                            title: const Text("Virait à droite",
                                style: TextStyle(
                                  fontSize: 15,
                                )),
                            leading: Checkbox(
                              value: C12,
                              onChanged: (value) {
                                setState(() {
                                  C12 = value;
                                  accident.c12b = 'X';
                                });
                              },
                            ),
                          ),
                          ListTile(
                            title: const Text("Virait à gauche",
                                style: TextStyle(
                                  fontSize: 15,
                                )),
                            leading: Checkbox(
                              value: C13,
                              onChanged: (value) {
                                setState(() {
                                  C13 = value;
                                  accident.c13b = 'X';
                                });
                              },
                            ),
                          ),
                          ListTile(
                            title: const Text("Reculait",
                                style: TextStyle(
                                  fontSize: 15,
                                )),
                            leading: Checkbox(
                              value: C14,
                              onChanged: (value) {
                                setState(() {
                                  C14 = value;
                                  accident.c14b = 'X';
                                });
                              },
                            ),
                          ),
                          ListTile(
                            title: const Text(
                                "Empiétait sur une voie réservée à la circulation en sens inverse",
                                style: TextStyle(
                                  fontSize: 15,
                                )),
                            leading: Checkbox(
                              value: C15,
                              onChanged: (value) {
                                setState(() {
                                  C15 = value;
                                  accident.c15b = 'X';
                                });
                              },
                            ),
                          ),
                          ListTile(
                            title: const Text(
                                "Venait de droite (dans un carrefour)",
                                style: TextStyle(
                                  fontSize: 15,
                                )),
                            leading: Checkbox(
                              value: C16,
                              onChanged: (value) {
                                setState(() {
                                  C16 = value;
                                  accident.c16b = 'X';
                                });
                              },
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                            child: Row(
                              children: [
                                Radio(
                                    value: "N'avait pas observé un signal de priorité     X",
                                    groupValue: _groupC17SelectedValue,
                                    onChanged: _groupC17Changes),
                                const SizedBox(
                                  height: 20,
                                  width: 20,
                                ),
                                const Expanded(
                                    child: Text(
                                      "N'avait pas observé un signal de priorité",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                            child: Row(
                              children: [
                                Radio(
                                    value: "N'avait pas observé un feu rouge     X",
                                    groupValue: _groupC17SelectedValue,
                                    onChanged: _groupC17Changes),
                                const SizedBox(
                                  height: 20,
                                  width: 20,
                                ),
                                const Expanded(
                                    child: Text(
                                      "N'avait pas observé un feu rouge",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                      width: 600,
                    ),
                    SizedBox(
                      height: 35,
                      width: 100,
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>  pointA(accident:accident),
                            ),
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
                      height: 15,
                      width: 600,
                    ),
                  ],
                ),
              ),
            )));
  }
  void _groupC1Changes(String? value) {
    setState(() {
      _groupC1SelectedValue = value!;
      accident.c1b=value;
    });
  }
  void _groupC2Changes(String? value) {
    setState(() {
      _groupC2SelectedValue= value!;
      accident.c2b=value;
    });
  }
  void _groupC17Changes(String? value) {
    setState(() {
      _groupC17SelectedValue = value!;
      accident.c17b=value;
    });
  }
  getItemAndNavigate(BuildContext context) {}
}
//POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT //POINT POINT POINT POINT POINT POINT POINT
//POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT //POINT POINT POINT POINT POINT POINT POINT
//POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT //POINT POINT POINT POINT POINT POINT POINT

// ignore: camel_case_types
class pointB extends StatelessWidget {
  late Accident accident;
  pointB({required this.accident});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.yellow.shade700,
            title: const Text('Points de choc B'),
            // actions: <Widget>
            automaticallyImplyLeading: true,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context, false),
              // onPressed:() => exit(0),
            )),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child:
                  StepProgressIndicator(
                    totalSteps: 8,
                    currentStep: 5,
                    selectedColor: Colors.yellow.shade700,
                    unselectedColor: Colors.grey,
                  )),
              SizedBox(
                height: 160,
              ),

              Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: const Text(
                  "Y a-t-il eu contact entre les véhicules ?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 80,
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
                            MaterialPageRoute(builder: (context) => degatB(accident:accident)));
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
                          MaterialPageRoute(
                              builder: (context) => POINTB(accident:accident)),
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
                        ),),),),],),
              SizedBox(
                height: 220,
              ),
            ],),),),);
  }
  getItemAndNavigate(BuildContext context) {}
}

//POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT //POINT POINT POINT POINT POINT POINT POINT
//POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT //POINT POINT POINT POINT POINT POINT POINT
//POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT //POINT POINT POINT POINT POINT POINT POINT

// ignore: camel_case_types
class POINTB extends StatefulWidget {
  late Accident accident;
  POINTB({required this.accident});


  @override
  _POINTBState createState() => _POINTBState(accident:accident);
}

class _POINTBState extends State<POINTB> {
  late Accident accident;
  _POINTBState({required this.accident});

  final SignatureController point = SignatureController(
    penStrokeWidth: 8,
    penColor: Colors.black,
    exportBackgroundColor: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Points de choc B',
        home: Scaffold(
            appBar: AppBar(
                centerTitle: true,
                backgroundColor: Colors.yellow.shade700,
                title: const Text('Points de choc B'),
                automaticallyImplyLeading: true,
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.pop(context, false),
                  // onPressed:() => exit(0),
                )),
            body: Center(
              child: Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 15,
                    ),
                    StepProgressIndicator(
                      totalSteps: 8,
                      currentStep: 5,
                      selectedColor: Colors.yellow.shade700,
                      unselectedColor: Colors.grey,
                    ),
                    SizedBox(
                      height:40,
                    ),
                    Container(
                      height:400,
                      width: 500,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('C:/Users/Public/constat/point.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                      child: Signature(
                        controller: point,
                        height: 400,
                        backgroundColor: Colors.transparent,
                      ),
                    ),

                    Container(
                      decoration: const BoxDecoration(color: Colors.white24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          //SHOW EXPORTED IMAGE IN NEW ROUTE
                          IconButton(
                            icon: const Icon(Icons.check),
                            color: Colors.green,
                            onPressed: () async {
                              if (point.isNotEmpty) {
                                accident.pointb = await point.toPngBytes();
                                if (accident.pointb != null) {
                                  await Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context) =>  degatB(accident:accident),),);
                                }
                              }
                            },
                          ),//CLEAR CANVAS
                          IconButton(
                            icon: const Icon(Icons.clear),
                            color: Colors.red,
                            onPressed: () {
                              setState(() => point.clear());
                            },
                          ),
                        ],
                      ),
                    ),const SizedBox(
                      height: 15,
                      width: 600,
                    ),],),),
            )));
  }
  getItemAndNavigate(BuildContext context) {}
}

//DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT
//DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT
//DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT

// ignore: camel_case_types
class degatB extends StatelessWidget {
  late Accident accident;
  degatB({ required this.accident});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.yellow.shade700,
            title: const Text('Dégâts véhicule B'),
            // actions: <Widget>
            automaticallyImplyLeading: true,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context, false),
              // onPressed:() => exit(0),
            )),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const SizedBox(
                height: 15,
                width: 20,
              ),
              Container(
                  margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: StepProgressIndicator(
                    totalSteps: 8,
                    currentStep: 4,
                    selectedColor: Colors.yellow.shade700,
                    unselectedColor: Colors.grey,
                  )),
              const SizedBox(
                height: 150,
              ),
              Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: const Text(
                  "Y a-t-il des dégâts au véhicule ?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 90,
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
                          MaterialPageRoute(
                              builder: (context) => photoB(accident:accident)),
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
                          MaterialPageRoute(
                              builder: (context) => DEGATB(accident:accident)),
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
                        ),),),),],) ,
              SizedBox(
                height: 220,
              ),],),),),);
  }
  getItemAndNavigate(BuildContext context) {}
}

//DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT
//DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT
//DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT DEGAT

// ignore: camel_case_types
class DEGATB extends StatefulWidget {
  late Accident accident;
  DEGATB({required this.accident});

  @override
  _DEGATBState createState() => _DEGATBState(accident:accident );
}

class _DEGATBState extends State<DEGATB> {
  late Accident accident;
  _DEGATBState({required this.accident});


  @override
  void initState() {
    super.initState();
  }

  final List<String> _list = [];
  bool? D1 = false;
  bool? D2 = false;
  bool? D3 = false;
  bool? D4 = false;
  bool? D5 = false;
  bool? D6 = false;
  bool? D7 = false;
  bool? D8 = false;
  bool? D9 = false;
  bool? D10 = false;
  bool? D11 = false;
  bool? D12 = false;
  bool? D13 = false;
  bool? D14 = false;
  bool? D15 = false;
  bool? D16 = false;
  bool? D17 = false;
  bool? D18 = false;
  bool? D19 = false;
  bool? D20 = false;
  bool? D21 = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Dégâts vehicule B',
        home: Scaffold(
            appBar: AppBar(
                centerTitle: true,
                backgroundColor: Colors.yellow.shade700,
                title: const Text('Dégâts vehicule B'),
                automaticallyImplyLeading: true,
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.pop(context, false),
                  // onPressed:() => exit(0),
                )),
            body: Center(
              child: Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 15,
                      width: 20,
                    ),
                    StepProgressIndicator(
                      totalSteps: 8,
                      currentStep: 5,
                      selectedColor: Colors.yellow.shade700,
                      unselectedColor: Colors.grey,
                    ),
                    const SizedBox(
                      height: 15,
                      width: 20,
                    ),
                    Expanded(

                      child: ListView(padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),children: <Widget>[
                        ListTile(title: const Text("Pare-Choc avant", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15,)),
                          leading: Checkbox(
                            value: D1,
                            onChanged: (value) {
                              setState(() {
                                D1 = value;
                                accident.d1b = "Pare-Choc avant";
                              });
                            },
                          ),),
                        ListTile(title: const Text("Feu avant gauche", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15,)),
                            leading: Checkbox(
                              value: D2,
                              onChanged: (value) {
                                setState(() {
                                  D2 = value;
                                  accident.d2b = "Feu avant gauche";
                                });},)),
                        ListTile(title: const Text("Feu avant droit", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15,)),
                            leading: Checkbox(
                              value: D3,
                              onChanged: (value) {
                                setState(() {
                                  D3 = value;
                                  accident.d3b = "Feu avant droit";
                                });},)),
                        ListTile(title: const Text("Capot moteur", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15,)),
                            leading: Checkbox(
                              value: D4,
                              onChanged: (value) {
                                setState(() {
                                  D4 = value;
                                  accident.d4b = "Capot moteur";
                                });},)),
                        ListTile(title: const Text("Flant avant gauche", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15,)),
                            leading: Checkbox(
                              value: D5,
                              onChanged: (value) {
                                setState(() {
                                  D5 = value;
                                  accident.d5b = "Flant avant gauche";
                                });},)),
                        ListTile(title: const Text("Flant avant droit", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15,)),
                            leading: Checkbox(
                              value: D6,
                              onChanged: (value) {
                                setState(() {
                                  D6 = value;
                                  accident.d6b = "Flant avant droit";
                                });},)),
                        ListTile(title: const Text("Pare-brise", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15,)),
                            leading: Checkbox(
                              value: D7,
                              onChanged: (value) {
                                setState(() {
                                  D7 = value;
                                  accident.d7b = "Pare-brise";
                                });},)),
                        ListTile(title: const Text("Rétroviseur gauche", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15,)),
                            leading: Checkbox(
                              value: D8,
                              onChanged: (value) {
                                setState(() {
                                  D8 = value;
                                  accident.d8b = "Rétroviseur gauche";
                                });},)),
                        ListTile(title: const Text("Rétroviseur droit", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15,)),
                            leading: Checkbox(
                              value: D9,
                              onChanged: (value) {
                                setState(() {
                                  D9 = value;
                                  accident.d9b = "Rétroviseur droit";
                                });},)),
                        ListTile(title: const Text("Portière avant gauche", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15,)),
                            leading: Checkbox(
                              value: D10,
                              onChanged: (value) {
                                setState((){
                                  D10 = value;
                                  accident.d10b = "Portière avant gauche";
                                });},)),
                        ListTile(title: const Text("Portière avant droit", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15,)),
                            leading: Checkbox(
                              value: D11,
                              onChanged: (value) {
                                setState(() {
                                  D11 = value;
                                  accident.d11b = "Portière avant droit";
                                });},)),
                        ListTile(title: const Text("Portière avant gauche", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15,)),
                            leading: Checkbox(
                              value: D12,
                              onChanged: (value) {
                                setState(() {
                                  D12 = value;
                                  accident.d12b = "Portière avant gauche";
                                });},)),
                        ListTile(title: const Text("Portière arrière droite", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15,)),
                            leading: Checkbox(
                              value: D13,
                              onChanged: (value) {
                                setState(() {
                                  D13 = value;
                                  accident.d13b = "Portière arrière droite";
                                });},)),
                        ListTile(title: const Text("Toit", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15,)),
                            leading: Checkbox(
                              value: D14,
                              onChanged: (value) {
                                setState(() {
                                  D14 = value;
                                  accident.d14b = "Toit";
                                });},)),
                        ListTile(title: const Text("Lunette arrière", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15,)),
                            leading: Checkbox(
                              value: D15,
                              onChanged: (value) {
                                setState(() {
                                  D15 = value;
                                  accident.d15b = "Lunette arrière";
                                });},)),
                        ListTile(title: const Text("Flanc arrière gauche", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15,)),
                            leading: Checkbox(
                              value: D16,
                              onChanged: (value) {
                                setState(() {
                                  D16 = value;
                                  accident.d16b = "Flanc arrière gauche";
                                });},)),
                        ListTile(title: const Text("Flanc arrière droit", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15,)),
                            leading: Checkbox(
                              value: D17,
                              onChanged: (value) {
                                setState(() {
                                  D17 = value;
                                  accident.d17b = "Flanc arrière droit";
                                });},)),
                        ListTile(title: const Text("Capot arrière", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15,)),
                            leading: Checkbox(
                              value: D18,
                              onChanged: (value) {
                                setState(() {
                                  D18 = value;
                                  accident.d18b = "Capot arrière";
                                });},)),
                        ListTile(title: const Text("Feu arrière gauche", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15,)),
                            leading: Checkbox(
                              value: D19,
                              onChanged: (value) {
                                setState(() {
                                  D19 = value;
                                  accident.d19b = "Feu arrière gauche";
                                });},)),
                        ListTile(title: const Text("Feu arrière droit", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15,)),
                            leading: Checkbox(
                              value: D20,
                              onChanged: (value) {
                                setState(() {
                                  D20 = value;
                                  accident.d20b ="Feu arrière droit";
                                });},)),
                        ListTile(title: const Text("Pare-chocs arrière", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15,)),
                            leading: Checkbox(
                              value: D21,
                              onChanged: (value) {
                                setState(() {
                                  D21 = value;
                                  accident.d21b ="Pare-chocs arrière";
                                });},)),
                      ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                      width: 600,
                    ),
                    SizedBox(
                      height: 35,
                      width: 100,
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => photoB(accident:accident),
                            ),
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
                      height: 15,
                      width: 600,
                    ),
                  ],
                ),
              ),
            )));
  }
  getItemAndNavigate(BuildContext context) {}
}


// PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO
// PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO
// PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO PHOTO

class photoB extends StatefulWidget {
  late Accident accident;
  photoB({required this.accident});


  @override
  _photoBState createState() => _photoBState(accident:accident);
}

class _photoBState extends State<photoB> {
  late Accident accident;
  _photoBState({required this.accident});

  String? path1;
  String? path2;
  String? path3;
  String? path4;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.yellow.shade700,
            title: const Text('Photo B'),
            automaticallyImplyLeading: true,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context, false),
              // onPressed:() => exit(0),
            )),
        body: Column(
          children: [
            const SizedBox(
              height: 15,
              width: 20,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: StepProgressIndicator(
                totalSteps: 8,
                currentStep: 6,
                selectedColor: Colors.yellow.shade700,
                unselectedColor: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 15,
              width: 20,
            ),

            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  path1 != null
                      ? Container(
                    height: 200,
                    width: 150,
                    child: Image.file(
                      File(path1!),
                      fit: BoxFit.contain,
                    ),
                  )
                      : SizedBox.shrink(),

                  path2 != null
                      ? Container(
                    height: 200,
                    width: 150,
                    child: Image.file(
                      File(path2!),
                      fit: BoxFit.contain,
                    ),
                  )
                      : SizedBox.shrink(),
                ]),
            const SizedBox(
              height: 10,
              width: 20,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  path3 != null
                      ? Container(
                    height: 200,
                    width: 150,
                    child: Image.file(
                      File(path3!),
                      fit: BoxFit.contain,
                    ),
                  )
                      : SizedBox.shrink(),

                  path4 != null
                      ? Container(
                    height: 200,
                    width: 150,
                    child: Image.file(
                      File(path4!),
                      fit: BoxFit.contain,
                    ),
                  )
                      : SizedBox.shrink(),
                ]),
            const SizedBox(
              height: 10,
              width: 20,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                      height: 35,
                      width: 100,
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        color: Colors.yellow.shade700,
                        child: Icon(
                          Icons.photo_library,
                          color: Colors.white,
                        ) ,
                        onPressed: () async {
                          List<Media>? res = await ImagesPicker.pick(
                            count: 4,
                            pickType: PickType.all,
                            language: Language.System,
                            maxTime: 30,
                            // maxSize: 500,
                          );
                          print(res);
                          if (res != null) {
                            print(res.map((e) => e.path).toList());
                            setState(() {
                              path1 = res[0].thumbPath ;
                            });
                            // bool status = await ImagesPicker.saveImageToAlbum(File(res[0]?.path));
                            //

                          }
                          print(res);
                          if (res != null) {
                            print(res.map((e) => e.path).toList());
                            setState(() {
                              path2 = res[1].thumbPath ;

                            });
                            // bool status = await ImagesPicker.saveImageToAlbum(File(res[0]?.path));
                            // print(status);

                          }
                          print(res);
                          if (res != null) {
                            print(res.map((e) => e.path).toList());
                            setState(() {
                              path3 = res[2].thumbPath ;

                            });
                            // bool status = await ImagesPicker.saveImageToAlbum(File(res[0]?.path));
                            // print(status);

                          }
                          print(res);
                          if (res != null) {
                            print(res.map((e) => e.path).toList());
                            setState(() {
                              path4 = res[3].thumbPath ;

                            });

                          }
                          accident.photo1 = path1 as Uint8List?;
                          accident.photo2 = path2 as Uint8List?;
                          accident.photo3 = path3 as Uint8List?;
                          accident.photo4 = path4 as Uint8List?;
                        },
                      )),

                  SizedBox(
                    height: 35,
                    width: 110,
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      color: Colors.yellow.shade700,
                      child: Icon(
                        Icons.photo_camera,
                        color: Colors.white,
                      ),

                      onPressed: () async {
                        List<Media>? res = await ImagesPicker.openCamera(
                          // pickType: PickType.video,
                          pickType: PickType.image,
                          quality: 0.8,
                          maxSize: 800,
                          maxTime: 15,
                        );
                        print(res);
                        if (res != null) {
                          print(res[0].path);
                          setState(() {
                            path1 = res[0].thumbPath ;
                          });
                        }
                        List<Media>? res1 = await ImagesPicker.openCamera(
                          // pickType: PickType.video,
                          pickType: PickType.image,
                          quality: 0.8,
                          maxSize: 800,
                          maxTime: 15,
                        );
                        print(res1);
                        if (res1 != null) {
                          print(res1[0].path);
                          setState(() {
                            path2 = res1[0].thumbPath ;
                          });
                        }
                        List<Media>? res2 = await ImagesPicker.openCamera(
                          // pickType: PickType.video,
                          pickType: PickType.image,
                          quality: 0.8,
                          maxSize: 800,
                          maxTime: 15,
                        );
                        print(res2);
                        if (res2 != null) {
                          print(res2[0].path);
                          setState(() {
                            path3 = res2[0].thumbPath ;
                          });
                        }
                        List<Media>? res3 = await ImagesPicker.openCamera(
                          // pickType: PickType.video,
                          pickType: PickType.image,
                          quality: 0.8,
                          maxSize: 800,
                          maxTime: 15,
                        );
                        print(res3);
                        if (res3 != null) {
                          print(res3[0].path);
                          setState(() {
                            path4 = res3[0].thumbPath ;
                          });
                        }
                        accident.photo1 = path1 as Uint8List?;
                        accident.photo2 = path2 as Uint8List?;
                        accident.photo3 = path3 as Uint8List?;
                        accident.photo4 = path4 as Uint8List?;
                      },
                    ),
                  ),
                ]),
            const SizedBox(
              height: 10,
              width: 600,
            ),
            SizedBox(
              height: 35,
              width: 100,
              // ignore: deprecated_member_use
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => signatureA(accident:accident)),
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
                  ),),),),
          ],
        ),
      ),
    );
  }

  Future<File> downloadFile(String url) async {
    Dio simple = Dio();
    String savePath = Directory.systemTemp.path + '/' + url.split('/').last;
    await simple.download(url, savePath,
        options: Options(responseType: ResponseType.bytes));
    print(savePath);
    File file = new File(savePath);
    return file;
  }
}

// SIGNATURE  SIGNATURE SIGNATURE SIGNATURE SIGNATURE SIGNATURE SIGNATURE SIGNATURE SIGNATURE SIGNATURE SIGNATURE SIGNATURE SIGNATURE SIGNATURE SIGNATURE
// SIGNATURE  SIGNATURE SIGNATURE SIGNATURE SIGNATURE SIGNATURE SIGNATURE SIGNATURE SIGNATURE SIGNATURE SIGNATURE SIGNATURE SIGNATURE SIGNATURE SIGNATURE
// SIGNATURE  SIGNATURE SIGNATURE SIGNATURE SIGNATURE SIGNATURE SIGNATURE SIGNATURE SIGNATURE SIGNATURE SIGNATURE SIGNATURE SIGNATURE SIGNATURE SIGNATURE

class signatureB extends StatefulWidget {
  late Accident accident;
  signatureB({required this.accident});


  @override
  _signatureBState createState() => _signatureBState(accident:accident);
}

class _signatureBState extends State<signatureB> {
  late Accident accident;
  _signatureBState({required this.accident});

  final SignatureController _controller = SignatureController(
    penStrokeWidth: 5,
    penColor: Colors.black,
    exportBackgroundColor: Colors.white,

  );

  @override
  void initState() {
    super.initState();
    _controller.addListener(() => print('Value changed'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.yellow.shade700,
          title: const Text('Signature B'),
          automaticallyImplyLeading: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context, false),
            // onPressed:() => exit(0),
          )),
      body: ListView(
        children: <Widget>[
          const SizedBox(
            height: 15,
            width: 20,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: StepProgressIndicator(
              totalSteps: 8,
              currentStep: 7,
              selectedColor:Colors.yellow.shade700,
              unselectedColor: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 50,
            width: 20,
          ),
          //SIGNATURE CANVAS
          Signature(
            controller: _controller,
            height: 400,
            backgroundColor: Colors.white,
          ),
          //OK AND CLEAR BUTTONS
          Container(
            decoration: const BoxDecoration(color: Colors.white24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                //SHOW EXPORTED IMAGE IN NEW ROUTE
                IconButton(
                  icon: const Icon(Icons.check),
                  color: Colors.green,
                  onPressed: () async {
                    if (_controller.isNotEmpty) {
                      accident.signatureb =
                      await _controller.toPngBytes();
                      if (accident.signatureb != null) {
                        await Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) =>  etatAB(accident:accident),
                          ),
                        );
                      }
                    }
                  },
                ),


                //CLEAR CANVAS
                IconButton(
                  icon: const Icon(Icons.clear),
                  color: Colors.red,
                  onPressed: () {
                    setState(() => _controller.clear());
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );

  }
}





