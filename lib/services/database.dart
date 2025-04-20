import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:monumentbookingapp/pages/booking.dart';

class DatabaseMethods {
  Future addUserDetail(Map<String, dynamic> userInfoMap, String id) async {
    return await FirebaseFirestore.instance
        .collection("users")
        .doc(id)
        .set(userInfoMap);
  }

  Future addEvent(Map<String, dynamic> userInfoMap, String id) async {
    return await FirebaseFirestore.instance
        .collection("Event")
        .doc(id)
        .set(userInfoMap);
  }

  Future<Stream<QuerySnapshot>> getallEvents() async {
    return await FirebaseFirestore.instance.collection("Event").snapshots();
  }

  Future addUserBooking(Map<String, dynamic> userInfoMap, String id) async {
    return await FirebaseFirestore.instance
        .collection("users")
        .doc(id)
        .collection("Booking")
        .add(userInfoMap);
  }

  Future addAdminTickets(Map<String, dynamic> userInfoMap) async {
    return await FirebaseFirestore.instance
        .collection("Tickets")
        .add(userInfoMap);
  }

  Future<Stream<QuerySnapshot>> getbookings(String id) async {
    return await FirebaseFirestore.instance
        .collection("users")
        .doc(id)
        .collection("Booking")
        .snapshots();
  }

  Future<Stream<QuerySnapshot>> getEventCategories(String category) async {
    return await FirebaseFirestore.instance
        .collection("Event")
        .where("Category", isEqualTo: category)
        .snapshots();
  }

  Future<Stream<QuerySnapshot>> getTickets() async {
    return await FirebaseFirestore.instance.collection("Tickets").snapshots();
  }
}
