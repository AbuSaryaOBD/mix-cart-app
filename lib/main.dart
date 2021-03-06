import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:mix_cart_app/core/mix_cart.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MixCart(),
    ),
  );
}
