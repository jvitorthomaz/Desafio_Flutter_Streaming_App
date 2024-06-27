class UserModel {
  final int id;
  final String? firebaseUUID;
  final String? profileFileName;
  final String name;
  final String email;
  final String? avatar;
  //  "firebase_UUID":"",
  // "profile_file_name":"",

  UserModel({
    required this.id,
    required this.firebaseUUID,
    required this.profileFileName,
    required this.name,
    required this.email,
    this.avatar,
  });

    factory UserModel.fromMap(Map<String, dynamic> json) {
    // Validação do json que esta vindo do backend
    return switch (json) {
      {
        'id': final int id,
        // 'firebase_UUID': final String firebaseUUID,
        // 'profile_file_name': final String profileFileName,
        'name': final String name,
        'email': final String email,

      } =>
        UserModel(
          id: id,
          name: name,
          email: email,
          firebaseUUID: json['firebase_UUID'],
          profileFileName: json['profile_file_name'],
          avatar: json['avatar'],
          
        ),
      _ => throw ArgumentError('Invalid Json'),
    };
  }


}