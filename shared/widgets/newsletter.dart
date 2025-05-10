import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:email_validator/email_validator.dart';
import 'package:dio/dio.dart';
import '../services/api_service.dart';

class NewsletterForm extends StatefulWidget {
  @override
  _NewsletterFormState createState() => _NewsletterFormState();
}

class _NewsletterFormState extends State<NewsletterForm> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(labelText: 'Email'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              } else if (!EmailValidator.validate(value)) {
                return 'Please enter a valid email';
              }
              return null;
            },
            onSaved: (value) {
              _email = value!;
            },
          ),
          SizedBox(height: 20),
          _isLoading
              ? CircularProgressIndicator()
              : ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      setState(() {
                        _isLoading = true;
                      });
                      try {
                        await Provider.of<ApiService>(context, listen: false)
                            .submitEmail(_email);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Email submitted successfully')),
                        );
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Failed to submit email')),
                        );
                      } finally {
                        setState(() {
                          _isLoading = false;
                        });
                      }
                    }
                  },
                  child: Text('Subscribe'),
                ),
        ],
      ),
    );
  }
}
