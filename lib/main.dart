import 'package:flutter/material.dart';
import 'package:programatriangulo/Triangulo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Triangulos',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(title: 'TRIANGULOS'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var txtnum1 =TextEditingController();
  var txtnum2 = TextEditingController();
  var txtnum3 = TextEditingController();
  String resultado = "";
  String imagen = "assest/images/interrogante.jpg";

  void _incrementCounter() {
    setState(() {
      Triangulo t = Triangulo(int.parse(txtnum1.text), int.parse(txtnum2.text), int.parse(txtnum3.text));
      t.tipoTriangulo();
      resultado = t.tipo;
      imagen = t.img;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: const TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
        child: Center(
          child:SingleChildScrollView(
          child: Column(
            //child: ListView(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'TRIÁNGULOS:',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 24,
              ),
              TextFormField(
                controller: txtnum1,
                decoration: const InputDecoration(
                    labelText: 'Lado A',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.perm_data_setting_outlined)),
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: txtnum2,
                decoration: const InputDecoration(
                    labelText: 'Lado B',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.perm_data_setting_outlined)),
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: txtnum3,
                decoration: const InputDecoration(
                    labelText: 'Lado C',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.perm_data_setting_outlined)),
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton.icon(
                  onPressed: _incrementCounter,
                  icon: const Icon(Icons.calculate_outlined),
                  label: const Text('Calcular')),
              const SizedBox(
                height: 16,
              ),
              Text(
                "El triángulo es: $resultado",
                style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                    fontStyle: FontStyle.italic),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    border: Border.all(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.circular(20)),
                child: Image.asset(imagen, width: 200,height: 200,)
                //Image.network("https://blog.desafiolatam.com/wp-content/uploads/2022/02/20943593-300x200.jpg",
                  //width: 100,
                  //height: 100,
                //),
              )
            ],
          ),
          ),
        ),
      ),
    );
  }
}
