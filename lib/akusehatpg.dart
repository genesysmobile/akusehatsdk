library akusehatpg;


class HealthMonitorService {

  Future<void> startMeasurement(int duration) async {
    // try {
    //   var resultLicense = await AccessApi().getDataKuota();
    //   if (resultLicense['result']) {
    //     var data = resultLicense['data'];
    //     if (data['usage_counter'] >= data['usage_limit']) {
    //       throw HealthMonitorException(resultLicense['message'], 2016);
    //     } else {
    //       int counter = resultLicense['data']['usage_counter'];
    //       var resultCounter = await AccessApi().updateCounter(counter - 1);
    //       if (resultCounter['result']) {
    //         print('SDK start scan');
    //         await _methodChannel.invokeMethod(
    //             'startSession', {"duration": duration});
    //       } else {
    //         throw HealthMonitorException(resultLicense['message'], 2016);
    //       }
    //     }
    //   } else {
    //     throw HealthMonitorException(resultLicense['message'], 2016);
    //   }
    // } on PlatformException catch (e) {
    //   throw HealthMonitorException(e.message ?? 'Unknown error', int.tryParse(e.code) ?? 0);
    // }
  }

  Future<void> stop() async {
    // try {
    //   var resultLicense = await AccessApi().getDataKuota();
    //   if (resultLicense['result']) {
    //     var data = resultLicense['data'];
    //     if (data['usage_counter'] >= data['usage_limit']) {
    //       throw HealthMonitorException(resultLicense['message'], 2016);
    //     } else {
    //       int counter = resultLicense['data']['usage_counter'];
    //       var resultCounter = await AccessApi().updateCounter(counter + 1);
    //       if (resultCounter['result']) {
    //         print('SDK stop scan');
    //         await _methodChannel.invokeMethod('stopSession');
    //       } else {
    //         throw HealthMonitorException(resultLicense['message'], 2016);
    //       }
    //     }
    //   } else {
    //     throw HealthMonitorException(resultLicense['message'], 2016);
    //   }
    // } on PlatformException catch (e) {
    //   throw HealthMonitorException(e.message ?? 'Unknown error', int.tryParse(e.code) ?? 0);
    // }
  }

  Future<void> terminate() async {
    // var resultLicense = await AccessApi().getDataKuota();
    // if (resultLicense['result']) {
    //   var data = resultLicense['data'];
    //   if (data['usage_counter'] >= data['usage_limit']) {
    //     throw HealthMonitorException(resultLicense['message'], 2016);
    //   } else {
    //     int counter = resultLicense['data']['usage_counter'];
    //     var resultCounter = await AccessApi().updateCounter(counter + 1);
    //     if (resultCounter['result']) {
    //       print('SDK terminate scan');
    //       await _methodChannel.invokeMethod('terminateSession');
    //     } else {
    //       throw HealthMonitorException(resultLicense['message'], 2016);
    //     }
    //   }
    // } else {
    //   throw HealthMonitorException(resultLicense['message'], 2016);
    // }
  }
}
