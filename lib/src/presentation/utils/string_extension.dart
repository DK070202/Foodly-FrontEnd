extension StringExtension on String {
  String shrink(int givenLength) {
    return length > givenLength ? substring(0, givenLength) + ".." : this;
  }
}
