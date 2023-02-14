
// Http status codes
//--------------------------------------------------
// region Constant Strings
    final String HTTP_OK = 'OK';
    final String HTTP_CREATED = 'Created';
    final String HTTP_ACCEPTED = 'Accepted';
    final String HTTP_NON_AUTHORITATIVE_INFORMATION = 'Non Authoritative Information';
    final String HTTP_NO_CONTENT = 'No Content';
    final String HTTP_RESET_CONTENT = 'Reset Content';
    final String HTTP_PARTIALCONTENT = 'PartialContent';
    final String HTTP_MULTI_STATUS = 'Multi Status';
    final String HTTP_ALREADY_REPORTED = 'Already Reported';
    final String HTTP_IM_USED = 'IM Used';

    final String HTTP_BAD_REQUEST = 'Bad Request';
    final String HTTP_UNAUTHORIZED = 'Unauthorized';
    final String HTTP_PAYMENT_REQUIRED = 'Payment Required';
    final String HTTP_FORBIDDEN = 'Forbidden';
    final String HTTP_NOT_FOUND = 'Not Found';
    final String HTTP_METHOD_NOT_ALLOWED = 'Method Not Allowed';
    final String HTTP_NOT_ACCEPTABLE = 'Not Acceptable';
    final String HTTP_PROXY_AUTHENTICATION_REQUIRED = 'Proxy Authentication Required';
    final String HTTP_REQUEST_TIMEOUT = 'Request Timeout';
    final String HTTP_CONFLICT = 'Conflict';
    final String HTTP_GONE = 'Gone';
    final String HTTP_LENGTH_REQUIRED = 'Length Required';
    final String HTTP_PRECONDITION_FAILED = 'Precondition Failed';
    final String HTTP_PAYLOAD_TOO_LARGE = 'Payload Too Large';
    final String HTTP_URI_TOO_LONG = 'URI Too Long';
    final String HTTP_UNSUPPORTED_MEDIA_TYPE = 'Unsupported Media Type';
    final String HTTP_RANGE_NOT_SATISFIABLE = 'Range Not Satisfiable';
    final String HTTP_EXPECTATION_FAILED = 'Expectation Failed';
    final String HTTP_I_AM_A_TEAPOT = 'I am a teapot';
    final String HTTP_MISDIRECTED_REQUEST = 'Misdirected Request';
    final String HTTP_UNPROCESSABLE_ENTITY = 'Unprocessable Entity';
    final String HTTP_LOCKED = 'Locked';
    final String HTTP_FAILED_DEPENDENCY = 'Failed Dependency';
    final String HTTP_TOO_EARLY = 'Too Early';
    final String HTTP_UPGRADE_REQUIRED = 'Upgrade Required';
    final String HTTP_PRECONDITION_REQUIRED = 'Precondition Required';
    final String HTTP_TOO_MANY_REQUESTS = 'Too Many Requests';
    final String HTTP_REQUEST_HEADER_TOO_LARGE = 'Request Header Too Large';
    final String HTTP_UNAVAILABLE_FOR_LEGAL_REASONS = 'Unavailable For Legal Reasons';

    final String HTTP_INTERNAL_SERVER_ERROR = 'Internal Server Error';
    final String HTTP_NOT_IMPLEMENTED = 'Not Implemented';
    final String HTTP_BAD_GATEWAY = 'Bad Gateway';
    final String HTTP_SERVICE_UNAVAILABLE = 'Service Unavailable';
    final String HTTP_GATEWAY_TIMEOUT = 'Gateway Timeout';
    final String HTTP_HTTP_VERSION_NOT_SUPPORTED = 'HTTP Version Not Supported';
    final String HTTP_VARIANT_ALSO_NEGOTIATES = 'Variant Also Negotiates';
    final String HTTP_INSUFFICIENT_STORAGE = 'Insufficient Storage';
    final String HTTP_LOOP_DETECTED = 'Loop Detected';
    final String HTTP_NOT_EXTENDED = 'Not Extended';
    final String HTTP_NETWORK_AUTHENTICATION_REQUIRED = 'Network Authentication Required';
// endregion Constant Strings
//--------------------------------------------------
// region Integer
    final int HTTP_200 = 200;
    final int HTTP_201 = 201;
    final int HTTP_202 = 202;
    final int HTTP_203 = 203;
    final int HTTP_204 = 204;
    final int HTTP_205 = 205;
    final int HTTP_206 = 206;
    final int HTTP_207 = 207;
    final int HTTP_208 = 208;
    final int HTTP_226 = 226;

    final int HTTP_400 = 400;
    final int HTTP_401 = 401;
    final int HTTP_402 = 402;
    final int HTTP_403 = 403;
    final int HTTP_404 = 404;
    final int HTTP_405 = 405;
    final int HTTP_406 = 406;
    final int HTTP_407 = 407;
    final int HTTP_408 = 408;
    final int HTTP_409 = 409;
    final int HTTP_410 = 410;
    final int HTTP_411 = 411;
    final int HTTP_412 = 412;
    final int HTTP_413 = 413;
    final int HTTP_414 = 414;
    final int HTTP_415 = 415;
    final int HTTP_416 = 416;
    final int HTTP_417 = 417;
    final int HTTP_418 = 418;
    final int HTTP_421 = 421;
    final int HTTP_422 = 422;
    final int HTTP_423 = 423;
    final int HTTP_424 = 424;
    final int HTTP_425 = 425;
    final int HTTP_426 = 426;
    final int HTTP_428 = 428;
    final int HTTP_429 = 429;
    final int HTTP_431 = 431;
    final int HTTP_451 = 451;

    final int HTTP_500 = 500;
    final int HTTP_501 = 501;
    final int HTTP_502 = 502;
    final int HTTP_503 = 503;
    final int HTTP_504 = 504;
    final int HTTP_505 = 505;
    final int HTTP_506 = 506;
    final int HTTP_507 = 507;
    final int HTTP_508 = 508;
    final int HTTP_510 = 510;
    final int HTTP_511 = 511;
// endregion Integer
//--------------------------------------------------
//region Maps
    final Map<String, int> HTTP_STATUS_CODE = {
        HTTP_OK : HTTP_200,
        HTTP_CREATED : HTTP_201,
        HTTP_ACCEPTED : HTTP_202,
        HTTP_NON_AUTHORITATIVE_INFORMATION : HTTP_203,
        HTTP_NO_CONTENT : HTTP_204,
        HTTP_RESET_CONTENT : HTTP_205,
        HTTP_PARTIALCONTENT : HTTP_206,
        HTTP_MULTI_STATUS : HTTP_207,
        HTTP_ALREADY_REPORTED : HTTP_208,
        HTTP_IM_USED : HTTP_226,

        HTTP_BAD_REQUEST : HTTP_400,
        HTTP_UNAUTHORIZED : HTTP_401,
        HTTP_PAYMENT_REQUIRED : HTTP_402,
        HTTP_FORBIDDEN : HTTP_403,
        HTTP_NOT_FOUND : HTTP_404,
        HTTP_METHOD_NOT_ALLOWED : HTTP_405,
        HTTP_NOT_ACCEPTABLE : HTTP_406,
        HTTP_PROXY_AUTHENTICATION_REQUIRED : HTTP_407,
        HTTP_REQUEST_TIMEOUT : HTTP_408,
        HTTP_CONFLICT : HTTP_409,
        HTTP_GONE : HTTP_410,
        HTTP_LENGTH_REQUIRED : HTTP_411,
        HTTP_PRECONDITION_FAILED : HTTP_412,
        HTTP_PAYLOAD_TOO_LARGE : HTTP_413,
        HTTP_URI_TOO_LONG : HTTP_414,
        HTTP_UNSUPPORTED_MEDIA_TYPE : HTTP_415,
        HTTP_RANGE_NOT_SATISFIABLE : HTTP_416,
        HTTP_EXPECTATION_FAILED : HTTP_417,
        HTTP_I_AM_A_TEAPOT : HTTP_418,
        HTTP_MISDIRECTED_REQUEST : HTTP_421,
        HTTP_UNPROCESSABLE_ENTITY : HTTP_422,
        HTTP_LOCKED : HTTP_423,
        HTTP_FAILED_DEPENDENCY : HTTP_424,
        HTTP_TOO_EARLY : HTTP_425,
        HTTP_UPGRADE_REQUIRED : HTTP_426,
        HTTP_PRECONDITION_REQUIRED : HTTP_428,
        HTTP_TOO_MANY_REQUESTS : HTTP_429,
        HTTP_REQUEST_HEADER_TOO_LARGE : HTTP_431,
        HTTP_UNAVAILABLE_FOR_LEGAL_REASONS : HTTP_451,

        HTTP_INTERNAL_SERVER_ERROR : HTTP_500,
        HTTP_NOT_IMPLEMENTED : HTTP_501,
        HTTP_BAD_GATEWAY : HTTP_502,
        HTTP_SERVICE_UNAVAILABLE : HTTP_503,
        HTTP_GATEWAY_TIMEOUT : HTTP_504,
        HTTP_HTTP_VERSION_NOT_SUPPORTED : HTTP_505,
        HTTP_VARIANT_ALSO_NEGOTIATES : HTTP_506,
        HTTP_INSUFFICIENT_STORAGE : HTTP_507,
        HTTP_LOOP_DETECTED : HTTP_508,
        HTTP_NOT_EXTENDED : HTTP_510,
        HTTP_NETWORK_AUTHENTICATION_REQUIRED : HTTP_511,
      };

    final Map<int, String> HTTP_STATUS_KEY = {
        HTTP_200 : HTTP_OK,
        HTTP_201 : HTTP_CREATED,
        HTTP_202 : HTTP_ACCEPTED,
        HTTP_203 : HTTP_NON_AUTHORITATIVE_INFORMATION,
        HTTP_204 : HTTP_NO_CONTENT,
        HTTP_205 : HTTP_RESET_CONTENT,
        HTTP_206 : HTTP_PARTIALCONTENT,
        HTTP_207 : HTTP_MULTI_STATUS,
        HTTP_208 : HTTP_ALREADY_REPORTED,
        HTTP_226 : HTTP_IM_USED,

        HTTP_400 : HTTP_BAD_REQUEST,
        HTTP_401 : HTTP_UNAUTHORIZED,
        HTTP_402 : HTTP_PAYMENT_REQUIRED,
        HTTP_403 : HTTP_FORBIDDEN,
        HTTP_404 : HTTP_NOT_FOUND,
        HTTP_405 : HTTP_METHOD_NOT_ALLOWED,
        HTTP_406 : HTTP_NOT_ACCEPTABLE,
        HTTP_407 : HTTP_PROXY_AUTHENTICATION_REQUIRED,
        HTTP_408 : HTTP_REQUEST_TIMEOUT,
        HTTP_409 : HTTP_CONFLICT,
        HTTP_410 : HTTP_GONE,
        HTTP_411 : HTTP_LENGTH_REQUIRED,
        HTTP_412 : HTTP_PRECONDITION_FAILED,
        HTTP_413 : HTTP_PAYLOAD_TOO_LARGE,
        HTTP_414 : HTTP_URI_TOO_LONG,
        HTTP_415 : HTTP_UNSUPPORTED_MEDIA_TYPE,
        HTTP_416 : HTTP_RANGE_NOT_SATISFIABLE,
        HTTP_417 : HTTP_EXPECTATION_FAILED,
        HTTP_418 : HTTP_I_AM_A_TEAPOT,
        HTTP_421 : HTTP_MISDIRECTED_REQUEST,
        HTTP_422 : HTTP_UNPROCESSABLE_ENTITY,
        HTTP_423 : HTTP_LOCKED,
        HTTP_424 : HTTP_FAILED_DEPENDENCY,
        HTTP_425 : HTTP_TOO_EARLY,
        HTTP_426 : HTTP_UPGRADE_REQUIRED,
        HTTP_428 : HTTP_PRECONDITION_REQUIRED,
        HTTP_429 : HTTP_TOO_MANY_REQUESTS,
        HTTP_431 : HTTP_REQUEST_HEADER_TOO_LARGE,
        HTTP_451 : HTTP_UNAVAILABLE_FOR_LEGAL_REASONS,

        HTTP_500 : HTTP_INTERNAL_SERVER_ERROR,
        HTTP_501 : HTTP_NOT_IMPLEMENTED,
        HTTP_502 : HTTP_BAD_GATEWAY,
        HTTP_503 : HTTP_SERVICE_UNAVAILABLE,
        HTTP_504 : HTTP_GATEWAY_TIMEOUT,
        HTTP_505 : HTTP_HTTP_VERSION_NOT_SUPPORTED,
        HTTP_506 : HTTP_VARIANT_ALSO_NEGOTIATES,
        HTTP_507 : HTTP_INSUFFICIENT_STORAGE,
        HTTP_508 : HTTP_LOOP_DETECTED,
        HTTP_510 : HTTP_NOT_EXTENDED,
        HTTP_511 : HTTP_NETWORK_AUTHENTICATION_REQUIRED,
    };
/*  final Map HTTP_SUCCESS = {
  };

  final Map HTTP_CLIENT_ERROR = {
  };

  final Map HTTP_SERVER_ERROR = {
  };*/
//endregion Maps
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------
//--------------------------------------------------