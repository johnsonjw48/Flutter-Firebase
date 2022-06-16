// ignore_for_file: must_be_immutable, unused_local_variable, unused_element, deprecated_member_use, duplicate_ignore, unused_import, unnecessary_null_comparison, null_check_always_fails

import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';
import 'package:startup_namer/intro_partie.dart';
import 'dart:async';
import 'dart:io';
import 'dart:ui' as ui;
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart';
import 'package:startup_namer/main.dart';
import 'package:startup_namer/models/accident.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

// ignore: camel_case_types
class etatAB extends StatelessWidget {
  late Accident accident;
  etatAB({required this.accident});

  ScreenshotController screenshotController = ScreenshotController();

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
                centerTitle: true,
                backgroundColor: Colors.green,
                title: const Text('Aperçu du constat amiable'),
                // actions: <Widget>
                automaticallyImplyLeading: true,
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.pop(context, false),
                  // onPressed:() => exit(0),
                )),
            body: Center(
                child: SingleChildScrollView(
                    child: Column(
                        children: <Widget>[
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                            child: StepProgressIndicator(
                              totalSteps: 8,
                              currentStep: 8,
                              selectedColor: Colors.green,
                              unselectedColor: Colors.grey,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Screenshot(
                            controller: screenshotController,
                            child: Stack(
                                children: <Widget>[
                                  Container(
                                    width: 500,
                                    height: 535,
                                    padding:const EdgeInsets.fromLTRB(100, 10, 10, 10),
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('C:/Users/Public/constat/constat.png'),
                                        fit: BoxFit.scaleDown,
                                      ),
                                    ),
                                  ),

                                  // ignore: deprecated_member_use

                                  // ACCIDENT
                                  Positioned(top:28, left:15,
                                    child:Text(accident.date,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:28, left: 65,
                                    child:Text(accident.heure,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:28, left:105,
                                    child:Text(accident.pays,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:21, left:165,
                                    child:Text(accident.ville,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 28, left: 165,
                                    child:Text(accident.rue,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 29, left:222,
                                    child:Text("X",
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 29, left: 253,
                                    child:Text("X",
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 55, left:17,
                                    child:Text("X",
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 55, left: 47,
                                    child:Text("X",
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 55, left:76,
                                    child:Text("X",
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 55, left: 106,
                                    child:Text("X",
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 50, left: 140,
                                    child:Text(accident.nom_temoin,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 50, left: 190,
                                    child:Text(accident.prenom_temoin,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 50, left: 240,
                                    child:Text(accident.adresse_temoin,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 50, left: 300,
                                    child:Text(accident.telephone_temoin,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),

                                  // ASSURE A
                                  Positioned(top: 85, left: 30,
                                    child:Text(accident.nom_assure,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 94, left: 30,
                                    child:Text(accident.prenom_assure,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 102, left: 30,
                                    child:Text(accident.adresse_assure,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 110, left: 35,
                                    child:Text(accident.codepostal_assure,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 110, left: 85,
                                    child:Text(accident.pays_assure,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 120, left: 40,
                                    child:Text(accident.email_assure,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 120, left: 85,
                                    child:Text(accident.telephone_assure,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),

                                  // ASSURE B
                                  Positioned(top: 85, left: 260,
                                    child:Text(accident.nom_assureb,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 94, left: 262,
                                    child:Text(accident.prenom_assureb,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 102, left: 260,
                                    child:Text(accident.adresse_assureb,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 110, left: 270,
                                    child:Text(accident.codepostal_assureb,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 110, left: 310,
                                    child:Text(accident.pays_assureb,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 120, left: 270,
                                    child:Text(accident.email_assureb,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 120, left: 320,
                                    child:Text(accident.telephone_assureb,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),

// VEHICULE A
                                  Positioned(top:152, left: 10,
                                    child:Text(accident.marque,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 152, left: 40,
                                    child:Text(accident.type,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 166, left: 10,
                                    child:Text(accident.num_vehicule,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 166, left: 75,
                                    child:Text(accident.num_remorque,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 180, left: 10,
                                    child:Text(accident.pays_vehicule,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 180, left: 75,
                                    child:Text(accident.pays_remorque,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),

//VEHICULE B
                                  Positioned(top:152, left: 240,
                                    child:Text(accident.marqueb,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 152, left: 260,
                                    child:Text(accident.typeb,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 166, left: 240,
                                    child:Text(accident.num_vehiculeb,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 166, left: 305,
                                    child:Text(accident.num_remorqueb,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 180, left: 240,
                                    child:Text(accident.pays_vehiculeb,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 180, left: 305,
                                    child:Text(accident.pays_remorqueb,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),

                                  //ASSUREUR A
                                  Positioned(top:200, left: 30,
                                    child:Text(accident.nom_conducteur,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:210, left: 42,
                                    child:Text(accident.num_contrat,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:218, left: 50,
                                    child:Text(accident.num_carte,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:232, left: 70,
                                    child:Text(accident.date_debut,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:232, left: 102,
                                    child:Text(accident.date_fin,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:246, left: 30,
                                    child:Text(accident.nom_agence,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:255, left: 30,
                                    child:Text(accident.adresse_agence,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:262, left: 70,
                                    child:Text(accident.pays_agence,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:271, left: 35,
                                    child:Text(accident.email_agence,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:271, left: 90,
                                    child:Text(accident.telephone_agence,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 287, left:56,
                                    child:Text("X",
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 5, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 287, left: 88,
                                    child:Text("X",
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 5, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),

                                  //ASSUREUR B
                                  Positioned(top:200, left: 260,
                                    child:Text(accident.nom_assureurb,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:210, left: 268,
                                    child:Text(accident.num_contratb,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:218, left: 280,
                                    child:Text(accident.num_carteb,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:232, left: 299,
                                    child:Text(accident.date_debutb,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:232, left: 330,
                                    child:Text(accident.date_finb,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:246, left: 260,
                                    child:Text(accident.nom_agenceb,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:255, left: 260,
                                    child:Text(accident.adresse_agenceb,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:262, left: 300,
                                    child:Text(accident.pays_agenceb,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:271, left: 262,
                                    child:Text(accident.email_agenceb,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:271, left: 320,
                                    child:Text(accident.telephone_agenceb,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 287, left:284,
                                    child:Text("X",
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 5, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 287, left: 316,
                                    child:Text("X",
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 5, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),

                                  //CONDUCTEUR A
                                  Positioned(top:304, left: 30,
                                    child:Text(accident.nom_conducteur,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:313, left: 30,
                                    child:Text(accident.prenom_conducteur,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:321, left: 50,
                                    child:Text(accident.date_conducteur,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:330, left: 50,
                                    child:Text(accident.adresse_conducteur,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:337, left: 70,
                                    child:Text(accident.pays_conducteur,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:345, left: 40,
                                    child:Text(accident.email_conducteur,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:345, left: 90,
                                    child:Text(accident.telephone_conducteur,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:354, left: 60,
                                    child:Text(accident.num_permis,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:362, left: 50,
                                    child:Text(accident.cat_permis,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:371, left: 60,
                                    child:Text(accident.date_permis,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
// CONDUCTEUR B
                                  Positioned(top:304, left: 260,
                                    child:Text(accident.nom_conducteurb,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:313, left: 260,
                                    child:Text(accident.prenom_conducteurb,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:321, left: 280,
                                    child:Text(accident.date_conducteurb,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:330, left: 260,
                                    child:Text(accident.adresse_conducteurb,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:337, left: 300,
                                    child:Text(accident.pays_conducteurb,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:345, left: 270,
                                    child:Text(accident.email_conducteurb,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:335, left: 320,
                                    child:Text(accident.telephone_conducteurb,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:354, left:290,
                                    child:Text(accident.num_permisb,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:362, left: 280,
                                    child:Text(accident.cat_permisb,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:371, left: 290,
                                    child:Text(accident.date_permisb,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
// CIRCONSTANCES A
                                  Positioned(top: 108, left:131,
                                    child:Text(accident.c1,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 120, left:131,
                                    child:Text(accident.c2,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 135, left:131,
                                    child:Text(accident.c3,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:146, left:131,
                                    child:Text(accident.c4,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 167, left: 131,
                                    child:Text(accident.c5,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 182, left:131,
                                    child:Text(accident.c6,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 194, left: 131,
                                    child:Text(accident.c7,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 206, left:131,
                                    child:Text(accident.c8,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 230, left: 131,
                                    child:Text(accident.c9,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 246, left:131,
                                    child:Text(accident.c10,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 253, left: 131,
                                    child:Text(accident.c11,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 260, left:131,
                                    child:Text(accident.c12,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 268, left: 131,
                                    child:Text(accident.c13,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 277, left:131,
                                    child:Text(accident.c14,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 285, left: 131,
                                    child:Text(accident.c15,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:303, left:131,
                                    child:Text(accident.c16,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 312, left: 131,
                                    child:Text(accident.c17,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 323, left: 132,
                                    child:Text("N",
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),


// CIRCONSTANCES B
                                  Positioned(top: 112, right:132,
                                    child:Text(accident.c1b,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 124, right:132,
                                    child:Text(accident.c2b,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 135, left:224,
                                    child:Text(accident.c3b,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:146, left:224,
                                    child:Text(accident.c4b,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 167, left:224,
                                    child:Text(accident.c5b,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 182, left:224,
                                    child:Text(accident.c6b,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 194, left: 224,
                                    child:Text(accident.c7b,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 206, left:224,
                                    child:Text(accident.c8b,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 230, left: 224,
                                    child:Text(accident.c9b,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 246, left:224,
                                    child:Text(accident.c10b,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 253, left: 224,
                                    child:Text(accident.c11b,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 260, left:224,
                                    child:Text(accident.c12b,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 268, left: 224,
                                    child:Text(accident.c13b,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 277, left:224,
                                    child:Text(accident.c14b,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 285, left: 224,
                                    child:Text(accident.c15b,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:303, left:224,
                                    child:Text(accident.c16b,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 316, right:132,
                                    child:Text(accident.c17b,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top: 325, left: 223,
                                    child:Text("N",
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),

// POINT CHOC A
// DEGATS APPARENTS A
                                  Positioned(top:467, left: 10,
                                    child:Text(accident.d1,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:473, left: 10,
                                    child:Text(accident.d2,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:480, left: 10,
                                    child:Text(accident.d3,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
// DEGATS APPARENTS B
                                  Positioned(top:467, left: 300,
                                    child:Text(accident.d1b,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:473, left: 300,
                                    child:Text(accident.d2b,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:480, left: 300,
                                    child:Text(accident.d3b,
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),

//OBSERVATION A
                                  Positioned(top:500, left: 10,
                                    child:Text("",
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:507, left: 10,
                                    child:Text("",
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
// OBSERVATION B
                                  Positioned(top:500, left: 250,
                                    child:Text("",
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),
                                  Positioned(top:507, left: 250,
                                    child:Text("",
                                      style: TextStyle(fontFamily: 'AirbnbCerealBold', fontSize: 6, fontWeight: FontWeight.bold, color: Colors.black),),
                                  ),

// POINT A
                                  Positioned(top:390, left: 11,
                                    child:  Container(
                                      width: 52,
                                      height: 80,
                                     // child:Image.memory(accident.point as Uint8List),
                                    ),
                                  ),
// POINT B
                                  Positioned(top:390, right: 11,
                                    child:  Container(
                                      width: 52,
                                      height: 80,
                                     // child:Image.memory(accident.pointb as Uint8List),
                                    ),
                                  ),
// SIGNATURE A
                                  Positioned(top:506, left: 120,
                                    child:  Container(
                                      width: 60,
                                      height: 20,
                                      child:Image.memory(accident.signature as Uint8List),
                                    ),
                                  ),
// SIGNATURE B
                                  Positioned(top:506, left: 175,
                                    child:  Container(
                                      width: 60,
                                      height: 20,
                                      child:Image.memory(accident.signatureb as Uint8List),
                                    ),),]),
                          ),
                          SizedBox(
                            height: 35,
                            width: 100,
                            // ignore: deprecated_member_use
                            child: RaisedButton(
                              onPressed: ()
                              async {
                                accident.constat = await screenshotController
                                    .capture(delay: Duration(milliseconds: 10));
                                if (accident.constat != null) {
                                  await Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) =>  constat(accident:accident),
                                      ));
                                }},
                              color: Colors.red,
                              textColor:Colors.white,
                              padding:const EdgeInsets.fromLTRB(10, 10, 10, 10),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Text(
                                  'Valider',
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
                        ])))));
  }
  getItemAndNavigate(BuildContext context) {}

  void setState(Null Function() param0) {}
}
// CONSTAT

class constat extends StatefulWidget {
  late Accident accident;
  constat({required this.accident});


  @override
  _constatState createState() => _constatState(accident:accident);
}

class _constatState extends State<constat> {
  late Accident accident;
  _constatState({required this.accident});


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
            backgroundColor: Colors.green,
            title: const Text('Finalisation du constat amiable'),
          ),
          body: Center(
            child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: StepProgressIndicator(
                      totalSteps: 8,
                      currentStep: 8,
                      selectedColor: Colors.green,
                      unselectedColor: Colors.grey,
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 400,
                    padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
                    child: Column(
                        children: <Widget>[
                          Text(
                            'Félicitations!!!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 27, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Vous êtes à la dernière étape',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 27, fontWeight: FontWeight.bold),
                          ),
                        ]),

                  ),
                  Container(
                      height: 300,
                      width: 250,
                      child:Image.memory(accident.constat as Uint8List)),
                  Container(
                    height: 50,
                    width: 400,
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child:
                    Text(
                      "Appuyer pour débuter l'envoi",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text("Confirmation d'envoi"),
                          content: Text('Constat envoyé avec succès'),
                          actions: [
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => accueil()),
                                  );
                                },
                                child: Text('OK'))
                          ],
                        ),
                      );
                    },
                    color: Colors.red,
                    textColor:Colors.white,
                    padding:const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                        'Envoyer',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.
                            white)
                    ),
                  ),
                ]),
            //child: capturedImage != null ? Image.memory(capturedImage) : Container()),
          ),
        ));
  }
}

