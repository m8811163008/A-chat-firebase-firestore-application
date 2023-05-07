import 'package:cloud_firestore/cloud_firestore.dart';

import 'message.dart';

/// Data access object
///
/// The data access object helps access whatever data you have
/// stored at the given Cloud Firestore reference.
class MessageDao {
  // gets the root of the messages collection
  final CollectionReference collection =
      FirebaseFirestore.instance.collection('messages');
  void saveMessage(Message message) async {
    final result = await collection.add(message.toJson());
    print(result);
  }

  Stream<QuerySnapshot> getMessageStream() {
    return collection.snapshots();
  }
}
