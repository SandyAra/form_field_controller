
class AppModel {
  late Function modelDeserializer;
}

class BaseObject {

  toDatabaseMap() {

  }

  Future fromMap(Map<String, dynamic> data) async {

  }

  static Future<T> createFromMap<T extends BaseObject>(Map<String, dynamic> data) async {
    return await AppModel().modelDeserializer<T>().fromMap(data);
  }

}