class ErrorModel {
  final String message;
  final int code;
  final bool sucess;
  ErrorModel({required this.message, required this.code, required this.sucess});

  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(message: json['message'], code: json['code'], sucess: json['success']);
  }
}