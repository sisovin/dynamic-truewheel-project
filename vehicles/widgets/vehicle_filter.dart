import 'package:flutter/material.dart';
import 'package:flutter_range_slider/flutter_range_slider.dart' as frs;

class VehicleFilter extends StatefulWidget {
  @override
  _VehicleFilterState createState() => _VehicleFilterState();
}

class _VehicleFilterState extends State<VehicleFilter> {
  double _minPrice = 0.0;
  double _maxPrice = 100000.0;
  double _lowerValue = 0.0;
  double _upperValue = 100000.0;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Filter Vehicles'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Price Range'),
            subtitle: frs.RangeSlider(
              min: _minPrice,
              max: _maxPrice,
              lowerValue: _lowerValue,
              upperValue: _upperValue,
              divisions: 100,
              showValueIndicator: true,
              valueIndicatorMaxDecimals: 0,
              onChanged: (double newLowerValue, double newUpperValue) {
                setState(() {
                  _lowerValue = newLowerValue;
                  _upperValue = newUpperValue;
                });
              },
            ),
          ),
          ListTile(
            title: Text('Make'),
            trailing: DropdownButton<String>(
              items: <String>['Toyota', 'Honda', 'Ford', 'BMW', 'Audi']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {},
            ),
          ),
          ListTile(
            title: Text('Model'),
            trailing: DropdownButton<String>(
              items: <String>['Camry', 'Civic', 'Mustang', 'X5', 'A4']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {},
            ),
          ),
          ListTile(
            title: Text('Year'),
            trailing: DropdownButton<String>(
              items: <String>['2020', '2019', '2018', '2017', '2016']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {},
            ),
          ),
          ListTile(
            title: Text('Color'),
            trailing: DropdownButton<String>(
              items: <String>['Red', 'Blue', 'Black', 'White', 'Gray']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {},
            ),
          ),
        ],
      ),
    );
  }
}
