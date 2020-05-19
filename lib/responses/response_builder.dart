import 'package:encomendei/enums/app_enums.dart';
import 'package:encomendei/responses/response_default.dart';

class ResponseBuilder { 
  static DefaultResponse failed<T>({T object, String message}) {
    return DefaultResponse<T> (
      object: object, message: message, status: ResponseStatus.failed
    );
  } 

  static DefaultResponse success<T>({T object, String message}) { 
    return DefaultResponse<T>(
      object: object, message: message, status: ResponseStatus.success
    );
  }
}