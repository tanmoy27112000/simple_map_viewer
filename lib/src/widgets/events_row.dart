// import 'package:flutter/material.dart';

// class EventsRow extends StatefulWidget {
//   final List<String> eventLists;
//   final int score;
//   const EventsRow({
//     Key? key,
//     required this.eventLists,
//     required this.score,
//   }) : super(key: key);

//   @override
//   _EventsRowState createState() => _EventsRowState();
// }

// class _EventsRowState extends State<EventsRow> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Expanded(
//               flex: 4,
//               child: Row(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(
//                       left: 5.0,
//                     ),
//                     child: Text(
//                       '${widget.score}',
//                       style: const TextStyle(
//                           color: Colors.white,
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Expanded(
//               flex: 5,
//               child: Row(
//                 children: [
//                   Container(
//                     width: 10,
//                     height: 10,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: tripDetailsController.incidentColors[index],
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 10,
//                   ),
//                   Text(
//                     tripDetailsController.incidentInitials[index],
//                     overflow: TextOverflow.ellipsis,
//                     style: const TextStyle(
//                       color: Colors.white,
//                       fontSize: 14,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Expanded(
//               flex: 3,
//               child: Transform.scale(
//                 scale: .7,
//                 child: CupertinoSwitch(
//                   onChanged: (value) {
//                     tripDetailsController.setActionValue(index, value);
//                   },
//                   trackColor: Colors.grey,
//                   activeColor: AppTheme.lightTheme.primaryColor,
//                   value: tripDetailsController.actionValue[index],
//                 ),
//               ),
//             )
//           ],
//         ),
//         index != 4
//             ? const Divider(
//                 color: Colors.grey,
//               )
//             : const SizedBox.shrink(),
//       ],
//     );
//   }
// }
