// import 'package:cloud_firestore/cloud_firestore.dart';

// class DatabaseService {
//   final String uid;
//   DatabaseService({this.uid});

// // collection refference

//   final CollectionReference profileCollection =
//       FirebaseFirestore.instance.collection('profiles');

// // doc below
// // FirebaseFirestore firestore = FirebaseFirestore.instance;
//   // CollectionReference users = FirebaseFirestore.instance.collection('users');

//   Future updateUserData(
//       String name, String address, String city, String postalCode) async {
//     return await profileCollection.doc(uid).set({
//       'name': name,
//       'address': address,
//       'city': city,
//       'postalCode': postalCode,
//     });
//   }
// }
