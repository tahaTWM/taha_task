import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Lab extends StatefulWidget {
  @override
  _LabState createState() => _LabState();
}

class _LabState extends State<Lab> {
  GoogleMapController mapController;

  final LatLng _center = const LatLng(33.307551, 44.340382);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: <Widget>[
          Container(
            child: GoogleMap(
              onMapCreated: _onMapCreated,
              mapType: MapType.normal,
              initialCameraPosition: CameraPosition(
                  bearing: 192.8334901395799,
                  target: LatLng(33.3076165, 44.3405373),
                  tilt: 59.440717697143555,
                  zoom: 21),
            ),
          ),
          Positioned(
            bottom: 0,
            width: MediaQuery.of(context).size.width - 100,
            height: MediaQuery.of(context).size.height / 2.5,
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 17,
                    offset: Offset(3, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 30,
                        color: Colors.green,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "العنوان",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Text("العراق بغداد, المنصور ,شارع الرواد"),
                  Text("مقابل مطعم الصمد"),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.call,
                        size: 30,
                        color: Colors.green,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "اتصال",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Text("test@gmail.com -"),
                  Text("+9647700000000 -"),
                  Text("+9647700000000 -"),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.directions_boat_sharp,
                        size: 30,
                        color: Colors.green,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "الطاقم",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  FlatButton.icon(
                      color: Colors.grey[300].withOpacity(0.5),
                      onPressed: () {},
                      icon: Icon(Icons.wifi_off_rounded),
                      label: Text("تفقد من الاتصال من الانترنيت"))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
