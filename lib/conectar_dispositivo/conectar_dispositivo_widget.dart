import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'conectar_dispositivo_model.dart'; 
export 'conectar_dispositivo_model.dart';

// RAFA
// import 'dart:convert';
// import 'dart:typed_data';
// import 'package:flutter_application/widgets/action_button.dart';
// import 'package:flutter_application/real_time_line_chart.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
// import 'package:flutter/material.dart';
//import 'package:permission_handler/permission_handler.dart';
// RAFA

class ConectarDispositivoWidget extends StatefulWidget {
  const ConectarDispositivoWidget({super.key});

  @override
  State<ConectarDispositivoWidget> createState() =>
      _ConectarDispositivoWidgetState();
}

class _ConectarDispositivoWidgetState extends State<ConectarDispositivoWidget> {
  //
  final _bluetooth = FlutterBluetoothSerial.instance;
  bool _bluetoothState = false;
  bool _isConnecting = false;
  BluetoothConnection? _connection;
  List<BluetoothDevice> _devices = [];
  BluetoothDevice? _deviceConnected;

  void _getDevices() async {
    var res = await _bluetooth.getBondedDevices();
    print("resultados lista bt:");
    print(res);
    setState(() => _devices = res);
  }

  //
  late ConectarDispositivoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  //
  //void _requestPermission() async {
    // await Permission.bluetooth.request();
     //await Permission.bluetoothScan.request();
     //await Permission.bluetoothConnect.request();
  //}
  //

  @override
  void initState() {
    super.initState();
    //_requestPermission();
    _model = createModel(context, () => ConectarDispositivoModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(45.0, 0.0, 45.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/WhatsApp_Image_2024-04-24_at_1.01.08_PM.jpeg',
                          width: 150.0,
                          height: 150.0,
                          fit: BoxFit.cover,
                          alignment: Alignment(0.0, -1.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 1482.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF3AB6FF),
                        shape: BoxShape.rectangle,
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          'Conectar dispositivo',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    fontSize: 30.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 40.0, 20.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 40.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              FFButtonWidget(
                                onPressed: () {
                                  // print('Button pressed ...');
                                  //
                                  _getDevices();
                                  //
                                  //
                                },
                                text: 'Buscar dispositivo',
                                icon: Icon(
                                  Icons.cast_connected,
                                  size: 15.0,
                                ),
                                options: FFButtonOptions(
                                  width: 351.0,
                                  height: 170.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: Color(0xFF3AB6FF),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Inter',
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              // 
                              Container(
                                child: _listDevices(),
                              ),
                              // 
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 240.0, 0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    context.pushNamed('Menupaciente');
                                  },
                                  text: 'Regresar',
                                  icon: Icon(
                                    Icons.arrow_back_sharp,
                                    size: 15.0,
                                  ),
                                  options: FFButtonOptions(
                                    width: 351.0,
                                    height: 50.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: Color(0xFF3AB6FF),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Inter',
                                          letterSpacing: 0.0,
                                        ),
                                    elevation: 3.0,
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(height: 10.0)),
                          ),
                        ),
                      ].divide(SizedBox(width: 10.0)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _listDevices() {
    return _isConnecting
        ? const Center(child: CircularProgressIndicator())
        : SingleChildScrollView(
            child: Container(
              color: Colors.grey.shade100,
              child: Column(
                children: [
                  ...[
                    for (final device in _devices)
                    
                      ListTile(
                        title: Text(device.name ?? device.address),
                        trailing: TextButton(
                          child: const Text('conectar'),
                          onPressed: () async {
                            setState(() => _isConnecting = true);

                            _connection = await BluetoothConnection.toAddress(
                                device.address);
                            _deviceConnected = device;
                            _devices = [];
                            _isConnecting = false;

                            // _receiveData();

                            setState(() {});
                          },
                        ),
                      )
                  ]
                ],
              ),
            ),
          );
  }
}
