import 'package:flutter/material.dart';
import 'package:flutter_sizeguide/backend/costumer_info.dart';
import 'package:flutter_sizeguide/screens/result_screen.dart';
import 'package:flutter_sizeguide/widgets/size_input_field.dart';

class StartScreen extends StatefulWidget {
  final String _title;

  StartScreen(this._title);

  @override
  StartScreenState createState() => StartScreenState();
}


class StartScreenState extends State<StartScreen> {
  TextEditingController heightTextController = new TextEditingController();
  TextEditingController neckWidthTextController = new TextEditingController();
  TextEditingController chestWidthTextController = new TextEditingController();
  TextEditingController hipWidthTextController = new TextEditingController();
  TextEditingController waistTextController = new TextEditingController();
  TextEditingController footSizeTextController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget._title),
      ),
      body: Center(
        child: new Column(
          children: <Widget>[
            SizeInputField('Højde', heightTextController),
            SizeInputField('Halsmål', neckWidthTextController),
            SizeInputField('Brystmål', chestWidthTextController),
            SizeInputField('Hoftemål', hipWidthTextController),
            SizeInputField('Livvide', waistTextController),
            SizeInputField('Fodlængde', footSizeTextController),
            new Container( //We add our send button
              margin: new EdgeInsets.symmetric(horizontal: 4.0),
              child: new IconButton(
                  icon: new Icon(Icons.forward),
                  onPressed: () => _navigateToResultScreen()
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToResultScreen() {
    CustomerInfo customerInfo = createCustomerInfoObject();
    Navigator.push(context, new MaterialPageRoute(builder: (context) => new ResultScreen(customerInfo)));
  }

  CustomerInfo createCustomerInfoObject() {
    //TODO: få hævet køn med ind
    int height = getInfoFromTextController(heightTextController);
    int neckWidth = getInfoFromTextController(neckWidthTextController);
    int chestWidth = getInfoFromTextController(chestWidthTextController);
    int hipWidth = getInfoFromTextController(hipWidthTextController);
    int waist = getInfoFromTextController(waistTextController);
    int footSize = getInfoFromTextController(footSizeTextController);
    return new CustomerInfo(
      gender: Gender.male,
      height: height,
      neckWidth: neckWidth,
      chestWidth: chestWidth,
      hipWidth: hipWidth,
      waist: waist,
      footSize: footSize,
    );

  }

  int getInfoFromTextController(TextEditingController textController) {
    if (textController.text == null || textController.text.length == 0) {
      return -1;
    } else {
      //TODO make some checks for integer only values
      return int.parse(textController.text);
    }
  }
}
