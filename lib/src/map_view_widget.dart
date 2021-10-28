import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SimpleMapView extends StatefulWidget {
  final double stackBoxWidth;
  final List<String> eventLists;

  const SimpleMapView({
    Key? key,
    required this.stackBoxWidth,
    required this.eventLists,
  }) : super(key: key);

  @override
  State<SimpleMapView> createState() => _SimpleMapViewState();
}

class _SimpleMapViewState extends State<SimpleMapView> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition:
              CameraPosition(target: LatLng(22.5937, 88.9629), zoom: 12.0),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: SizedBox(
              width: widget.stackBoxWidth,
              child: Card(
                semanticContainer: true,
                color: Colors.black.withOpacity(0.5),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                // child: SingleChildScrollView(
                //   child: Column(
                //     children: [
                //       ...List.generate(
                //         widget.eventLists.length,
                //         (index) => EventsRow(
                //           tripdetailsController,
                //           index,
                //           eventLists: widget.eventLists,
                //           score: null,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
