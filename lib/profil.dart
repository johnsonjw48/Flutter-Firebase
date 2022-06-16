import 'package:flutter/material.dart';


//INTRO PROFIL INTRO PROFIL INTRO PROFIL INTRO PROFIL INTRO PROFIL INTRO PROFIL INTRO PROFIL INTRO PROFIL INTRO PROFIL
//INTRO PROFIL INTRO PROFIL INTRO PROFIL INTRO PROFIL INTRO PROFIL INTRO PROFIL INTRO PROFIL INTRO PROFIL INTRO PROFIL
//INTRO PROFIL INTRO PROFIL INTRO PROFIL INTRO PROFIL INTRO PROFIL INTRO PROFIL INTRO PROFIL INTRO PROFIL INTRO PROFIL

// ignore: camel_case_types
class profil extends StatelessWidget {
  const  profil ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil',
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.blue,
            title: const Text('Mon profil'),
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
                  height: 50,
                  width: 600,
                  child: Card(
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        "Conducteur",
                        style: TextStyle(color: Colors.white),
                      ), //Text
                    ), //Center
                  ), //Card
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
                            builder: (context) => const conducteurp()),
                      );
                    },
                    color: Colors.red,
                    textColor: Colors.white,
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                      "Ajouter un conducteur",
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
                const SizedBox(
                  height: 50,
                  width: 600,
                  child: Card(
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        "Données d'assurance",
                        style: TextStyle(color: Colors.white),
                      ), //Text
                    ), //Center
                  ), //Card
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
                            builder: (context) => const assurep()),
                      );
                    },
                    color: Colors.red,
                    textColor: Colors.white,
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                      "Ajouter des données d'assurance",
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
    );
  }
  getItemAndNavigate(BuildContext context) {}
}

//ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE
//ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE
//ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE ASSURE

// ignore: camel_case_types
class assurep extends StatelessWidget {
  const assurep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assuré',
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.blue,
            title: const Text('Assuré'),
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
                  height: 20,
                  width: 600,
                ),
                Container(
                  width: 340,
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
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
                    decoration: const InputDecoration(
                      labelText: 'Prénom',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  width: 340,
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
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
                    decoration: const InputDecoration(
                      labelText: 'Téléphone',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  width: 340,
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
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
                            builder: (context) => const assureurp()),
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
class assureurp extends StatelessWidget {
  const assureurp({Key? key}) : super(key: key);

  get name => null;

  get phoneNumber => null;

  get icon => null;

  get child => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assureur',
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.blue,
            title: const Text('Assureur'),
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
                  height: 20,
                  width: 600,
                ),
                Container(
                  width: 340,
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
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
                    decoration: const InputDecoration(
                      labelText: 'N° Contrat',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  width: 340,
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'N° Carte Asssurance',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  width: 340,
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Carte assurance Valable depuis',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  width: 340,
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Carte assurance Valable jusqu'au",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100,
                  width: 100,
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
                            builder: (context) => const vehiculep()),
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
          ),
        ),
      ),
    );
  }

  getItemAndNavigate(BuildContext context) {}
}

//VEHICULE  VEHICULE  VEHICULE  VEHICULE  VEHICULE  VEHICULE VEHICULE  VEHICULE  VEHICULE  VEHICULE  VEHICULE  VEHICULE VEHICULE VEHICULE
//VEHICULE  VEHICULE  VEHICULE  VEHICULE  VEHICULE  VEHICULE VEHICULE  VEHICULE  VEHICULE  VEHICULE  VEHICULE  VEHICULE VEHICULE VEHICULE
//VEHICULE  VEHICULE  VEHICULE  VEHICULE  VEHICULE  VEHICULE VEHICULE  VEHICULE  VEHICULE  VEHICULE  VEHICULE  VEHICULE VEHICULE VEHICULE

// ignore: camel_case_types
class vehiculep extends StatelessWidget {
  const vehiculep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Véhicule',
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.blue,
            title: const Text('Véhicule'),
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
                  height: 10,
                  width: 600,
                ),
                const SizedBox(
                  height: 50,
                  width: 600,
                  child: Card(
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        "Véhicule",
                        style: TextStyle(color: Colors.white),
                      ), //Text
                    ), //Center
                  ), //Card
                ),
                Container(
                  width: 500,
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Type',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  width: 500,
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Marque et modèle',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  width: 500,
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'N° Plaque',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  width: 500,
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Pays d'immatriculation",
                      border: OutlineInputBorder(),
                    ),
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
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        "Remorque",
                        style: TextStyle(color: Colors.white),
                      ), //Text
                    ), //Center
                  ), //Card
                ),
                Container(
                  width: 500,
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'N° Plaque',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  width: 500,
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Pays d'immatriculation",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
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
                            builder: (context) => const profil()),
                      );
                    },
                    color: Colors.green,
                    textColor: Colors.white,
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                      'Terminer',
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
    );
  }

  getItemAndNavigate(BuildContext context) {}
}

//CONDUCTEUR ! CONDUCTEUR ! CONDUCTEUR ! CONDUCTEUR ! CONDUCTEUR ! CONDUCTEUR ! CONDUCTEUR ! CONDUCTEUR ! CONDUCTEUR ! CONDUCTEUR ! CONDUCTEUR !
//CONDUCTEUR ! CONDUCTEUR ! CONDUCTEUR ! CONDUCTEUR ! CONDUCTEUR ! CONDUCTEUR ! CONDUCTEUR ! CONDUCTEUR ! CONDUCTEUR ! CONDUCTEUR ! CONDUCTEUR !
//CONDUCTEUR ! CONDUCTEUR ! CONDUCTEUR ! CONDUCTEUR ! CONDUCTEUR ! CONDUCTEUR ! CONDUCTEUR ! CONDUCTEUR ! CONDUCTEUR ! CONDUCTEUR ! CONDUCTEUR !

// ignore: camel_case_types
class conducteurp extends StatelessWidget {
  const conducteurp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Conducteur',
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.blue,
            title: const Text('Conducteur'),
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
                  height: 20,
                  width: 600,
                ),
                Container(
                  width: 340,
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
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
                    decoration: const InputDecoration(
                      labelText: 'Prénom',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  width: 340,
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Date de naissance',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  width: 340,
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
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
                    decoration: const InputDecoration(
                      labelText: 'Téléphone',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  width: 340,
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
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
                    decoration: const InputDecoration(
                      labelText: 'N° Permis',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  width: 340,
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Catégorie permis',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  width: 340,
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Permis valable jusqu'au",
                      border: OutlineInputBorder(),
                    ),
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
                            builder: (context) => const profil()),
                      );
                    },
                    color: Colors.green,
                    textColor: Colors.white,
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                      "Terminer",
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
    );
  }

  getItemAndNavigate(BuildContext context) {}
}