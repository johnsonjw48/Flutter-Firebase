// ignore_for_file: unused_import, import_of_legacy_library_into_null_safe

import 'package:path/path.dart';
import 'package:startup_namer/etat.dart';
import 'package:startup_namer/intro_partie.dart';
import 'package:startup_namer/intro_partieAB.dart';
import 'package:startup_namer/models/accident.dart';
import 'package:startup_namer/partie.dart';
import 'package:startup_namer/profil.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:step_progress_indicator/step_progress_indicator.dart';


void main() {

  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Navigation Basics',
    home: accueil(),
  ));
}

// ACCUEIL ACCUEIL ACCUEIL ACCUEIL ACCUEIL ACCUEIL ACCUEIL ACCUEIL ACCUEIL ACCUEIL ACCUEIL ACCUEIL ACCUEIL ACCUEIL ACCUEIL ACCUEIL
// ACCUEIL ACCUEIL ACCUEIL ACCUEIL ACCUEIL ACCUEIL ACCUEIL ACCUEIL ACCUEIL ACCUEIL ACCUEIL ACCUEIL ACCUEIL ACCUEIL ACCUEIL ACCUEIL
// ACCUEIL ACCUEIL ACCUEIL ACCUEIL ACCUEIL ACCUEIL ACCUEIL ACCUEIL ACCUEIL ACCUEIL ACCUEIL ACCUEIL ACCUEIL ACCUEIL ACCUEIL ACCUEIL

// ignore: camel_case_types
class accueil extends StatelessWidget {
  const accueil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        extendBodyBehindAppBar: true,
        body: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('C:/Users/Public/constat/constat.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
                child: Container(
                  decoration:
                      BoxDecoration(color: Colors.white.withOpacity(0.0)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        const Text(
                          'CONSTAT AMIABLE',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          'Une application de déclaration des sinistres automobiles au Bénin',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            SizedBox(
                              height: 60,
                              width: 300, // <-- match_parent
                              // ignore: deprecated_member_use
                              child: RaisedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => condition()));
                                },
                                color: Colors.blueAccent,
                                textColor: Colors.white,
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Text(
                                  'DECLARER UN ACCIDENT',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            SizedBox(
                              height:50,
                            ),
                          ],
                        ),
                      ],
                    )),
                    // Column of widgets here...
                  ),
                ),
              ),
            ),
            Container(
                // padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text("Copyrigh © by Cabrel & Lesly 2022",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),),
                )),
          ],
        ),
      ),
    );
  }

  getItemAndNavigate(BuildContext context) {}
}
//CONDITION CONDITION CONDITION CONDITION CONDITION CONDITION CONDITION CONDITION CONDITION CONDITION CONDITION CONDITION CONDITION CONDITION
//CONDITION CONDITION CONDITION CONDITION CONDITION CONDITION CONDITION CONDITION CONDITION CONDITION CONDITION CONDITION CONDITION CONDITION
//CONDITION CONDITION CONDITION CONDITION CONDITION CONDITION CONDITION CONDITION CONDITION CONDITION CONDITION CONDITION CONDITION CONDITION

// ignore: camel_case_types
class condition extends StatelessWidget {
  condition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
  home: Scaffold(
  appBar: AppBar(
  centerTitle: true,
  backgroundColor: Colors.green,
  title: const Text("Conditions Générales d'Utilisation"),
  automaticallyImplyLeading: true,
  leading: IconButton(
  icon: const Icon(Icons.arrow_back),
  onPressed: () => Navigator.pop(context, false),
  // onPressed:() => exit(0),
  )),
  body: Center(
  child: SingleChildScrollView(
  padding: const EdgeInsets.fromLTRB(5, 0, 5, 30),
  child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
  Container(
  padding: const EdgeInsets.all(5),
  margin: const EdgeInsets.fromLTRB(5, 10, 5, 0),
  child: const Text(
  "Les Conditions Générales d'Utilisation",
  textAlign: TextAlign.center,
  style:
  TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
  ),
  ),
  Container(
  padding: const EdgeInsets.all(10),
  margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
  child: Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: const [
  Text(
  "Article 1",
  textAlign: TextAlign.center,
  style: TextStyle(
  fontSize: 20, fontWeight: FontWeight.bold),
  ),
    SizedBox(
      height:7,
    ),
  Text(
  " L'application mobile doit être utilisée pour une déclaration de constat à l'amiable. Lorsque l'accident implique deux parties, celles ci doivent s'entendre au préalable avant de lancer cette procedure de déclaration",textAlign: TextAlign.justify,
  style: TextStyle(
  fontSize: 15, fontWeight: FontWeight.bold),
  ),
  ],
  ),
  ),
  Container(
  padding: const EdgeInsets.all(10),
  margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
  child: Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: const [
  Text(
  "Article 2",
  textAlign: TextAlign.center,
  style: TextStyle(
  fontSize: 20, fontWeight: FontWeight.bold),
  ),
    SizedBox(
      height:7,
    ),
  Text(
    "Le constat amiable n'est établi que lorque l'accident n'implique pas des dégats corporels, mais uniquement des dégats matériels. En cas de dégats corporels ou de blessés, veillez contacter la police et les secours.",textAlign: TextAlign.justify,
  style: TextStyle(
  fontSize: 15, fontWeight: FontWeight.bold),
  ),
  ],
  ),
  ),
  Container(
  padding: const EdgeInsets.all(10),
  margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
  child: Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: const [
  Text(
  "Article 3",
  textAlign: TextAlign.center,
  style: TextStyle(
  fontSize: 20, fontWeight: FontWeight.bold),
  ),
  SizedBox(
    height:7,
  ),
  Text(
    "Veillez à la veracité et la cohérence des informations que vous saisissez, mais aussi que l'autre partie renseigne. En cas d'incohérence entre les données saisis et les faits (circonstances,photos,points de chocs) celà pourrait vous être préjudiciable",
    textAlign: TextAlign.justify,
  style: TextStyle(
  fontSize: 15, fontWeight: FontWeight.bold),
  ),
  ],
  ),
  ),
  Container(
  padding: const EdgeInsets.all(10),
  margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
  child: Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: const [
  Text(
  "Article 4",
  textAlign: TextAlign.center,
  style: TextStyle(
  fontSize: 20, fontWeight: FontWeight.bold),
  ),
    SizedBox(
      height:7,
    ),
  Text(
    "A la fin de la procedure de déclaration, vous recevrez une copie du constat par email. Une autre copie sera envoyer à votre compagnie d'assurance pour étude.",
    textAlign: TextAlign.justify,
  style: TextStyle(
  fontSize: 15, fontWeight: FontWeight.bold),
  ),
  ],
  ),
  ),

  const SizedBox(
  height: 15,
  width: 600,
  ),
  Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
  SizedBox(
  height: 35,
  width: 100,
  // ignore: deprecated_member_use
  child: RaisedButton(
  onPressed: () {
  Navigator.push(
  context,
  MaterialPageRoute(
  builder: (context) => const accueil()),
  );
  },
  color: Colors.red,
  textColor: Colors.white,
  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(10)),
  child: const Text(
  "Refuser",
  textAlign: TextAlign.center,
  style: TextStyle(fontSize: 15, color: Colors.white),
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
  builder: (context) =>  partie()),
  );
  },
  color: Colors.green,
  textColor: Colors.white,
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(10)),
  child: const Text(
  "Accepter",
  textAlign: TextAlign.center,
  style: TextStyle(fontSize: 15, color: Colors.white),
  ),
  ),
  ),
  ],
  ),
  ],
  ),
  ),
  )),
  );
  }
  }
  getItemAndNavigate(BuildContext context) {}

  void setState(Null Function() param0) {}


//PARTIE PARTIE PARTIE PARTIE PARTIE PARTIE PARTIE  PARTIE PARTIE PARTIE PARTIE PARTIE PARTIE PARTIE PARTIE PARTIE PARTIE PARTIE PARTIE
//PARTIE PARTIE PARTIE PARTIE PARTIE PARTIE PARTIE  PARTIE PARTIE PARTIE PARTIE PARTIE PARTIE PARTIE PARTIE PARTIE PARTIE PARTIE PARTIE
//PARTIE PARTIE PARTIE PARTIE PARTIE PARTIE PARTIE  PARTIE PARTIE PARTIE PARTIE PARTIE PARTIE PARTIE PARTIE PARTIE PARTIE PARTIE PARTIE

// ignore: camel_case_types
class partie extends StatefulWidget {
  partie({Key? key,}) : super(key: key);

  @override
  _partie createState() => _partie();
}

class _partie extends State<partie>{
  late Accident accident;
  @override
  // ignore: must_call_super
  initState() {
    accident = Accident(
        partie: 0,

        pays: '',
        ville: '',
        rue: '',
        codepostal: '',
        date: '',
        heure: '',

        q1: '',
        q2: '',
        q3: '',

      q1b: '',
      q2b: '',
      q3b: '',

        nom_temoin: '',
        prenom_temoin: '',
        adresse_temoin: '',
        telephone_temoin: '',

        nom_assure: '',
        prenom_assure: '',
        adresse_assure: '',
        codepostal_assure: '',
        pays_assure: '',
        telephone_assure: '',
        email_assure: '',
      nom_assureb: '',
      prenom_assureb: '',
      adresse_assureb: '',
      codepostal_assureb: '',
      pays_assureb: '',
      telephone_assureb: '',
      email_assureb: '',

        nom_assureur: '',
      email_assureur:'',
        num_contrat: '',
        num_carte: '',
        date_debut: '',
        date_fin: '',
      nom_assureurb: '',
      email_assureurb:'',
      num_contratb: '',
      num_carteb: '',
      date_debutb: '',
      date_finb: '',

        nom_agence: '',
        adresse_agence: '',
        telephone_agence: '',
        email_agence: '',
        pays_agence: '',
      nom_agenceb: '',
      adresse_agenceb: '',
      telephone_agenceb: '',
      email_agenceb: '',
      pays_agenceb: '',

        type: '',
        marque: '',
        num_vehicule: '',
        pays_vehicule: '',
        num_remorque: '',
        pays_remorque: '',
      typeb: '',
      marqueb: '',
      num_vehiculeb: '',
      pays_vehiculeb: '',
      num_remorqueb: '',
      pays_remorqueb: '',

        nom_conducteur: '',
        prenom_conducteur: '',
        date_conducteur: '',
        adresse_conducteur: '',
        pays_conducteur: '',
        telephone_conducteur: '',
        email_conducteur: '',
        num_permis: '',
        cat_permis: '',
        date_permis: '',
      nom_conducteurb: '',
      prenom_conducteurb: '',
      date_conducteurb: '',
      adresse_conducteurb: '',
      pays_conducteurb: '',
      telephone_conducteurb: '',
      email_conducteurb: '',
      num_permisb: '',
      cat_permisb: '',
      date_permisb: '',

        c1: '',
        c2: '',
        c17: '',
      c3:'',
      c4:'',
      c5:'',
      c6:'',
      c7:'',
      c8:'',
      c9:'',
      c10:'',
      c11:'',
      c12:'',
      c13:'',
      c14:'',
      c15:'',
      c16:'',

      c1b: '',
      c2b: '',
      c17b: '',
      c3b:'',
      c4b:'',
      c5b:'',
      c6b:'',
      c7b:'',
      c8b:'',
      c9b:'',
      c10b:'',
      c11b:'',
      c12b:'',
      c13b:'',
      c14b:'',
      c15b:'',
      c16b:'',

      d1:'',
      d2:'',
      d3:'',
      d4:'',
      d5:'',
      d6:'',
      d7:'',
      d8:'',
      d9:'',
      d10:'',
      d11:'',
      d12:'',
      d13:'',
      d14:'',
      d15:'',
      d16:'',
      d17:'',
      d18:'',
      d19:'',
      d20:'',
      d21:'',

      d1b:'',
      d2b:'',
      d3b:'',
      d4b:'',
      d5b:'',
      d6b:'',
      d7b:'',
      d8b:'',
      d9b:'',
      d10b:'',
      d11b:'',
      d12b:'',
      d13b:'',
      d14b:'',
      d15b:'',
      d16b:'',
      d17b:'',
      d18b:'',
      d19b:'',
      d20b:'',
      d21b:'',

    );
  }

  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.green,
            title: const Text('Nombre de parties'),
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
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child:
              StepProgressIndicator(
                totalSteps: 8,
                currentStep: 1,
                selectedColor: Colors.green,
                unselectedColor: Colors.grey,
              ),
            ),
              Container(
                height: 210,
                width: 400,
                padding: const EdgeInsets.all(25),
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xE7E5E6FF),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 90,
                      width: 100,
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        onPressed: () {
                          setState((){
                            accident.partie = 2;
                          });
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => lieudate(accident:accident)),
                          );
                        },
                        color: Colors.blueAccent,
                        textColor: Colors.black54,
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(Icons.group, size: 80),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                      width: 600,
                    ),
                    const Text(
                      'Deux parties',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      "Cliquer sur l'icone bleue lorsque deux parties sont impliquées dans l'accident",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                  ],
                ),
              ),
              Container(
                height: 210,
                width: 400,
                padding: const EdgeInsets.all(25),
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xE7E5E6FF),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 90,
                      width: 100,
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        onPressed: () {
                          setState((){
                            accident.partie = 1;
                          });
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => lieudate1(accident:accident)),
                          );
                        },
                        color: Colors.yellow,
                        textColor: Colors.black54,
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(Icons.person, size: 80),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                      width: 600,
                    ),
                    const Text(
                      'Une partie',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      "Cliquer sur l'icone jaune lorsqu'une seule partie est impliquée dans l'accident",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                    // ignore: deprecated_member_use
                  ],
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
                      MaterialPageRoute(builder: (context) => const accueil()),
                    );
                  },
                  color: Colors.red,
                  textColor: Colors.white,
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    "Abandonner",
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
        ),
      ),
    );
  }

  getItemAndNavigate(BuildContext context) {}
}
