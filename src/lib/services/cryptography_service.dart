class CryptographyService {
  Future<String> encode() async {
    await Future.delayed(Duration(seconds: 2));
    return 'Endoded';
  }

  Future<String> decode() async {
    await Future.delayed(Duration(seconds: 2));
    return 'Decoded';
  }
}
