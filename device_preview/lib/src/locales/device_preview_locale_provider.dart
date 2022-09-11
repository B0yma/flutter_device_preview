import 'package:flutter/cupertino.dart';

class DevicePreviewLocaleProvider extends InheritedWidget {
  final DevicePreviewLocale devicePreviewLocale;

  const DevicePreviewLocaleProvider({
    Key? key,
    required this.devicePreviewLocale,
    required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant DevicePreviewLocaleProvider oldWidget) {
    return oldWidget.devicePreviewLocale != devicePreviewLocale;
  }

  static DevicePreviewLocale of(BuildContext context){
    var widget = context.dependOnInheritedWidgetOfExactType<DevicePreviewLocaleProvider>();
    if (widget == null) throw Exception("provide DevicePreviewLocaleProvider");
    return widget.devicePreviewLocale;
  }
}

class DevicePreviewLocale {
  final String devicePreview;
  final String deviceModel;
  final String lang;
  final String previewSettings;
  final String dark;
  final String light;
  final String visible;
  final String hidden;
  final String virtualKeyboardPreview;
  final String device;
  final String toolsTheme;
  final String backgroundTheme;



  DevicePreviewLocale({
    required this.devicePreview,
    required this.lang,
    required this.deviceModel,
    required this.previewSettings,
    required this.dark,
    required this.light,
    required this.visible,
    required this.hidden,
    required this.virtualKeyboardPreview,
    required this.device,
    required this.toolsTheme,
    required this.backgroundTheme,
  });
}

DevicePreviewLocale devicePreviewLocaleProviderEn() => DevicePreviewLocale(
  devicePreview: "Device Preview z",
  lang: "Language",
  deviceModel: 'Device model',
  previewSettings: 'Preview settings',
  dark: 'Dark',
  light: 'Light',
  visible: 'Visible',
  hidden: 'Hidden',
  virtualKeyboardPreview: 'Virtual keyboard preview',
  device: 'Device',
  toolsTheme: 'Tools theme',
  backgroundTheme: 'Background theme',
);
