

import 'package:mapper/mapper.dart';

@Entity(fullMatch: true)
class CountryInformationModel {
 int id;
 String country;
 String iso2;
 double lat;
 double long;
 String flag;

}