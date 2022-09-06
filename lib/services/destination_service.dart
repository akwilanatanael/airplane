import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_1/models/destination_model.dart';

class DestinationService {
  CollectionReference _destinationRef = FirebaseFirestore.instance.collection('destinations');

  Future<List<DestinationModel>> fetchDestinations() async {
    try {
      QuerySnapshot result = await _destinationRef.get();

      List<DestinationModel> destinations = result.docs.map(
        (e) {
          return DestinationModel.fromJson(
            e.id,
            e.data() as Map<String, dynamic>,
          );
        },
      ).toList();

      return destinations;
    } catch (e) {
      throw e;
    }
  }
}
