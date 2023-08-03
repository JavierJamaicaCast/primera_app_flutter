import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class FormCard extends StatefulWidget {
  const FormCard({Key? key}) : super(key: key);

  @override
  State<FormCard> createState() => _FormCardState();
}

class _FormCardState extends State<FormCard> {
  var maskCard = MaskTextInputFormatter(
      mask: '#### #### #### ####',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);
  var maskDate = MaskTextInputFormatter(
      mask: '##/##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);
  var maskCode = MaskTextInputFormatter(
      mask: '###',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.network(
              "https://www.mastercard.es/content/dam/public/mastercardcom/eu/es/images/Consumidores/escoge-tu-tarjeta/credito/credito-world/world-mastercard-1280x720.png"),
          const SizedBox(
            height: 20,
          ),
          InputNombre(),
          SizedBox(height: 10),
          InputCard(),
          SizedBox(height: 10),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: InputFecha(),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: InputCode(),
              ),
            ],
          ),
          Container(
              margin: const EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(onPressed: () {}, child: Text("Pagar")))
        ],
      ),
    );
  }

  Container InputCode() {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(5)),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
          inputFormatters: [maskCode],
          keyboardType: TextInputType.number,
          style: const TextStyle(fontSize: 20),
          decoration:
              const InputDecoration(hintText: "000", border: InputBorder.none),
        ));
  }

  Container InputFecha() {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(5)),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
          inputFormatters: [maskDate],
          keyboardType: TextInputType.number,
          style: const TextStyle(fontSize: 20),
          decoration: const InputDecoration(
              hintText: "01/24", border: InputBorder.none),
        ));
  }

  Container InputCard() {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(5)),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
          inputFormatters: [maskCard],
          keyboardType: TextInputType.number,
          style: const TextStyle(fontSize: 20),
          decoration: const InputDecoration(
              hintText: "0000 0000 0000 0000", border: InputBorder.none),
        ));
  }

  Container InputNombre() {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(5)),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
          style: const TextStyle(fontSize: 20),
          decoration: const InputDecoration(
              hintText: "Su nombre", border: InputBorder.none),
        ));
  }
}
