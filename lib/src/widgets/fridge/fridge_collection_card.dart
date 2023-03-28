import 'package:client/src/model/fridge.dart';
import 'package:flutter/material.dart';

import '../../../flutter_flow/flutter_flow_theme.dart';

class FridgeCollectionCard extends StatelessWidget {
  const FridgeCollectionCard(
      {super.key, required this.routefunc, required this.fridge});

  final Function() routefunc;
  final Fridge fridge;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        routefunc();
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.45,
        height: 190.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: const [
            BoxShadow(
              blurRadius: 4.0,
              color: Color(0x230E151B),
              offset: Offset(0.0, 2.0),
            )
          ],
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 4.0, 4.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10, top: 10),
                child: Text(
                  fridge.fridgeName,
                  style: FlutterFlowTheme.of(context).subtitle1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10, top: 10),
                child: Text(
                  fridge.fridgeType,
                  style: FlutterFlowTheme.of(context).bodyText2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
