class APIResponseModel<Type> {
  Type? data;
  bool error;
  String? message;

  APIResponseModel({
    this.data,
    this.error = true,
    this.message,
  });
}
