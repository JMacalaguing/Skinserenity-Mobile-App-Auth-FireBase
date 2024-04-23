import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  // Collection reference
  final CollectionReference routines =
  FirebaseFirestore.instance.collection('routines');

  // Create routine
  Future<void> addRoutine(String title, String description) {
    return routines.add({
      'title': title,
      'description': description,
    });
  }

  // Read routines
  Stream<QuerySnapshot> getRoutines() {
    return routines.snapshots();
  }

  // Update routine
  Future<void> updateRoutine(String id, String title, String description) {
    return routines.doc(id).update({
      'title': title,
      'description': description,
    });
  }

  // Delete routine
  Future<void> deleteRoutine(String id) {
    return routines.doc(id).delete();
  }
}
