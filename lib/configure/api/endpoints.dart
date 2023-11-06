import '../value/constant.dart';

class ApiEndPoints {
  static const login = "$baseUrl/register/api/patientLogin";

  static const register = "$baseUrl/register/api/patientRegister";

  static const otp = "$baseUrl/register/api/VerifyPhoneOtp";

  static const getprofile = "$baseUrl/register/api/GetPatientinfoBy";

  static const updateProfile = "$baseUrl/register/api/patientprofileUpdate";

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
      "https://kevelldigital.com/videochat?type=videocall";

  static const chatWebsocketUrl =
      "https://kevelldigital.com/videochat?type=chat";

  static const String fetchChatProfile =
      "https://kevelldigital.com/videochat/chat/api/getallusers";
}
