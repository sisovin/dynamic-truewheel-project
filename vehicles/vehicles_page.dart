import 'package:flutter/material.dart';
import 'vehicle_card.dart';
import 'vehicle_filter.dart';
import 'vehicle_detail.dart';

class VehiclesPage extends StatefulWidget {
  @override
  _VehiclesPageState createState() => _VehiclesPageState();
}

class _VehiclesPageState extends State<VehiclesPage> {
  bool _isGridView = true;
  int _currentPage = 1;
  int _totalPages = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vehicles'),
        actions: [
          IconButton(
            icon: Icon(_isGridView ? Icons.view_list : Icons.view_module),
            onPressed: () {
              setState(() {
                _isGridView = !_isGridView;
              });
            },
          ),
        ],
      ),
      drawer: VehicleFilter(),
      body: Column(
        children: [
          Expanded(
            child: _isGridView ? _buildGridView() : _buildListView(),
          ),
          _buildPagination(),
        ],
      ),
    );
  }

  Widget _buildGridView() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
      ),
      itemCount: 20,
      itemBuilder: (context, index) {
        return VehicleCard(
          make: 'Make $index',
          model: 'Model $index',
          year: 2020,
          price: 20000.0,
          imageUrl: 'https://example.com/image.jpg',
          isFavorite: false,
          onFavoriteToggle: () {},
        );
      },
    );
  }

  Widget _buildListView() {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return VehicleCard(
          make: 'Make $index',
          model: 'Model $index',
          year: 2020,
          price: 20000.0,
          imageUrl: 'https://example.com/image.jpg',
          isFavorite: false,
          onFavoriteToggle: () {},
        );
      },
    );
  }

  Widget _buildPagination() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: _currentPage > 1
              ? () {
                  setState(() {
                    _currentPage--;
                  });
                }
              : null,
        ),
        Text('Page $_currentPage of $_totalPages'),
        IconButton(
          icon: Icon(Icons.arrow_forward),
          onPressed: _currentPage < _totalPages
              ? () {
                  setState(() {
                    _currentPage++;
                  });
                }
              : null,
        ),
      ],
    );
  }
}
