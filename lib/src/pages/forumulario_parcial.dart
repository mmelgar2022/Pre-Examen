import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  const Formulario();

  @override
  _FormularioState createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  TextEditingController nombre_mascota_controller = TextEditingController();
  TextEditingController nombre_propietario_controller = TextEditingController();
  TextEditingController telefono_propietario_controller =
      TextEditingController();
  TextEditingController tipo_mascota_controller = TextEditingController();
  TextEditingController raza_controller = TextEditingController();
  TextEditingController sexo_controller = TextEditingController();
  TextEditingController edad_de_mascota_controller = TextEditingController();
  TextEditingController fecha_nacimiento_controller = TextEditingController();

  String data = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario de Ingreso a Consulta Medica'),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              //Campo 1
              TextField(
                // autofocus: true,
                controller: nombre_mascota_controller,
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    hintText: 'Como se llama tu mascota',
                    labelText: 'Nombre de tu mascota',
                    helperText: '',
                    icon: Icon(Icons.android_outlined)),
              ),

              //Campo 2
              TextField(
                // autofocus: true,
                controller: nombre_propietario_controller,
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    hintText: 'Nombre de la persona',
                    labelText: 'Nombre',
                    helperText: '',
                    icon: Icon(Icons.account_circle)),
              ),
              //Campo 3
              TextField(
                // autofocus: true,
                controller: telefono_propietario_controller,
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    hintText: 'A donde podemos llamarte +XXX XXXXXXXX',
                    labelText: 'Tu numero de telefono',
                    helperText: '',
                    icon: Icon(Icons.phone_android)),
              ),
              //Campo 4
              TextField(
                // autofocus: true,
                controller: tipo_mascota_controller,
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    hintText: 'Que tipo de mascota tienes',
                    labelText: 'Tipo de mascota',
                    helperText: '',
                    icon: Icon(Icons.trip_origin_sharp )),
              ),
              //Campo 5
              TextField(
                // autofocus: true,
                controller: raza_controller,
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    hintText: 'Que raza es tu mascota',
                    labelText: 'Ingresa la raza de tu mascota',
                    helperText: '',
                    icon: Icon(Icons.tungsten)),
              ),
              //Campo 6
              TextField(
                // autofocus: true,
                controller: sexo_controller,
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    hintText: 'Ingresa si es hembra o macho',
                    labelText: 'Sexo de tu mascota',
                    helperText: '',
                    icon: Icon(Icons.transgender_sharp )),
              ),
              //Fecha de nacimiento
              TextField(
                enableInteractiveSelection: false,
                controller: fecha_nacimiento_controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    hintText: 'Ingresa en formato dd/mm/aaa',
                    labelText: 'Fecha de nacimiento',
                     helperText: '',
                    icon: Icon(Icons.calendar_today,)),
              ),

              //Boton para mostrar datos
              ElevatedButton(
                
                style: raisedButtonStyle,
                onPressed: () {
                  setState(() {
                    data =
                        '${nombre_mascota_controller.text} - ${nombre_propietario_controller.text} - ${telefono_propietario_controller.text} \n\n ${raza_controller.text}- ${sexo_controller.text} - ${edad_de_mascota_controller.text} - ${fecha_nacimiento_controller.text}';
                  });
                },
                child: Text('Mostrar datos ingresados'),
              ),
              Text(data),
            ],
          ),
        ),
      ),
    );
  }

  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.yellow,
    primary: Colors.red[300],
    
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  );
}
