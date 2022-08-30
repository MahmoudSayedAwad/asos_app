
enum GenderType { MEN, WOMEN }

const String MEN = "Men";
const String WOMEN = "Women";


extension GenderTypeExtension on GenderType {
  String getValue() {
    switch (this) {
      case GenderType.MEN:
        return MEN;
      case GenderType.WOMEN:
        return WOMEN;
    }
  }
}
