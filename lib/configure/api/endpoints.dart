import '../value/constant.dart';

class ApiEndPoints {
  static const String login = "$baseUrl/patient/api/Login";
  static const String register = "$baseUrl/doctor/api/register";
  static const String getprofile =
      "$baseUrl/doctor/api/getUserdetailsByIdAndEmail";

  static const String updateProfile = "$baseUrl/doctor/api/register";

  static const String homeStatus = "$baseUrl/register/api/doctorcountlist";

  static const String homeWaitingPatient =
      "$baseUrl/register/api/todayWaitingHallPatientsdetails";

  static const String patientHistoryList =
      "$baseUrl/appointment/api/VisitedPatientReportdata";

  static const String getPrescription = "$baseUrl/users/api/medicinedata";
  static const String createPrescription =
      "$baseUrl/users/api/saveAndupdatemedicinedata";
  static const String updatePrescription =
      "$baseUrl/users/api/saveAndupdatemedicinedata";

  static const String getPrescriptionSettings =
      "$baseUrl/users/api/getdprescriptiontable";
}
