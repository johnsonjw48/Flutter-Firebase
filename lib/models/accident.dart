
import 'dart:typed_data';

class Accident{
  late int partie;

  late Uint8List? constat;

  late String pays;
  late String ville;
  late String rue;
  late String codepostal;
  late String date;
  late String heure;

  late String q1;
  late String q2;
  late String q3;

  late String q1b;
  late String q2b;
  late String q3b;

  late String nom_temoin;
  late String prenom_temoin;
  late String adresse_temoin;
  late String telephone_temoin;


  late String nom_assure;
  late String prenom_assure;
  late String adresse_assure;
  late String codepostal_assure;
  late String pays_assure;
  late String telephone_assure;
  late String email_assure;

  late String nom_assureb;
  late String prenom_assureb;
  late String adresse_assureb;
  late String codepostal_assureb;
  late String pays_assureb;
  late String telephone_assureb;
  late String email_assureb;


  late String nom_assureur;
  late String email_assureur;
  late String num_contrat;
  late String num_carte;
  late String date_debut;
  late String date_fin;

  late String nom_assureurb;
  late String email_assureurb;
  late String num_contratb;
  late String num_carteb;
  late String date_debutb;
  late String date_finb;


  late String nom_agence;
  late String adresse_agence;
  late String telephone_agence;
  late String email_agence;
  late String pays_agence;

  late String nom_agenceb;
  late String adresse_agenceb;
  late String telephone_agenceb;
  late String email_agenceb;
  late String pays_agenceb;


  late String type;
  late String marque;
  late String num_vehicule;
  late String pays_vehicule;
  late String num_remorque;
  late String pays_remorque;

  late String typeb;
  late String marqueb;
  late String num_vehiculeb;
  late String pays_vehiculeb;
  late String num_remorqueb;
  late String pays_remorqueb;


  late String nom_conducteur;
  late String prenom_conducteur;
  late String date_conducteur;
  late String adresse_conducteur;
  late String pays_conducteur;
  late String telephone_conducteur;
  late String email_conducteur;
  late String num_permis;
  late String cat_permis;
  late String date_permis;

  late String nom_conducteurb;
  late String prenom_conducteurb;
  late String date_conducteurb;
  late String adresse_conducteurb;
  late String pays_conducteurb;
  late String telephone_conducteurb;
  late String email_conducteurb;
  late String num_permisb;
  late String cat_permisb;
  late String date_permisb;




  late String c1;
  late String c2;
  late String c17;
  late String c3;
  late String c4;
  late String c5;
  late String c6;
  late String c7;
  late String c8;
  late String c9;
  late String c10;
  late String c11;
  late String c12;
  late String c13;
  late String c14;
  late String c15;
  late String c16;

  late String c1b;
  late String c2b;
  late String c17b;
  late String c3b;
  late String c4b;
  late String c5b;
  late String c6b;
  late String c7b;
  late String c8b;
  late String c9b;
  late String c10b;
  late String c11b;
  late String c12b;
  late String c13b;
  late String c14b;
  late String c15b;
  late String c16b;


  late Uint8List? point;

  late Uint8List? pointb;


  late String d1;
  late String d2;
  late String d3;
  late String d4;
  late String d5;
  late String d6;
  late String d7;
  late String d8;
  late String d9;
  late String d10;
  late String d11;
  late String d12;
  late String d13;
  late String d14;
  late String d15;
  late String d16;
  late String d17;
  late String d18;
  late String d19;
  late String d20;
  late String d21;

  late String d1b;
  late String d2b;
  late String d3b;
  late String d4b;
  late String d5b;
  late String d6b;
  late String d7b;
  late String d8b;
  late String d9b;
  late String d10b;
  late String d11b;
  late String d12b;
  late String d13b;
  late String d14b;
  late String d15b;
  late String d16b;
  late String d17b;
  late String d18b;
  late String d19b;
  late String d20b;
  late String d21b;


  late Uint8List? photo1;
  late Uint8List? photo2;
  late Uint8List? photo3;
  late Uint8List? photo4;

  late Uint8List? photo1b;
  late Uint8List? photo2b;
  late Uint8List? photo3b;
  late Uint8List? photo4b;




  late Uint8List? signature;

  late Uint8List? signatureb;



  Accident({
    required this.partie,

    Uint8List? constat,

    required this.pays,
    required this.ville,
    required this.rue,
    required this.codepostal,
    required this.date,
    required this.heure,

    required this.q1,
    required this.q2,
    required this.q3,

    required this.q1b,
    required this.q2b,
    required this.q3b,

    required this.nom_temoin,
    required this.prenom_temoin,
    required this.adresse_temoin,
    required this.telephone_temoin,


    required this.nom_assure,
    required this.prenom_assure,
    required this.adresse_assure,
    required this.codepostal_assure,
    required this.pays_assure,
    required this.telephone_assure,
    required this.email_assure,

    required this.nom_assureb,
    required this.prenom_assureb,
    required this.adresse_assureb,
    required this.codepostal_assureb,
    required this.pays_assureb,
    required this.telephone_assureb,
    required this.email_assureb,


    required this.nom_assureur,
    required this.email_assureur,
    required this.num_contrat,
    required this.num_carte,
    required this.date_debut,
    required this.date_fin,

    required this.nom_assureurb,
    required this.email_assureurb,
    required this.num_contratb,
    required this.num_carteb,
    required this.date_debutb,
    required this.date_finb,


    required this.nom_agence,
    required this.adresse_agence,
    required this.telephone_agence,
    required this.email_agence,
    required this.pays_agence,

    required this.nom_agenceb,
    required this.adresse_agenceb,
    required this.telephone_agenceb,
    required this.email_agenceb,
    required this.pays_agenceb,


    required this.type,
    required this.marque,
    required this.num_vehicule,
    required this.pays_vehicule,
    required this.num_remorque,
    required this.pays_remorque,

    required this.typeb,
    required this.marqueb,
    required this.num_vehiculeb,
    required this.pays_vehiculeb,
    required this.num_remorqueb,
    required this.pays_remorqueb,


    required this.nom_conducteur,
    required this.prenom_conducteur,
    required this.date_conducteur,
    required this.adresse_conducteur,
    required this.pays_conducteur,
    required this.telephone_conducteur,
    required this.email_conducteur,
    required this.num_permis,
    required this.cat_permis,
    required this.date_permis,

    required this.nom_conducteurb,
    required this.prenom_conducteurb,
    required this.date_conducteurb,
    required this.adresse_conducteurb,
    required this.pays_conducteurb,
    required this.telephone_conducteurb,
    required this.email_conducteurb,
    required this.num_permisb,
    required this.cat_permisb,
    required this.date_permisb,

    required this.c1,
    required this.c2,
    required this.c17,
    required this.c3,
    required this.c4,
    required this.c5,
    required this.c6,
    required this.c7,
    required this.c8,
    required this.c9,
    required this.c10,
    required this.c11,
    required this.c12,
    required this.c13,
    required this.c14,
    required this.c15,
    required this.c16,

    required this.c1b,
    required this.c2b,
    required this.c17b,
    required this.c3b,
    required this.c4b,
    required this.c5b,
    required this.c6b,
    required this.c7b,
    required this.c8b,
    required this.c9b,
    required this.c10b,
    required this.c11b,
    required this.c12b,
    required this.c13b,
    required this.c14b,
    required this.c15b,
    required this.c16b,


    Uint8List? point,

    Uint8List? pointb,

    required this.d1,
    required this.d2,
    required this.d3,
    required this.d4,
    required this.d5,
    required this.d6,
    required this.d7,
    required this.d8,
    required this.d9,
    required this.d10,
    required this.d11,
    required this.d12,
    required this.d13,
    required this.d14,
    required this.d15,
    required this.d16,
    required this.d17,
    required this.d18,
    required this.d19,
    required this.d20,
    required this.d21,

    required this.d1b,
    required this.d2b,
    required this.d3b,
    required this.d4b,
    required this.d5b,
    required this.d6b,
    required this.d7b,
    required this.d8b,
    required this.d9b,
    required this.d10b,
    required this.d11b,
    required this.d12b,
    required this.d13b,
    required this.d14b,
    required this.d15b,
    required this.d16b,
    required this.d17b,
    required this.d18b,
    required this.d19b,
    required this.d20b,
    required this.d21b,

    Uint8List? photo1,
    Uint8List? photo2,
    Uint8List? photo3,
    Uint8List? photo4,

    Uint8List? photo1b,
    Uint8List? photo2b,
    Uint8List? photo3b,
    Uint8List? photo4b,

    Uint8List? signature,

    Uint8List? signatureb,

  }){
    this.constat = constat;

    this.point= point;
    this.pointb= pointb;

    this.photo1= photo1;
    this.photo2= photo2;
    this.photo3= photo3;
    this.photo4= photo4;

    this.photo1= photo1b;
    this.photo2= photo2b;
    this.photo3= photo3b;
    this.photo4= photo4b;

    this.signature = signature;

    this.signature = signatureb;
  }

}