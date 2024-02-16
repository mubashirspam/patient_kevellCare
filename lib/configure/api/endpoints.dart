import '../value/constant.dart';

class V2 {
  // AUTH & USER
  static const register = "$baseUrl/$service/register";


  static const login = "$baseUrl/$service/login";
  static const fetchProfile = "$baseUrl/$service/users/details";

  // appoinment

  static const availableDoctor = "$baseUrl/$service/doctor-schedule";
  static const bookAppointment = "$baseUrl/$service2/book-appointment";
  static const appointmets = "$baseUrl/$service2/past-appointments";

    static const chat = "$baseUrl/videochat/chat/api/getallusers";

  
}

class ApiEndPoints {
  static const login =
      "https://768e-183-82-33-226.ngrok-free.app/v2/patients/login";

  static const register =
      "https://768e-183-82-33-226.ngrok-free.app/v2/patients/register";

  static const verifyotp = "$baseUrl/v2/patients/verifyphoneotp";

  static const forgot =
      "https://768e-183-82-33-226.ngrok-free.app/v2/patients/forgot-password";

  static const changepass = "$baseUrl/v2/patients/change-password";

  static const getprofile =
      // "$baseUrl/v2/patients/patientinfoby";
      "https://768e-183-82-33-226.ngrok-free.app/v2/patients/patientinfoby";

  static const updateProfile = "$baseUrl/v2/patients/profile";

  static const getHomeAvailableDoctor =
      "https://768e-183-82-33-226.ngrok-free.app/v2/patients/alldoctorSchedule";

// appoinment..

  static const createAppoinments = "$baseUrl/appointment/api/BookAppointment";

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
  static const String getrating =
      "https://kevelldigital.com/register/api/getrating?patient_id=1003";
  static const String editRating =
      "https://kevelldigital.com/register/api/edit/review";
}
