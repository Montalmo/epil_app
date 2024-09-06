import '../../messages/domain/app_message.dart';

class AppUser {
  final String uid;
  final String firstName;
  final String secondName;
  final String pathAvatar;
  final String about;
  final String email;
  final String phoneNumber;
  final String pathInstagram;
  final String pathFacebook;
  final String idTelegram;
  final String idViber;
  final String iudWallet;
  final String uidCallendar;

  AppUser({
    required this.uid,
    required this.firstName,
    required this.secondName,
    required this.pathAvatar,
    required this.about,
    required this.phoneNumber,
    required this.email,
    required this.pathInstagram,
    required this.pathFacebook,
    required this.idTelegram,
    required this.idViber,
    required this.iudWallet,
    required this.uidCallendar,
  });
}

class Owner extends AppUser {
  final String location;
  final String sevrive;
  final List<Clients> clients;
  final List<AppMessage> messages;

  Owner({
    required super.uid,
    required super.firstName,
    required super.secondName,
    required super.pathAvatar,
    required super.about,
    required super.phoneNumber,
    required super.email,
    required super.pathInstagram,
    required super.pathFacebook,
    required super.idTelegram,
    required super.idViber,
    required super.iudWallet,
    required super.uidCallendar,
    required this.location,
    required this.sevrive,
    required this.clients,
    required this.messages,
  });
}

class Clients extends AppUser {
  Clients({
    required super.uid,
    required super.firstName,
    required super.secondName,
    required super.pathAvatar,
    required super.about,
    required super.phoneNumber,
    required super.email,
    required super.pathInstagram,
    required super.pathFacebook,
    required super.idTelegram,
    required super.idViber,
    required super.iudWallet,
    required super.uidCallendar,
  });
}
