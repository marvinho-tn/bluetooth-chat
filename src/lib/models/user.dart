import '../enums/document_type.dart';
import 'gps_location.dart';

class User {
  String name;
  String document;
  String fullName;
  DateTime birthDate;
  String phoneNumber;
  String email;
  String alternativePhoneNumber;
  String alternativeEmail;
  String profilePhotoLink;
  String description;
  String messageStatus;
  DocumentType documentType;
  GPSLocation gpsLocation;

  User({required this.name, required this.document, required this.fullName, required this.birthDate, required this.phoneNumber, required this.email, required this.alternativePhoneNumber, required this.alternativeEmail, required this.profilePhotoLink, required this.description, required this.messageStatus, required this.documentType, required this.gpsLocation});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      document: json['document'],
      fullName: json['fullName'],
      birthDate: json['birthDate'],
      phoneNumber: json['phoneNumber'],
      email: json['email'],
      alternativePhoneNumber: json['alternativePhoneNumber'],
      alternativeEmail: json['alternativeEmail'],
      profilePhotoLink: json['profilePhotoLink'],
      description: json['description'],
      messageStatus: json['messageStatus'],
      documentType: json['documentType'],
      gpsLocation: json['gpsLocation'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'document': document,
      'fullName': fullName,
      'birthDate': birthDate,
      'phoneNumber': phoneNumber,
      'email': email,
      'alternativePhoneNumber': alternativePhoneNumber,
      'alternativeEmail': alternativeEmail,
      'profilePhotoLink': profilePhotoLink,
      'description': description,
      'messageStatus': messageStatus,
      'documentType': documentType,
      'gpsLocation': gpsLocation,      
    };
  }
}
