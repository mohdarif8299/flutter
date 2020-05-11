import 'package:google_maps_flutter/google_maps_flutter.dart';

Map<MarkerId, Marker> markers = <MarkerId, Marker>{};
double sourceLat = 28.6372;
double sourceLng = 77.2756;
String sourceStr = "Enter Location";
String destStr = "Enter Destination";
bool sourceSelected = false;
double destLat = 0.0;
double destLng = 0.0;
