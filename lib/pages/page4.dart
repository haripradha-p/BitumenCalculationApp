import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class Page4 extends StatelessWidget {
  String content1 =
      "Bitumen Additives Overview \n\nAbout additive added to bitumen \n\nAdditives can be added to bitumen (also known as asphalt) to improve its properties and performance. These additives can enhance the durability, flexibility, and adhesion of bitumen, as well as improve its resistance to aging, oxidation, and cracking. \n\nSome common types of additives used in bitumen include:\n\nPolymers: These can be added to bitumen to improve its elasticity and flexibility, making it more resistant to cracking and deformation. Examples of polymer additives include styrene-butadiene-styrene (SBS), styrene-acrylonitrile (SAN), and ethylene-vinyl acetate (EVA).\n\nAntioxidants: These additives are used to prevent the oxidation and aging of bitumen, which can lead to cracking and brittleness over time. Common antioxidants include phenols, amines, and hindered phenols.\n\nFillers: These are used to modify the physical properties of bitumen, such as its viscosity, stiffness, and stability. Examples of fillers include silica, carbon black, and hydrated lime.\n\nEmulsifiers: These are used to create an emulsion of bitumen and water, which can be used for applications such as surface treatments and seal coats.\n\nThe specific type and amount of additive used in bitumen can vary depending on the intended application and the desired performance characteristics.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      /*appBar: AppBar(
        title: Text('Bitumen Additive Overview'),
        centerTitle: true,
      ),*/
      body: SingleChildScrollView(
          child: Container(
        child: ReadMoreText(
          content1,
          trimLines: 8,
          textAlign: TextAlign.justify,
          trimMode: TrimMode.Line,
          trimCollapsedText: "Show More",
          trimExpandedText: "Show Less",
          lessStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
          moreStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
          style: TextStyle(
            fontSize: 16,
          ),

        ),
      )),
    );
  }
}
