typedef JsonMap = Map<String, dynamic>;

mixin JsonConvertible<T> {
  /// Converts [JsonMap] to [T]
  T fromJson(JsonMap json);

  /// Converts [T] to [JsonMap]
  JsonMap toJson();
}
