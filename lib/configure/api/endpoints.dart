import '../value/constant.dart';

class ApiEndPoints { 


  
  static const String login = "$baseUrl/register/api/patientLogin";

  static const String register = "$baseUrl/register/api/patientRegister";

  static const String otp = "$baseUrl/register/api/VerifyPhoneOtp";

  static const String getprofile = "$baseUrl/register/api/GetPatientinfoBy";

  static const String updateProfile =
      "$baseUrl/register/api/patientprofileUpdate"; 
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

  static const String getHomeAvailableDoctor =
      "$baseUrl/doctor/api/getalldoctorSchedule";

// appoinment...

  static const String createAppoinments =
      "$baseUrl/appointment/api/BookAppointment";

  static const String fetchAppoinment =
      "$baseUrl/appointment/api/upcomingpasthistorypatient";


     static const String updateAppoinment =
      "$baseUrl/appointment/api/updateAppoinment";

      static const String deleteAppoinments =
      "$baseUrl/appointment/api/deleteAppoinment";

      

  static const String patientreportgeneralinfo =
      "$baseUrl/doctor/api/patientreportgeneralinfo";

  static const String patientreport =
      "$baseUrl/doctor/api/ViewPatientReport_new";

        // static const String endAppoinment = "$baseUrl/doctor/api/Finishtheappoinment";



  static const websocketUrl =
      "https://513f-2409-4072-6e19-17b8-195d-91e2-3293-a235.ngrok-free.app";
}
