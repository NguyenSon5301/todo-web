
bool isNotEmpty(String? s) {
  return s != null && s.trim().isNotEmpty;
}

bool isEmpty(String? s) {
  return !isNotEmpty(s);
}
