import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class map extends StatelessWidget {
  const map({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(23.0225, 72.5714),
          zoom: 12,
        ),
      ),

    );
  }
}
