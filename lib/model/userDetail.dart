class UserDetails {
  final String firstName;
  final String lastName;
  final String email;
  final String birthday;
  final String mobile;

  UserDetails({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.birthday,
    required this.mobile,
  });

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'birthday': birthday,
      'mobile': mobile,
    };
  }
}
