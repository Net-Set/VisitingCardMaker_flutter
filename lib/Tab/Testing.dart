// import '../flutter_flow/flutter_flow_animations.dart';
// import '../flutter_flow/flutter_flow_theme.dart';
// import '../flutter_flow/flutter_flow_util.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';
// import 'package:flutter_animate/flutter_animate.dart';
// import 'package:google_fonts/google_fonts.dart';

// class HomePageWidget extends StatefulWidget {
//   const HomePageWidget({Key? key}) : super(key: key);

//   @override
//   _HomePageWidgetState createState() => _HomePageWidgetState();
// }

// class _HomePageWidgetState extends State<HomePageWidget>
//     with TickerProviderStateMixin {
//   final animationsMap = {
//     'columnOnPageLoadAnimation': AnimationInfo(
//       trigger: AnimationTrigger.onPageLoad,
//       effects: [
//         FadeEffect(
//           curve: Curves.easeInOut,
//           delay: 0.ms,
//           duration: 600.ms,
//           begin: 0,
//           end: 1,
//         ),
//       ],
//     ),
//   };
//   final _unfocusNode = FocusNode();
//   final scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _unfocusNode.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: scaffoldKey,
//       backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
//       appBar: AppBar(
//         backgroundColor: FlutterFlowTheme.of(context).primaryColor,
//         automaticallyImplyLeading: false,
//         title: Text(
//           'Page Title',
//           style: FlutterFlowTheme.of(context).title2.override(
//                 fontFamily: 'Poppins',
//                 color: Colors.white,
//                 fontSize: 22,
//               ),
//         ),
//         actions: [],
//         centerTitle: false,
//         elevation: 2,
//       ),
//       body: SafeArea(
//         child: GestureDetector(
//           onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
//           child: Column(
//             mainAxisSize: MainAxisSize.max,
//             children: [
//               Container(
//                 width: 100,
//                 height: 100,
//                 decoration: BoxDecoration(
//                   color: FlutterFlowTheme.of(context).secondaryBackground,
//                 ),
//               ),
//               Row(
//                 mainAxisSize: MainAxisSize.max,
//                 children: [],
//               ),
//               Column(
//                 mainAxisSize: MainAxisSize.max,
//                 children: [
//                   Text(
//                     'Hello World',
//                     style: TextStyle(),
//                   ),
//                 ],
//               ),
//             ],
//           ).animateOnPageLoad(animationsMap['columnOnPageLoadAnimation']!),
//         ),
//       ),
//     );
//   }
// }
