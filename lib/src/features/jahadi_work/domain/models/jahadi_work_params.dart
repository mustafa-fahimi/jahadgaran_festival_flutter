import 'package:dio/dio.dart';

class JahadiWorkParams {
  JahadiWorkParams({
    required this.groupName,
    required this.groupCode,
    required this.supervisorFname,
    required this.supervisorLname,
    required this.supervisorPhone,
    required this.attachmentType,
    required this.file,
  });

  final String groupName;

  final int groupCode;

  final String supervisorFname;

  final String supervisorLname;

  final String supervisorPhone;

  final String attachmentType;

  final MultipartFile file;
}
