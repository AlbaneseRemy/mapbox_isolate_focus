import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';


class MapBoxMapFocus extends StatefulWidget {

  @override
  State<MapBoxMapFocus> createState() => _MapBoxMapFocusState();
}

class _MapBoxMapFocusState extends State<MapBoxMapFocus> {

  bool _isTracking = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MapboxMap(
        initialCameraPosition: const CameraPosition(target: LatLng(0, 0), zoom: 6),
        styleString: MapboxStyles.SATELLITE,
        accessToken: "", //YOUR ACCESS TOKEN HERE
        rotateGesturesEnabled: false,
        tiltGesturesEnabled: false,
        myLocationEnabled: true,
        myLocationTrackingMode: _isTracking ? MyLocationTrackingMode.Tracking : MyLocationTrackingMode.None,
        compassEnabled: false,
        trackCameraPosition: true,
        onCameraTrackingDismissed: () => setState(() => _isTracking = false),
      ),
    );
  }

//
}
