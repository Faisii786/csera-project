import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:location/location.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  Location _locationController = Location();

  final Completer<GoogleMapController> _mapController =
  Completer<GoogleMapController>();
  static const LatLng _defaultLocation = LatLng(33.6500, 72.9769); // Default location if location services are off
  static const LatLng _pCSERAPVT = LatLng(33.6500, 72.9769); // Coordinates for CSERA PVT Software House
  LatLng? _currentP;

  Map<PolylineId, Polyline> polylines = {};

  @override
  void initState() {
    super.initState();
    initMap();
  }

  Future<void> initMap() async {
    bool locationEnabled = await _checkLocationEnabled();
    if (locationEnabled) {
      getLocationUpdates().then(
            (_) {
          getPolylinePoints().then((coordinates) {
            generatePolyLineFromPoints(coordinates);
          });
        },
      );
    } else {
      setState(() {
        _currentP = _defaultLocation;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        onMapCreated: (GoogleMapController controller) =>
            _mapController.complete(controller),
        initialCameraPosition: CameraPosition(
          target: _currentP ?? _defaultLocation,
          zoom: 13,
        ),
        markers: {
          Marker(
            markerId: MarkerId("_cseraPvtLocation"),
            icon: BitmapDescriptor.defaultMarker,
            position: _pCSERAPVT,
            infoWindow: InfoWindow(title: "CSERA PVT Software House"),
          ),
        },
        polylines: Set<Polyline>.of(polylines.values),
        myLocationEnabled: true,
        myLocationButtonEnabled: false,
        circles: {
          Circle(
            circleId: CircleId("_currentLocationCircle"),
            center: _currentP ?? _defaultLocation,
            radius: 20,
            fillColor: Colors.blue,
            strokeWidth: 0,
          ),
        },
      ),
    );
  }

  Future<void> _cameraToPosition(LatLng pos) async {
    final GoogleMapController controller = await _mapController.future;
    CameraPosition _newCameraPosition = CameraPosition(
      target: pos,
      zoom: 13,
    );
    await controller.animateCamera(
      CameraUpdate.newCameraPosition(_newCameraPosition),
    );
  }

  Future<void> getLocationUpdates() async {
    bool _serviceEnabled;
    PermissionStatus _permissionGranted;

    _serviceEnabled = await _locationController.serviceEnabled();
    if (_serviceEnabled) {
      _serviceEnabled = await _locationController.requestService();
    } else {
      return;
    }

    _permissionGranted = await _locationController.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await _locationController.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _locationController.onLocationChanged
        .listen((LocationData currentLocation) {
      if (currentLocation.latitude != null &&
          currentLocation.longitude != null) {
        setState(() {
          _currentP =
              LatLng(currentLocation.latitude!, currentLocation.longitude!);
          _cameraToPosition(_currentP!);
        });
      }
    });
  }

  Future<List<LatLng>> getPolylinePoints() async {
    List<LatLng> polylineCoordinates = [];
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      'AIzaSyAe75WjCqY6PvX25uzHNFNRZzcFn3aMP6I',
      PointLatLng(_pCSERAPVT.latitude, _pCSERAPVT.longitude),
      PointLatLng(_pCSERAPVT.latitude, _pCSERAPVT.longitude),
      travelMode: TravelMode.driving,
    );
    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });
    } else {
      print(result.errorMessage);
    }
    return polylineCoordinates;
  }

  void generatePolyLineFromPoints(List<LatLng> polylineCoordinates) {
    PolylineId id = PolylineId("poly");
    Polyline polyline = Polyline(
      polylineId: id,
      color: Colors.black,
      points: polylineCoordinates,
      width: 8,
    );
    setState(() {
      polylines[id] = polyline;
    });
  }

  Future<bool> _checkLocationEnabled() async {
    bool serviceEnabled = await _locationController.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await _locationController.requestService();
    }
    return serviceEnabled;
  }
}
