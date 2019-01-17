import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GApp extends StatefulWidget {
  @override
  _GAppState createState() => _GAppState();
}

class _GAppState extends State<GApp> {
  GoogleMapController mapController;

  final LatLng _center = const LatLng(11.9327625, 79.8341887);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    mapController.addMarker(MarkerOptions(
        position: LatLng(11.9362295, 79.8302531),
        draggable: false,
        infoWindowText: InfoWindowText("OK IT Technology",
            "New Complex, No.100,3rd Floor, Neru Street, Heritage Town, Puducherry, 605001")
            ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back),
            onPressed: () {
            Navigator.pop(context);
          },),
          
          title: Text('Address'),
          //<backgroundColor: Colors.green[700],
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          options: GoogleMapOptions(
            cameraPosition: CameraPosition(
              target: _center,
              zoom: 15.0,
            ),
          ),
        ),
        
      ),
    );
  }
}


