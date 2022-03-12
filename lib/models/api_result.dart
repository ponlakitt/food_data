class ApiResult{
  final String status;
  final String? message;
  final List<dynamic> data;
  ApiResult({
    required this.status,
    required this.message,
    required this.data,
  });
}