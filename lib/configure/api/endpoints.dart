import '../value/constant.dart';

class ApiEndPoints {
  static const login = "$baseUrl/register/api/patientLogin";

  static const register = "$baseUrl/patients/api/register";

  static const otp = "$baseUrl/register/api/VerifyPhoneOtp";

  static const getprofile = "$baseUrl/patients/api/patientinfoby";

  static const updateProfile = "$baseUrl/patients/api/profile";

  static const getHomeAvailableDoctor =
      "$baseUrl/doctor/api/getalldoctorSchedule";

// appoinment...

  static const createAppoinments = "$baseUrl/appointment/api/BookAppointment";

  static const fetchAppoinment =
      "$baseUrl/appointment/api/upcomingpasthistorypatient";

  static const updateAppoinment = "$baseUrl/appointment/api/updateAppoinment";

  static const deleteAppoinments = "$baseUrl/appointment/api/deleteAppoinment";

  static const patientreportgeneralinfo =
      "$baseUrl/patient/api/patientreportgeneralinfo";

  static const patientreport = "$baseUrl/patient/api/ViewPatientReport_new";
  static const websocketUrl =
      "https://kevelldigital.com/videochat?type=videocall&callerId=";

  static const chatWebsocketUrl =
      "https://kevelldigital.com/videochat?type=chat";

  static const String fetchChatProfile =
      "https://kevelldigital.com/videochat/chat/api/getallusers";

      //rating
      
  static const String createRating =
      "https://kevelldigital.com/register/api/create/review";
       static const String getrating ="https://kevelldigital.com/register/api/getrating?patient_id=1003";
              static const String editRating ="https://kevelldigital.com/register/api/edit/review";

}
