enum RequestStatus { init, loading, fail, success }

extension RequestStatusExt on RequestStatus {
  bool _isLoading() => this == RequestStatus.loading;

  bool _isSuccess() => this == RequestStatus.success;

  bool _isFailed() => this == RequestStatus.fail;

  bool get isLoading => _isLoading();

  bool get isSuccess => _isSuccess();

  bool get isFailed => _isFailed();
}
