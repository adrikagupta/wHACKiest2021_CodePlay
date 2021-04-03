import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Booking extends StatefulWidget{
  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  final form = GlobalKey<FormState>();
  DateTime startDate,endDate;

  void startDatePicker(){
    showDatePicker(context: context, 
                    initialDate: DateTime.now(), 
                    firstDate: DateTime.now(), 
                    lastDate: DateTime(2021,12,30)
                  ).then((pickedDate){
                    if(pickedDate == null)
                      return;
                    setState(() {
                      startDate = pickedDate;
                    });
                  });
  }
  void endDatePicker(){
    showDatePicker(context: context, 
                    initialDate: startDate==null?DateTime.now():startDate, 
                    firstDate: startDate==null?DateTime.now():startDate, 
                    lastDate: DateTime(2021,12,30)
                  ).then((pickedDate){
                    if(pickedDate == null)
                      return;
                    setState(() {
                      endDate = pickedDate;
                    });
                  });
  }

  void saveForm(){
    final isValid = form.currentState.validate();
    if(!isValid)
      return;
    form.currentState.save();
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(6.0),
        child: Form(
          key: form,
          child: ListView(
            children: [
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(labelText: 'Name',
                                            border: OutlineInputBorder(
                                                    borderSide: BorderSide(),),
                            ),
                validator: (value){
                  if(value.isEmpty)
                    return 'Please provide a name';
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(labelText: 'Address',
                                            border: OutlineInputBorder(
                                                    borderSide: BorderSide(),),
                            ),
                maxLines: 3,
                validator: (value){
                  if(value.isEmpty)
                    return 'Please fill in the address';
                  return null;
                },
                keyboardType: TextInputType.multiline,
              ),
              SizedBox(height: 10),
              IntlPhoneField(
                  decoration: InputDecoration(
                    labelText: 'Contact Number',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                  initialCountryCode: 'IN',
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                  onCountryChanged: (phone) {
                    print('Country code changed to: ' + phone.countryCode);
                  },
                ),
                TextButton(onPressed:startDatePicker, child: Text('Pick start date',
                style: TextStyle(fontSize: 20))
                ),
                Center(child:Text(startDate==null?'No start date chosen':'start date: ${startDate.day}-${startDate.month}-${startDate.year}',
                style: TextStyle(fontSize: 20)),
                ),
                TextButton(onPressed:endDatePicker, child: Text('Pick end date',
                style: TextStyle(fontSize: 20))),
                Center(child:Text(endDate==null?'No end date chosen':'end date: ${endDate.day}-${endDate.month}-${endDate.year}',
                style: TextStyle(fontSize: 20))),
                ElevatedButton(
                    onPressed: saveForm,
                    child: Text('Book now'),
                ),
            ],
          ),
        ),
        ),
    );
  }
}