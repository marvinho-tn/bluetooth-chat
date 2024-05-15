class BluetoothService {
  Future<String> openConnection() async {
    await Future.delayed(Duration(seconds: 2));
    return 'Conexao aberta';
  }

  Future<String> findContacts() async {
    await Future.delayed(Duration(seconds: 2));
    return 'Contato encontrado';
  }

  Future<String> closeConnection() async {
    await Future.delayed(Duration(seconds: 2));
    return 'Conexao fechada';
  }
}
