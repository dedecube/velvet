enum HttpRequestMethodEnum {
  get('GET'),
  post('POST'),
  put('PUT'),
  delete('DELETE'),
  patch('PATCH'),
  head('HEAD'),
  options('OPTIONS');

  const HttpRequestMethodEnum(this.value);

  final String value;
}
