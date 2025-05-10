import 'package:flutter/material.dart';

class SearchForm extends StatefulWidget {
  @override
  _SearchFormState createState() => _SearchFormState();
}

class _SearchFormState extends State<SearchForm> {
  final _formKey = GlobalKey<FormState>();
  String _make = '';
  String _model = '';
  String _year = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(labelText: 'Make'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter the make';
              }
              return null;
            },
            onSaved: (value) {
              _make = value!;
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Model'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter the model';
              }
              return null;
            },
            onSaved: (value) {
              _model = value!;
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Year'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter the year';
              }
              return null;
            },
            onSaved: (value) {
              _year = value!;
            },
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // Perform search with _make, _model, and _year
              }
            },
            child: Text('Search'),
          ),
        ],
      ),
    );
  }
}
