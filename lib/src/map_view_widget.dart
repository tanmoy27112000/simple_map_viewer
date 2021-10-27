import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SimpleMapView extends StatefulWidget {
  const SimpleMapView({Key? key}) : super(key: key);

  @override
  State<SimpleMapView> createState() => _SimpleMapViewState();
}

class _SimpleMapViewState extends State<SimpleMapView> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition:
              CameraPosition(target: LatLng(22.5937, 88.9629), zoom: 12.0),
        ),
        // Consumer<TripDetailsController>(
        //   builder: (context, tripdetailsController, child) {
        //     return Align(
        //       alignment: Alignment.topRight,
        //       child: Padding(
        //         padding: const EdgeInsets.symmetric(vertical: 20),
        //         child: SizedBox(
        //           width: 40.w,
        //           child: Card(
        //             semanticContainer: true,
        //             color: Colors.black.withOpacity(0.5),
        //             clipBehavior: Clip.antiAliasWithSaveLayer,
        //             shape: RoundedRectangleBorder(
        //               borderRadius: BorderRadius.circular(10.0),
        //             ),
        //             child: SingleChildScrollView(
        //               child: Column(
        //                 children: [
        //                   ...List.generate(
        //                     tripdetailsController.mapPageActioValue.length,
        //                     (index) => MapPageHarshEventsRow(
        //                       tripdetailsController,
        //                       index,
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //           ),
        //         ),
        //       ),
        //     );
        //   },
        // )
      ],
    );
  }
}
