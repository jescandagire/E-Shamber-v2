import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

main() {
  runApp(MyApp());
}

//***** for the general layout and design of the app *****

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Demo',
      home: FormScreen(),
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
        primaryColor: Colors.green[400],
        accentColor: Colors.green[400],

        // Define the default font family.
        fontFamily: 'Georgia',

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          body1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      )
    );
  }
}

//****** creating the form now *****

class FormScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return FormScreenState();
  }
}

class FormScreenState extends State<FormScreen>{

  String _farmerName;
  String _farmerContact;
  String _farmName;
  String _farmDescription;
  String _yearsOfExperience;
  String _amountRequired;
  String _growthPeriod;
  String _previousYields;
  String _farmImage;


  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildFarmerName(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Farmer Name'),
      // ignore: missing_return
      validator: (String value){
        if(value.isEmpty){
          return 'Farmer Name is required';
        }
      },
      onSaved: (String value) {
        _farmerName = value;
      },
    );
  }

  Widget _buildFarmerContact(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Farmer Contact'),
      // ignore: missing_return
      validator: (String value){
        if(value.isEmpty){
          return 'Farmer Contact is required';
        }
      },
      onSaved: (String value) {
        _farmerContact = value;
      },
    );
  }

  Widget _buildFarmName(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Farm Name'),
      // ignore: missing_return
      validator: (String value){
        if(value.isEmpty){
          return 'Farm Name is required';
        }
      },
      onSaved: (String value) {
        _farmName = value;
      },
    );
  }

  Widget _buildFarmDescription(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Farm Description'),
      // ignore: missing_return
      validator: (String value){
        if(value.isEmpty){
          return 'Farm Name is required';
        }
      },
      onSaved: (String value) {
        _farmDescription = value;
      },
    );
  }

  Widget _buildFarmerExperience(){
    return null;
  }

  Widget _buildAmountRequired(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Investment Amount Required'),
      // ignore: missing_return
      validator: (String value){
        if(value.isEmpty){
          return 'Investment amount is required';
        }
      },
      onSaved: (String value) {
        _amountRequired = value;
      },
    );
  }

  Widget _buildGrowthPeriod(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Period of Growth'),
      // ignore: missing_return
      validator: (String value){
        if(value.isEmpty){
          return 'Growth period is required';
        }
      },
      onSaved: (String value) {
        _growthPeriod = value;
      },
    );
  }

  Widget _buildPreviousYield(){
    return TextFormField(
      decoration: InputDecoration(labelText: 'Previous farm yields'),
      // ignore: missing_return
      validator: (String value){
        if(value.isEmpty){
          return 'This field is required';
        }
      },
      onSaved: (String value) {
        _previousYields = value;
      },
    );
  }

  Widget _buildFarmImage(){
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form Demo')),
      body: Container(
        margin: EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildFarmerName(),
              _buildFarmerContact(),
              _buildFarmName(),
              _buildFarmDescription(),
              _buildAmountRequired(),
              _buildGrowthPeriod(),
              _buildPreviousYield(),
              _buildFarmImage(),
              SizedBox(height: 100,),
              RaisedButton(
                child: Text(
                  "Submit",
                  style: TextStyle(color: Colors.blue, fontSize: 16),
                ),
                onPressed: () {
                  if(!_formKey.currentState.validate()){
                    return;
                  }

                  _formKey.currentState.save();

                  print(_farmerName);
                  print(_farmerContact);
                  print(_farmName);
                  print(_farmDescription);
                  print(_yearsOfExperience);
                  print(_amountRequired);
                  print(_growthPeriod);
                  print(_previousYields);
                  print(_farmImage);

                },
              )
            ],
          ),
      )
    )
    );
  }






















//class FormDemo extends StatefulWidget {
//  @override
//  State<StatefulWidget> createState() {
//    return _FormDemoState();
//  }
//}
//
//class _FormDemoState extends State<FormDemo> {
//
//  var _experience = ['Below 1 year', '1-5 years','Above 5 years'];
//  var _currentExperienceSelected = 'Below 1 year';
//
//  final _formKey = GlobalKey<FormState>();
//  final Map<String, dynamic> formData = {'farmName': null, 'farmDescription': null, 'experience': null,'investmentAmount': null,'activities': null,'farmPerformance': null,};
//
//
//  TextStyle style1 = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0,color: Colors.black);
//  FocusNode myFocusNode = new FocusNode();
//  FocusNode myFocusNoded = new FocusNode();
//  FocusNode myFocusNodea = new FocusNode();
//  FocusNode myFocusNodep = new FocusNode();
//  String _currentItemSelected = "Below 1 year";
//  List experienceList = ["Below 1 year","1-5 years", "Above 5 years"];
//
//
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        backgroundColor: Colors.green[400],
//        title: Text('Form Data'),
//      ),
//      body:_buildForm(),
//    );
//  }
//
//  Widget _buildForm() {
//    return Scaffold(
//      body: Padding(
//        padding: EdgeInsets.all(20.0),
//        child:Form(
//            key: _formKey,
//            child: ListView(
//              children: <Widget>[
//                _buildFarmerField(),
//                SizedBox(height: 8.0),
//                _buildFarmerContactField(),
//                SizedBox(height: 8.0),
//                _buildFarmField(),
//                SizedBox(height: 8.0),
//                _buildFarmDescriptionField(),
//                SizedBox(height: 8.0),
//                ListTile(
//                  leading: Text('Years of Experience'),
////                  style: Theme.of(context).textTheme.title,
//                  trailing:experienceDropdown(experienceList) ,
//                ),
//                SizedBox(height: 8.0),
//                ListTile(
//                  leading: Text('Years of Employees'),
////                  style: Theme.of(context).textTheme.title,
//                  trailing:employeesDropdown(experienceList) ,
//                ),
//                SizedBox(height: 8.0,),
//                _buildAmountField(),
//                SizedBox(height: 8.0,),
//                _buildPeriodOfGrowthField(),
//                SizedBox(height: 8.0),
//                _buildPerformanceField(),
//                SizedBox(height: 8.0),
//                _buildImageField(),
//                SizedBox(height: 8.0),
//                _buildSubmitButton(),
//              ],
//            )) ,
//      ),
//    );
//  }
//
//  Widget _buildFarmerField() {
//    return TextFormField(
//      focusNode: myFocusNode,
//      style: TextStyle(color: Colors.black),
//      keyboardType: TextInputType.multiline,
//      maxLines: null,
//      decoration: InputDecoration(
//          labelStyle: new TextStyle(
//              color: myFocusNode.hasFocus ? Colors.blue : Colors.black
//          ),
//          enabledBorder: UnderlineInputBorder(
//            borderSide: BorderSide(color: Colors.green[400]),
//          ),
//          focusedBorder:UnderlineInputBorder(
//            borderSide: BorderSide(color: Colors.green[400]),
//          ),
//          labelText: 'Farm Name'),
//          cursorColor: Colors.green[400],
////        suffixIcon: Icon(Icons.supervised_user_circle),
//      validator: (String value) {
//        if (value.isEmpty) {
//          return 'Preencha a senha';
//        }
//      },
//      onSaved: (String value){
//        formData['farmName'] = value;
//      },
//      textInputAction: TextInputAction.next,
//    ) ;
//  }
//
//  Widget _buildFarmerContactField() {
//    return TextFormField(
//      focusNode: myFocusNode,
//      style: TextStyle(color: Colors.black),
//      keyboardType: TextInputType.multiline,
//      maxLines: null,
//      decoration: InputDecoration(
//          labelStyle: new TextStyle(
//              color: myFocusNode.hasFocus ? Colors.blue : Colors.black
//          ),
//          enabledBorder: UnderlineInputBorder(
//            borderSide: BorderSide(color: Colors.green[400]),
//          ),
//          focusedBorder:UnderlineInputBorder(
//            borderSide: BorderSide(color: Colors.green[400]),
//          ),
//          labelText: 'Farm Name'),
//      cursorColor: Colors.green[400],
////        suffixIcon: Icon(Icons.supervised_user_circle),
//      validator: (String value) {
//        if (value.isEmpty) {
//          return 'Preencha a senha';
//        }
//      },
//      onSaved: (String value){
//        formData['farmName'] = value;
//      },
//      textInputAction: TextInputAction.next,
//    ) ;
//  }
//
//  Widget _buildFarmField() {
//    return TextFormField(
//      focusNode: myFocusNode,
//      style: TextStyle(color: Colors.black),
//      keyboardType: TextInputType.multiline,
//      maxLines: null,
//      decoration: InputDecoration(
//          labelStyle: new TextStyle(
//              color: myFocusNode.hasFocus ? Colors.blue : Colors.black
//          ),
//          enabledBorder: UnderlineInputBorder(
//            borderSide: BorderSide(color: Colors.green[400]),
//          ),
//          focusedBorder:UnderlineInputBorder(
//            borderSide: BorderSide(color: Colors.green[400]),
//          ),
//          labelText: 'Farm Name'),
//      cursorColor: Colors.green[400],
////        suffixIcon: Icon(Icons.supervised_user_circle),
//      validator: (String value) {
//        if (value.isEmpty) {
//          return 'Preencha a senha';
//        }
//      },
//      onSaved: (String value){
//        formData['farmName'] = value;
//      },
//      textInputAction: TextInputAction.next,
//    ) ;
//  }
//
//  Widget _buildFarmDescriptionField() {
//    return TextFormField(
//      focusNode: myFocusNoded,
//      keyboardType: TextInputType.multiline,
//      maxLines: null,
//      decoration: InputDecoration(
//          labelStyle: TextStyle(
//              color: myFocusNoded.hasFocus ? Colors.blue : Colors.black
//          ),
//          enabledBorder: UnderlineInputBorder(
//            borderSide: BorderSide(color: Colors.green[400]),
//          ),
//          focusedBorder:UnderlineInputBorder(
//            borderSide: BorderSide(color: Colors.green[400]),
//          ),
//          labelText: 'Farm Description'),
//          cursorColor: Colors.green[400],
//      validator: (String value) {
//        if (value.isEmpty) {
//          return 'Preencha a senha';
//        }
//      },
//      onSaved: (String value){
//        formData['farmDescription'] = value;
//      },
//      textInputAction: TextInputAction.next,
//    );
//  }
//
//  DropdownButton experienceDropdown(List experienceList) {
//    return DropdownButton<String>(
////      style: Theme.of(context).textTheme.title,//element 3
//      isExpanded: false,
//      items: experienceList.map((var dropDownStringItem) {
//        return DropdownMenuItem<String>( //instantiation ofDropdown
//          value: dropDownStringItem,
//          child: Text(dropDownStringItem, style: Theme.of(context).textTheme.body1,),
//        );
//      }).toList(),
//      onChanged: (
//          String newValueSelected) async { //action code when the item is selected from the drop down menu
//        setState((){ // you may need an external function that
//          this._currentItemSelected = newValueSelected;
//        });
//        //call the other model function with selected maker
//
//      },
//
//      value: _currentItemSelected,
//    );
//  }
//
//  DropdownButton employeesDropdown(List experienceList) {
//    return DropdownButton<String>(
////      style: Theme.of(context).textTheme.title,//element 3
//      isExpanded: false,
//      items: experienceList.map((var dropDownStringItem) {
//        return DropdownMenuItem<String>( //instantiation ofDropdown
//          value: dropDownStringItem,
//          child: Text(dropDownStringItem, style: Theme.of(context).textTheme.body1,),
//        );
//      }).toList(),
//      onChanged: (
//          String newValueSelected) async { //action code when the item is selected from the drop down menu
//        setState((){ // you may need an external function that
//          this._currentItemSelected = newValueSelected;
//        });
//        //call the other model function with selected maker
//
//      },
//
//      value: _currentItemSelected,
//    );
//  }
//
//  Widget _buildAmountField() {
//    return TextFormField(
//      focusNode: myFocusNodea,
//      decoration: InputDecoration(
//          labelStyle: TextStyle(
//              color: myFocusNodea.hasFocus ? Colors.blue : Colors.black
//          ),
//          enabledBorder: UnderlineInputBorder(
//            borderSide: BorderSide(color: Colors.green[400]),
//          ),
//          focusedBorder:UnderlineInputBorder(
//            borderSide: BorderSide(color: Colors.green[400]),
//          ),
//          labelText: 'Investment Amount Required'),
//          cursorColor: Colors.green[400],
//      validator: (String value) {
//        if (value.isEmpty) {
//          return 'Preencha a senha';
//        }
//      },
//      onSaved: (String value){
//        formData['investmentAmount'] = value;
//      },
//      textInputAction: TextInputAction.next,
//    );
//  }
//
//  Widget _buildPeriodOfGrowthField() {
//    return TextFormField(
//      focusNode: myFocusNodea,
//      decoration: InputDecoration(
//          labelStyle: TextStyle(
//              color: myFocusNodea.hasFocus ? Colors.blue : Colors.black
//          ),
//          enabledBorder: UnderlineInputBorder(
//            borderSide: BorderSide(color: Colors.green[400]),
//          ),
//          focusedBorder:UnderlineInputBorder(
//            borderSide: BorderSide(color: Colors.green[400]),
//          ),
//          labelText: 'Investment Amount Required'),
//      cursorColor: Colors.green[400],
//      validator: (String value) {
//        if (value.isEmpty) {
//          return 'Preencha a senha';
//        }
//      },
//      onSaved: (String value){
//        formData['investmentAmou nt'] = value;
//      },
//      textInputAction: TextInputAction.next,
//    );
//  }
//
//
//  Widget _buildPerformanceField() {
//    return TextFormField(
//      focusNode: myFocusNodep,
//      decoration: InputDecoration(
//          labelStyle: TextStyle(
//              color: myFocusNodep.hasFocus ? Colors.blue : Colors.black
//          ),
//          enabledBorder: UnderlineInputBorder(
//            borderSide: BorderSide(color: Colors.green[400]),
//          ),
//          focusedBorder:UnderlineInputBorder(
//            borderSide: BorderSide(color: Colors.green[400]),
//          ),
//          labelText: "Farm's Performance in Past 3 seasons"),
//          cursorColor: Colors.green[400],
//      validator: (String value) {
//        if (value.isEmpty) {
//          return 'Preencha a senha';
//        }
//      },
//      onSaved: (String value){
//        formData['farmPerformance'] = value;
//      },
//    );
//  }
//
//  Widget _buildImageField() {
//    return TextFormField(
//      focusNode: myFocusNodep,
//      decoration: InputDecoration(
//          labelStyle: TextStyle(
//              color: myFocusNodep.hasFocus ? Colors.blue : Colors.black
//          ),
//          enabledBorder: UnderlineInputBorder(
//            borderSide: BorderSide(color: Colors.green[400]),
//          ),
//          focusedBorder:UnderlineInputBorder(
//            borderSide: BorderSide(color: Colors.green[400]),
//          ),
//          labelText: "Farm's Performance in Past 3 seasons"),
//      cursorColor: Colors.green[400],
//      validator: (String value) {
//        if (value.isEmpty) {
//          return 'Preencha a senha';
//        }
//      },
//      onSaved: (String value){
//        formData['farmPerformance'] = value;
//      },
//    );
//  }
//
//  Widget _buildSubmitButton() {
//    return RaisedButton(
//      onPressed: () {
//        _submitForm();
//      },
//      child: Text('SEND'),
//    );
//  }
//
//  void _submitForm() {
//    print('Submitting form');
//    if (_formKey.currentState.validate()) {
//      _formKey.currentState.save(); //onSaved is called
//      print(formData);
//    }
//  }
//
}