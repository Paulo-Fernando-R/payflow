import 'package:camera/camera.dart';

class BarcodeScannerStatus {
  final bool isCamaAvailable;
  final String error;
  final String barcode;
  final bool stopScanner;
  //CameraController? cameraController;

  BarcodeScannerStatus({
    this.isCamaAvailable = false,
    this.stopScanner = false, //
    //cameraController,
    this.error = "",
    this.barcode = "",
  });

  factory BarcodeScannerStatus.available() => BarcodeScannerStatus(
        isCamaAvailable: true,
        stopScanner: false, //
        //cameraController: controller,
      );

  factory BarcodeScannerStatus.error(String message) =>
      BarcodeScannerStatus(error: message, stopScanner: true); //message);

  factory BarcodeScannerStatus.barcode(String barcode) =>
      BarcodeScannerStatus(barcode: barcode, stopScanner: true); //barcode);

  bool get showCamera => isCamaAvailable && error.isEmpty;

  bool get hasError => error.isNotEmpty;

  bool get hasBarcode => barcode.isNotEmpty;

  BarcodeScannerStatus copyWith({
    bool? isAvailable,
    String? error,
    String? barcode,
    bool? stopScanner,
    CameraController? cameraController,
  }) {
    return BarcodeScannerStatus(
      isCamaAvailable: isAvailable ?? this.isCamaAvailable,
      error: error ?? this.error,
      barcode: barcode ?? this.barcode,
      stopScanner: stopScanner ?? this.stopScanner,
    );
  }
}
