import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//creating a class that extends the stateful widget
class CurrencyConvertorPage extends StatefulWidget{
  const CurrencyConvertorPage({super.key});
  @override
  State<CurrencyConvertorPage> createState() => _CurrencyConvertorMaterialPageState();
}
// Creating a pvt class that extends the state inside of this class we'll put our stylings
class _CurrencyConvertorMaterialPageState extends State <CurrencyConvertorPage>{
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }
  void getValueOfMoney(){
    double amount = double.parse(textEditingController.text);
    setState(() {
      result = amount * 95.89;
    });
  }

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      // Changing the background color (Prop : Scaffold)
      backgroundColor: Color.fromRGBO(253, 251, 227, 1.0),
      // Bringing in the app bar
      appBar:  AppBar(
        // Changing the color of the appbar
          backgroundColor : Color.fromRGBO(253, 251, 227, 1.0),
          // giving it a title
          title: Text("Currency Convertor App",
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
          ),
          //Bringing the title to the center
          centerTitle: true,
      ),

      //Bringing the thing in center
      body: Center(
        // creating a column so that I can put everything inside and at once place
          child: Column(
            //Bringing it to the center of the screen. Now we've done it outside of the children because it's the property of the of column
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text("\$${result.toString()}",
               // Applying style to text
                 style: TextStyle(
                   // Increase the font
                    fontSize: 45,
                     // Making it bold
                     fontWeight : FontWeight.w700,
                 ),
               ),
               // Creating a textfield to get the user input
               Padding(
                 padding: const EdgeInsets.all(20.0),
                 child: TextField(
                   controller: textEditingController,
                   // Writing stuffs inside of text field

                   // Here, we're putting it to get the numbered keypad.
                     keyboardType : TextInputType.numberWithOptions(decimal: true),
                     decoration : InputDecoration(
                       //Putting the icon
                       prefixIcon: Icon(CupertinoIcons.money_dollar_circle_fill,
                       color: Colors.black,
                       ),
                       hintText: "Insert the amount",
                       border: OutlineInputBorder(),
                       // Reduces the inner padding, making the text box slimmer
                       contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
                     )
                 ),
               ),


               // creating a button
               ElevatedButton(onPressed: getValueOfMoney,
                   style: ElevatedButton.styleFrom(
                     backgroundColor: Colors.black,
                     fixedSize: Size(350, 50),
                       shape : RoundedRectangleBorder(
                         borderRadius: BorderRadius.zero
                       )

                   ),
                   child: Text("Convert",
                   style: TextStyle(
                     color: Color.fromRGBO(255, 255, 255, 1)
                   ),)
               )
             ]
          )
      ),
    );
  }
}
