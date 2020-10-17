import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import '../components/Input.dart';
import '../components/Result.dart';

class Home extends StatefulWidget {
  double weight;
  double height;
  String result = "0.00";
  String label = "Informe o seu peso e altura";
  Function changeTheme;

  Home({this.changeTheme});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void onChangeWeight(value) {
    setState(() {
      var tryParse = double.tryParse(value);

      if (tryParse != null) {
        widget.weight = tryParse;
        widget.result = calculate();
        widget.label = conclusion();
      }
    });
  }

  void onChangeHeight(value) {
    setState(() {
      var tryParse = double.tryParse(value);

      if (tryParse != null) {
        widget.height = tryParse;
        widget.result = calculate();
        widget.label = conclusion();
      }
    });
  }

  String calculate() {
    double imc = widget.weight / (widget.height * widget.height);
    return imc.toStringAsFixed(2);
  }

  String conclusion() {
    double imc = double.parse(widget.result);

    if (imc < 18.6) return "Abaixo do peso";
    if (imc >= 18.6 && imc < 24.9) return "Peso ideal";
    if (imc >= 24.9 && imc < 29.9) return "Sobrepeso";
    if (imc >= 29.9 && imc < 34.9) return "Obesidade I";
    if (imc >= 34.9 && imc < 39.9) return "Obesidade II";
    if (imc >= 39.9) return "Obesidade III";

    return "Informe o seu peso e altura";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Text(
                "IMC",
                style: TextStyle(
                  fontSize: 45,
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Input(label: "peso (kg)", onChange: onChangeWeight),
                    SizedBox(height: 20),
                    Input(label: "altura (m)", onChange: onChangeHeight),
                    SizedBox(height: 30),
                    Result(
                      label: widget.label,
                      result: widget.result,
                    ),
                  ],
                ),
              ),
            ],
          ),
          padding: EdgeInsets.symmetric(horizontal: 20),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: widget.changeTheme,
        child: Icon(
          Feather.sun,
          size: 25,
          color: Colors.white,
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
