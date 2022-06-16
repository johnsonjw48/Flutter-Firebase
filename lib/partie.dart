// ignore_for_file: must_be_immutable, unused_field
// ignore: unused_import, import_of_legacy_library_into_null_safe

// ignore: unused_import
import 'package:path/path.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:startup_namer/etat.dart';
import 'package:startup_namer/models/accident.dart';
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
class assure extends StatefulWidget {
  late Accident accident;
  assure({required this.accident,});

  @override
  _assureState createState() => _assureState(accident:accident);
}
class _assureState extends State<assure> {
  late Accident accident;
  _assureState({required this.accident,});

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
      title: 'Assuré',
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.blueAccent,
            title: const Text('Assuré'),
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
        selectedColor: Colors.blueAccent,
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
                        accident.nom_assure=Noma.text;
                        accident.prenom_assure=Prenoma.text;
                        accident.adresse_assure=Adressea.text;
                        accident.codepostal_assure=Codepostala.text;
                        accident.pays_assure=Paysa.text;
                        accident.telephone_assure=Telephonea.text;
                        accident.email_assure=Emaila.text;

                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => assureur(accident:accident)),
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
class assureur extends StatefulWidget {
  late Accident accident;
  assureur({required this.accident,});

  @override
  _assureur createState() => _assureur(accident:accident);
}

class _assureur extends State<assureur>{
  late Accident accident;
  _assureur({required this.accident, });

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
                backgroundColor: Colors.blueAccent,
                title: const Text('Assureur'),
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
    selectedColor: Colors.blueAccent,
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
                      accident.nom_assureur=Nomaa.text;
                      accident.email_assureur=Emailaa.text;
                      accident.num_contrat=Numcontrataa.text;
                      accident.num_carte=Numcarteaa.text;
                      accident.date_debut=Dateaa1.text;
                      accident.date_fin=Dateaa2.text;
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => agence(accident:accident)),
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
class agence extends StatefulWidget {
  late Accident accident;
  agence({required this.accident,});

  @override
  _agenceState createState() => _agenceState(accident:accident);
}

class _agenceState extends State<agence> {
  late Accident accident;
  _agenceState({required this.accident});


  TextEditingController Nomag = TextEditingController();
  TextEditingController Adresseag = TextEditingController();
  TextEditingController Telephoneag = TextEditingController();
  TextEditingController Emailag = TextEditingController();
  TextEditingController Paysag = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
      title: 'Agence ou Courtier',
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.blueAccent,
            title: const Text('Agence / Courtier'),
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
                  selectedColor: Colors.blueAccent,
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
                        accident.nom_agence=Nomag.text;
                        accident.adresse_agence=Adresseag.text;
                        accident.telephone_agence=Telephoneag.text;
                        accident.email_agence=Emailag.text;
                        accident.pays_agence=Paysag.text;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => vehicule(accident:accident)),
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
class vehicule extends StatefulWidget {
  late Accident accident;
  vehicule({required this.accident,});

  @override
  _vehiculeState createState() => _vehiculeState(accident:accident);
}

class _vehiculeState extends State<vehicule> {
  late Accident accident;
  _vehiculeState({required this.accident});

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
      title: 'Véhicule',
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.blueAccent,
            title: const Text('Véhicule'),
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
                  selectedColor: Colors.blueAccent,
                  unselectedColor: Colors.grey,
                ),
            const SizedBox(
                  height: 15,
                  width: 600,
                ),
                const SizedBox(
                  height: 50,
                  width: 600,
                  child: Card(
                    color: Colors.blueAccent,
                    child: Center(
                      child: Text(
                        "Véhicule",
                        style: TextStyle(color: Colors.white),
                      ), //Text
                    ), //Center
                  ), //Card
                ),
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
                const SizedBox(
                  height: 50,
                  width: 600,
                  child: Card(
                    color: Colors.blueAccent,
                    child: Center(
                      child: Text(
                        "Remorque",
                        style: TextStyle(color: Colors.white),
                      ), //Text
                    ), //Center
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
                      accident.type=typev.text;
                      accident.marque=marquev.text;
                      accident.num_vehicule=numplaquev.text;
                      accident.pays_vehicule=paysimv.text;
                      accident.num_remorque=numplaquer.text;
                      accident.pays_remorque=paysimr.text;
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  Conducteur(accident:accident)),
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
class Conducteur extends StatefulWidget {
  late Accident accident;
  Conducteur({ required this.accident});

  @override
  _Conducteur createState() => _Conducteur(accident:accident);
}

class _Conducteur extends State<Conducteur>{
  late Accident accident;
  _Conducteur({required this.accident});

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
            backgroundColor: Colors.blueAccent,
            title: const Text('Conducteur'),
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
        selectedColor: Colors.blueAccent,
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
                      accident.nom_conducteur=nomc.text;
                      accident.prenom_conducteur=prenomc.text;
                      accident.date_conducteur=datenaisc.text;
                      accident.adresse_conducteur=adressec.text;
                      accident.pays_conducteur=paysc.text;
                      accident.telephone_conducteur=telephonec.text;
                      accident.email_conducteur=emailc.text;
                      accident.num_permis=numpermisc.text;
                      accident.cat_permis=catpermisc.text;
                      accident.date_permis=datepermisc.text;
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => circonstance(accident:accident)),
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
class circonstance extends StatefulWidget {
  late Accident accident;
   circonstance({required this.accident});

   @override
  _circonstanceState createState() => _circonstanceState(accident:accident);
}
class _circonstanceState extends State<circonstance> {
  late Accident accident;
  _circonstanceState({required this.accident});


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
        title: 'Circonstances',
        home: Scaffold(
            appBar: AppBar(
                centerTitle: true,
                backgroundColor: Colors.blueAccent,
                title: const Text('Circonstances'),
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
                      selectedColor: Colors.blueAccent,
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
                                      value: "X    En stationnement",
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
                                      value: "X    A l'arrêt",
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
                                    value: "X    Quittait stationnement",
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
                                    value: "X    Ouvrait une portière",
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
                                  accident.c3 ='X';
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
                                  accident.c4 = 'X';
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
                                  accident.c5 = 'X';
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
                                  accident.c6 = 'X';
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
                                  accident.c7 = 'X';
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
                                  accident.c8 = 'X';
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
                                  accident.c9 = 'X';
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
                                  accident.c10 = 'X';
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
                                  accident.c11 = 'X';
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
                                  accident.c12 = 'X';
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
                                  accident.c13 = 'X';
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
                                  accident.c14 = 'X';
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
                                  accident.c15 = 'X';
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
                                  accident.c16 = 'X';
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
                                    value: "X    N'avait pas observé un signal de priorité",
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
                                    value: "X    N'avait pas observé un feu rouge",
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
                                builder: (context) =>  point(accident:accident),
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
      accident.c1=value;
    });
  }
  void _groupC2Changes(String? value) {
    setState(() {
      _groupC2SelectedValue= value!;
      accident.c2=value;
    });
  }
  void _groupC17Changes(String? value) {
    setState(() {
      _groupC17SelectedValue = value!;
      accident.c17=value;
    });
  }
  getItemAndNavigate(BuildContext context) {}
}
//POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT //POINT POINT POINT POINT POINT POINT POINT
//POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT //POINT POINT POINT POINT POINT POINT POINT
//POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT POINT //POINT POINT POINT POINT POINT POINT POINT

// ignore: camel_case_types
class point extends StatelessWidget {
  late Accident accident;
   point({required this.accident});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.blueAccent,
            title: const Text('Points de choc'),
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
            selectedColor: Colors.blueAccent,
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
    MaterialPageRoute(builder: (context) => degat(accident:accident)));
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
                              builder: (context) => POINT(accident:accident)),
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
class POINT extends StatefulWidget {
  late Accident accident;
  POINT({required this.accident});


  @override
  _POINTState createState() => _POINTState(accident:accident);
}

class _POINTState extends State<POINT> {
  late Accident accident;
  _POINTState({required this.accident});

  final SignatureController point = SignatureController(
    penStrokeWidth: 8,
    penColor: Colors.black,
    exportBackgroundColor: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Points de choc',
        home: Scaffold(
            appBar: AppBar(
                centerTitle: true,
                backgroundColor: Colors.blueAccent,
                title: const Text('Points de choc'),
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
                      selectedColor: Colors.blueAccent,
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
                                accident.point = await point.toPngBytes();
                                if (accident.point != null) {
                                  await Navigator.of(context).push(
                                    MaterialPageRoute(builder: (context) =>  degat(accident:accident),),);
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
class degat extends StatelessWidget {
  late Accident accident;
 degat({ required this.accident});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.blueAccent,
            title: const Text('Dégâts véhicule'),
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
                currentStep: 5,
                selectedColor: Colors.blueAccent,
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
                              builder: (context) => photo(accident:accident)),
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
                              builder: (context) => DEGAT(accident:accident)),
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
class DEGAT extends StatefulWidget {
  late Accident accident;
 DEGAT({required this.accident});

  @override
  _DEGATState createState() => _DEGATState(accident:accident );
}

class _DEGATState extends State<DEGAT> {
  late Accident accident;
  _DEGATState({required this.accident});


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
        title: 'Dégâts vehicule',
        home: Scaffold(
            appBar: AppBar(
                centerTitle: true,
                backgroundColor: Colors.blueAccent,
                title: const Text('Dégâts vehicule'),
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
                      selectedColor: Colors.blueAccent,
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
                                accident.d1 = "Pare-Choc avant";
                               });
                            },
                          ),),
                        ListTile(title: const Text("Feu avant gauche", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15,)),
                            leading: Checkbox(
                              value: D2,
                              onChanged: (value) {
                                setState(() {
                                  D2 = value;
                                  accident.d2 = "Feu avant gauche";
                                  });},)),
                        ListTile(title: const Text("Feu avant droit", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15,)),
                            leading: Checkbox(
                              value: D3,
                              onChanged: (value) {
                                setState(() {
                                  D3 = value;
                                  accident.d3 = "Feu avant droit";
                                  });},)),
                        ListTile(title: const Text("Capot moteur", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15,)),
                            leading: Checkbox(
                              value: D4,
                              onChanged: (value) {
                                setState(() {
                                  D4 = value;
                                  accident.d4 = "Capot moteur";
                                  });},)),
                        ListTile(title: const Text("Flant avant gauche", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15,)),
                            leading: Checkbox(
                              value: D5,
                              onChanged: (value) {
                                setState(() {
                                  D5 = value;
                                  accident.d5 = "Flant avant gauche";
                                  });},)),
                        ListTile(title: const Text("Flant avant droit", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15,)),
                            leading: Checkbox(
                              value: D6,
                              onChanged: (value) {
                                setState(() {
                                  D6 = value;
                                  accident.d6 = "Flant avant droit";
                                 });},)),
                        ListTile(title: const Text("Pare-brise", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15,)),
                            leading: Checkbox(
                              value: D7,
                              onChanged: (value) {
                                setState(() {
                                  D7 = value;
                                  accident.d7 = "Pare-brise";
                                  });},)),
                        ListTile(title: const Text("Rétroviseur gauche", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15,)),
                            leading: Checkbox(
                              value: D8,
                              onChanged: (value) {
                                setState(() {
                                  D8 = value;
                                  accident.d8 = "Rétroviseur gauche";
                                 });},)),
                        ListTile(title: const Text("Rétroviseur droit", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15,)),
                            leading: Checkbox(
                              value: D9,
                              onChanged: (value) {
                                setState(() {
                                  D9 = value;
                                  accident.d9 = "Rétroviseur droit";
                                  });},)),
                        ListTile(title: const Text("Portière avant gauche", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15,)),
                            leading: Checkbox(
                              value: D10,
                              onChanged: (value) {
                                setState((){
                                  D10 = value;
                                  accident.d10 = "Portière avant gauche";
                                  });},)),
                        ListTile(title: const Text("Portière avant droit", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15,)),
                            leading: Checkbox(
                              value: D11,
                              onChanged: (value) {
                                setState(() {
                                  D11 = value;
                                  accident.d11 = "Portière avant droit";
                                  });},)),
                        ListTile(title: const Text("Portière avant gauche", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15,)),
                            leading: Checkbox(
                              value: D12,
                              onChanged: (value) {
                                setState(() {
                                  D12 = value;
                                  accident.d12 = "Portière avant gauche";
                                  });},)),
                        ListTile(title: const Text("Portière arrière droite", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15,)),
                            leading: Checkbox(
                              value: D13,
                              onChanged: (value) {
                                setState(() {
                                  D13 = value;
                                  accident.d13 = "Portière arrière droite";
                                  });},)),
                        ListTile(title: const Text("Toit", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15,)),
                            leading: Checkbox(
                              value: D14,
                              onChanged: (value) {
                                setState(() {
                                  D14 = value;
                                  accident.d14 = "Toit";
                                  });},)),
                        ListTile(title: const Text("Lunette arrière", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15,)),
                            leading: Checkbox(
                              value: D15,
                              onChanged: (value) {
                                setState(() {
                                  D15 = value;
                                  accident.d15 = "Lunette arrière";
                                  });},)),
                        ListTile(title: const Text("Flanc arrière gauche", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15,)),
                            leading: Checkbox(
                              value: D16,
                              onChanged: (value) {
                                setState(() {
                                  D16 = value;
                                  accident.d16 = "Flanc arrière gauche";
                                  });},)),
                        ListTile(title: const Text("Flanc arrière droit", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15,)),
                            leading: Checkbox(
                              value: D17,
                              onChanged: (value) {
                                setState(() {
                                  D17 = value;
                                  accident.d17 = "Flanc arrière droit";
                                  });},)),
                        ListTile(title: const Text("Capot arrière", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15,)),
                            leading: Checkbox(
                              value: D18,
                              onChanged: (value) {
                                setState(() {
                                  D18 = value;
                                  accident.d18 = "Capot arrière";
                                  });},)),
                        ListTile(title: const Text("Feu arrière gauche", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15,)),
                            leading: Checkbox(
                              value: D19,
                              onChanged: (value) {
                                setState(() {
                                  D19 = value;
                                  accident.d19 = "Feu arrière gauche";
                                  });},)),
                        ListTile(title: const Text("Feu arrière droit", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15,)),
                            leading: Checkbox(
                              value: D20,
                              onChanged: (value) {
                                setState(() {
                                  D20 = value;
                                  accident.d20 ="Feu arrière droit";
                                  });},)),
                        ListTile(title: const Text("Pare-chocs arrière", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15,)),
                            leading: Checkbox(
                              value: D21,
                              onChanged: (value) {
                                setState(() {
                                  D21 = value;
                                  accident.d21 = "Pare-chocs arrière";
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
                              builder: (context) => photo(accident:accident),
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

class photo extends StatefulWidget {
  late Accident accident;
  photo({required this.accident});


  @override
  _photoState createState() => _photoState(accident:accident);
}

class _photoState extends State<photo> {
  late Accident accident;
  _photoState({required this.accident});

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
            backgroundColor: Colors.blueAccent,
            title: const Text('Photo'),
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
              selectedColor: Colors.blueAccent,
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
            color: Colors.blueAccent,
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
                    path1 = res[0].path;
                  });
                   // bool status = await ImagesPicker.saveImageToAlbum(File(res[0]?.path));
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

                accident.photo1 = path1 as Uint8List? ;
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
              color: Colors.blueAccent,
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
                        builder: (context) => signature(accident:accident)),
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

class signature extends StatefulWidget {
  late Accident accident;
  signature({required this.accident});


  @override
  _signatureState createState() => _signatureState(accident:accident);
}

class _signatureState extends State<signature> {
  late Accident accident;
  _signatureState({required this.accident});

  final SignatureController _controller = SignatureController(
    penStrokeWidth: 5,
    penColor: Colors.black,
    exportBackgroundColor: Colors.transparent,

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
              backgroundColor: Colors.blueAccent,
              title: const Text('Signature'),
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
                  selectedColor: Colors.blueAccent,
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
                          accident.signature =
                          await _controller.toPngBytes();
                          if (accident.signature != null) {
                            await Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) =>  etat(accident:accident),
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





