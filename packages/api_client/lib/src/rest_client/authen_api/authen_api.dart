import 'package:api_client/src/models/models.dart';
import 'package:api_client/src/services/services_name.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'authen_api.g.dart';

/// [AuthenApiClient] retrofit api client using Dio instance
/// Integrate with authentication
/// Register in Injector as Factory
@injectable
@RestApi()
abstract class AuthenApiClient {
  /// Constructor with Dio param
  @factoryMethod
  factory AuthenApiClient(Dio dio, {String baseUrl}) = _AuthenApiClient;

  static const String _serviceName = ServicesName.authenService;

  /// Sign in with password
  @POST('/$_serviceName/api/v1/sign-in/password')
  Future<Token> signInPassword({
    /// Timezone to get time account blocked
    @Header('Time-Zone') required String timeZone,
    @Field('phoneNumber') required String phoneNumber,
    @Field('password') required String password,
    @Header('tenant') String? tenantId,
  });
}


