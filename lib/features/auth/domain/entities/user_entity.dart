class UserEntity {
  final String id;
  final String username;
  final String email;
  final String? phone;
  final String? profileImage;

  const UserEntity({
    required this.id,
    required this.username,
    required this.email,
    this.phone,
    this.profileImage,
  });
}
