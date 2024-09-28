class EmergencyModel {
  final String title;
  final String phoneNumbers;
  EmergencyModel({required this.title, required this.phoneNumbers});

  @override
  String toString() {
    // TODO: implement toString
    return super.toString();
  }
}

final EmergencyList = [
  EmergencyModel(title: 'Ambulan', phoneNumbers: '118'),
  EmergencyModel(title: 'Sar Nasional', phoneNumbers: '115'),
  EmergencyModel(title: 'Pertolongan di Jalan Tol', phoneNumbers: '14080'),
  EmergencyModel(title: 'Konseling Kekerasan Terhadap Perempuan dan Anak', phoneNumbers: '129'),
  EmergencyModel(title: 'Polisi', phoneNumbers: '110'),
];
