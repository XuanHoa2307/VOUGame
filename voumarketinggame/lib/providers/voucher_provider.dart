import 'package:flutter/material.dart';

// Định nghĩa enum
enum VoucherStatus { received, notReceived }

class VoucherProvider with ChangeNotifier {
  
  int currentIndex = 0;
  final List<Map<String, dynamic>> voucherList = [
    {
      'voucherID': '0001',
      'userID': '1231321',
      'eventID': '001',
      'code': 'Nmgkhkad',
      'status': VoucherStatus.received,
      'received_at': '01/02/2025',
      'date_exp': '03/03/2025',
      'discount': '50%',
    },
    {
      'voucherID': '0002',
      'userID': '1312313',
      'eventID': '002',
      'code': 'Hsdakjdk',
      'status': VoucherStatus.received,
      'received_at': '07/02/2025',
      'date_exp': '09/03/2025',
      'discount': '20%',
    },
    {
      'voucherID': '0003',
      'userID': '1231321',
      'eventID': '003',
      'code': 'Kdjkhajd',
      'status': VoucherStatus.received,
      'received_at': '12/03/2025',
      'date_exp': '11/04/2025',
      'discount': '30%',
    },
    {
      'voucherID': '0004',
      'userID': '1312313',
      'eventID': '004',
      'code': 'Xadjkqwe',
      'status': VoucherStatus.received,
      'received_at': '13/12/2024',
      'date_exp': '12/01/2025',
      'discount': '50%',
    },
    {
      'voucherID': '0005',
      'userID': '1231321',
      'eventID': '005',
      'code': 'Pqowiejd',
      'status': VoucherStatus.received,
      'received_at': '05/01/2025',
      'date_exp': '04/02/2025',
      'discount': '20%',
    },
    {
      'voucherID': '0006',
      'userID': '1312313',
      'eventID': '006',
      'code': 'Mncxklak',
      'status': VoucherStatus.received,
      'received_at': '06/01/2025',
      'date_exp': '05/02/2025',
      'discount': '10%',
    },
    {
      'voucherID': '0007',
      'userID': '1231321',
      'eventID': '007',
      'code': 'Asdfgqwe',
      'status': VoucherStatus.received,
      'received_at': '11/01/2025',
      'date_exp': '10/02/2025',
      'discount': '15%',
    },
    {
      'voucherID': '0008',
      'userID': '1312313',
      'eventID': '008',
      'code': 'Bvcxzpoi',
      'status': VoucherStatus.received,
      'received_at': '05/02/2025',
      'date_exp': '07/03/2025',
      'discount': '25%',
    },
    {
      'voucherID': '0009',
      'userID': '1231321',
      'eventID': '009',
      'code': 'Lkjhdasq',
      'status': VoucherStatus.received,
      'received_at': '17/01/2025',
      'date_exp': '16/02/2025',
      'discount': '25%',
    },
    {
      'voucherID': '0010',
      'userID': '1312313',
      'eventID': '010',
      'code': 'Qwerrtyu',
      'status': VoucherStatus.received,
      'received_at': '03/01/2025',
      'date_exp': '02/02/2025',
      'discount': '30%',
    },
    {
      'voucherID': '0011',
      'userID': '1231321',
      'eventID': '011',
      'code': 'Asdfghjk',
      'status': VoucherStatus.received,
      'received_at': '12/12/2024',
      'date_exp': '11/01/2025',
      'discount': '70%',
    },
    {
      'voucherID': '0012',
      'userID': '1312313',
      'eventID': '012',
      'code': 'Zxcvbnmq',
      'status': VoucherStatus.received,
      'received_at': '21/01/2025',
      'date_exp': '20/02/2025',
      'discount': '50K',
    },
    {
      'voucherID': '0013',
      'userID': '1231321',
      'eventID': '013',
      'code': 'Poiuytre',
      'status': VoucherStatus.received,
      'received_at': '05/12/2024',
      'date_exp': '04/01/2025',
      'discount': '50%',
    },
    {
      'voucherID': '0014',
      'userID': '1312313',
      'eventID': '014',
      'code': 'Mnbvcxlp',
      'status': VoucherStatus.received,
      'received_at': '02/12/2024',
      'date_exp': '01/01/2025',
      'discount': '40%',
    },
    {
      'voucherID': '0015',
      'userID': '1231321',
      'eventID': '015',
      'code': 'Qazwsxed',
      'status': VoucherStatus.received,
      'received_at': '03/02/2025',
      'date_exp': '05/03/2025',
      'discount': '10%',
    },
    {
      'voucherID': '0016',
      'userID': '1312313',
      'eventID': '016',
      'code': 'Rfvtgbnh',
      'status': VoucherStatus.notReceived,
      'received_at': '',
      'date_exp': '',
      'discount': '20%',
    },
    {
      'voucherID': '0017',
      'userID': '1231321',
      'eventID': '017',
      'code': 'Yhnujmko',
      'status': VoucherStatus.notReceived,
      'received_at': '',
      'date_exp': '',
      'discount': '25%',
    },
    {
      'voucherID': '0018',
      'userID': '1312313',
      'eventID': '018',
      'code': 'Edcrfvtg',
      'status': VoucherStatus.notReceived,
      'received_at': '',
      'date_exp': '',
      'discount': '30%',
    },
    {
      'voucherID': '0019',
      'userID': '1231321',
      'eventID': '005',
      'code': 'Wsxzaqpl',
      'status': VoucherStatus.notReceived,
      'received_at': '',
      'date_exp': '',
      'discount': '20%',
    },
    {
      'voucherID': '0020',
      'userID': '1312313',
      'eventID': '006',
      'code': 'Plmoknji',
      'status': VoucherStatus.notReceived,
      'received_at': '',
      'date_exp': '',
      'discount': '10%',
    },
  ];
  void updateIndex(int newIndex) {
    currentIndex = newIndex;
    notifyListeners();
  }
}
