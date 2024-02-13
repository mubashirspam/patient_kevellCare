import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kevell_care/core/helper/date.dart';
import 'package:kevell_care/core/them/custom_theme_extension.dart';

import '../../../../core/helper/date_formater.dart';
import '../../../../core/helper/date_validater.dart';
import '../../../../core/helper/toast.dart';
import '../../../../core/helper/validater.dart';
import '../../../widgets/buttons/text_button_widget.dart';
import '../../../widgets/calender/calnder.dart';
import '../../../widgets/input_field/input_field_widget.dart';
import '../bloc/profile_bloc.dart';
enum EditProfileSection {
  BasicDetails,
  Address,
  // Add more sections as needed
}
class EditMyProfile extends StatefulWidget {
  final String? name;
  final String? mobile;
  final String? city;
  final String? state;
  final String? street;
  final String? zipcode;
  final String? height;
  final String? weight;
  final String? email;
  final String? gender;
  final String? district;
  final String? dob;
  final String? section;

  const EditMyProfile({
    super.key,
    this.street,
    this.height,
    this.weight,
    this.email,
    this.gender,
    this.district,
    this.zipcode,
    this.city,
    this.state,
    this.dob,
    this.mobile,
    this.name,
     this. section,
  });
  
  

  @override
  State<EditMyProfile> createState() => _EditMyProfileState();
}
class _EditMyProfileState extends State<EditMyProfile> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late TextEditingController nameController;
  late TextEditingController mobileController;
  late TextEditingController dobController;
  late TextEditingController streetController;
  late TextEditingController cityController;
  late TextEditingController zipcodeController;
  late TextEditingController heightController;
  late TextEditingController weightController;
  late TextEditingController emailIdController;
  late TextEditingController genderController;
  late TextEditingController stateController;

  @override
  void initState() {
    nameController = TextEditingController(text: widget.name);
    dobController = TextEditingController(
        text: dateFormatToddmmyyyy(DateTime.parse(widget.dob.toString())));
    mobileController = TextEditingController(text: widget.mobile);
    stateController = TextEditingController(text: widget.state);
    streetController = TextEditingController(text: widget.street);
    cityController = TextEditingController(text: widget.city);
    zipcodeController = TextEditingController(text: widget.zipcode);
    heightController = TextEditingController(text: widget.height);
    weightController = TextEditingController(text: widget.weight);
    emailIdController = TextEditingController(text: widget.email);
    genderController = TextEditingController(text: widget.gender);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: context.theme.backround),
        child: BlocConsumer<ProfileBloc, ProfileState>(
          listener: (context, state) {
            if (!state.isUpdateLoading && state.isError) {
              Toast.showToast(
                  context: context, message: "Error occurred, try again later");
            }
            if (!state.isUpdateLoading && state.hasData) {
              Toast.showToast(
                  context: context, message: "Profile updated successfully");

              Navigator.of(context).pop();
            }
          },
          builder: (context, state) {
            return Form(
              key: _formKey,
              child: SingleChildScrollView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Edit Profile",
                        style: Theme.of(context).textTheme.headlineLarge!),
                    const SizedBox(
                      height: 25,
                    ),
                    if (widget.section == EditProfileSection.BasicDetails)
                      buildBasicDetailsFields(context)
                    else if (widget.section == EditProfileSection.Address)
                      buildAddressFields(context),
                    const SizedBox(height: 20),
                    SizedBox(
                      child: Row(
                        children: [
                          Expanded(
                            child: TextButtonWidget(
                              fgColor: context.theme.primary,
                              bgColor: context.theme.secondary,
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              name: "Cancel",
                              isLoading: false,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: TextButtonWidget(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  context.read<ProfileBloc>().add(
                                    ProfileEvent.updateProfile(
                                      dob: dateFormatToYYYYMMdd(
                                          state.date ?? DateTime.now()),
                                      mobileNumber:
                                          mobileController.value.text,
                                      street: streetController.value.text,
                                      weight: weightController.value.text,
                                      name: nameController.value.text,
                                      city: cityController.value.text,
                                      height: heightController.value.text,
                                      state: stateController.value.text,
                                      email: emailIdController.value.text,
                                      gender: genderController.value.text,
                                      district:"",
                                      zipcode: zipcodeController.value.text,
                                    ),
                                  );
                                }
                              },
                              name: "Update",
                              isLoading: state.isUpdateLoading,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget buildBasicDetailsFields(BuildContext context) {
    return Column(
      children: [
        Text("Full Name", style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 10),
        TextFieldWidget(
          textEditingController: nameController,
          hintText: "Name",
          keyboardType: TextInputType.name,
          validate: (name) {
            if (name == null || name.isEmpty) {
              return "Please enter a name";
            }
            return null;
          },
        ),
        const SizedBox(height: 20),
        Text("Mobile", style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 10),
        TextFieldWidget(
          textEditingController: mobileController,
          hintText: "+91",
          keyboardType: TextInputType.number,
          validate: (number) {
            if (number == null || number.isEmpty) {
              return "Please enter a mobile number";
            } else if (!regexMobile.hasMatch(number)) {
              return "Please enter a valid mobile number";
            }
            return null;
          },
        ),
        const SizedBox(
          height: 20,
        ),
        Text("Gender", style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 10),
        TextFieldWidget(
          textEditingController: genderController,
          hintText: "Gender",
          keyboardType: TextInputType.text,
          validate: (gender) {
            if (gender == null || gender.isEmpty) {
              return "Please enter your gender";
            }
            return null;
          },
        ),
        const SizedBox(
          height: 20,
        ),
        Text("Date of Birth", style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 10),
        InkWell(
          onTap: () async {
            final date = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1900),
                lastDate: DateTime.now());

            if (date != null) {
              dobController.text =
                  dateFormatToddmmyyyy(date);
            }
          },
          child: TextFieldWidget(
            textEditingController: dobController,
            hintText: "Date of Birth",
            keyboardType: TextInputType.text,
            // enabled: false,
            validate: (dob) {
              if (dob == null || dob.isEmpty) {
                return "Please enter your date of birth";
              }
              return null;
            },
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text("Email", style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 10),
        TextFieldWidget(
          textEditingController: emailIdController,
          hintText: "Email",
          keyboardType: TextInputType.emailAddress,
          validate: (email) {
            if (email == null || email.isEmpty) {
              return "Please enter an email";
            } else if (!regex.hasMatch(email)) {
              return "Please enter a valid email";
            }
            return null;
          },
        ),
      ],
    );
  }

  Widget buildAddressFields(BuildContext context) {
    return Column(
      children: [
        Text("Street", style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 10),
        TextFieldWidget(
          textEditingController: streetController,
          hintText: "Street",
          keyboardType: TextInputType.streetAddress,
          validate: (street) {
            if (street == null || street.isEmpty) {
              return "Please enter a street";
            }
            return null;
          },
        ),
        const SizedBox(height: 20),
        Text("City", style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 10),
        TextFieldWidget(
          textEditingController: cityController,
          hintText: "City",
          keyboardType: TextInputType.text,
          validate: (city) {
            if (city == null || city.isEmpty) {
              return "Please enter a city";
            }
            return null;
          },
        ),
        const SizedBox(height: 20),
        Text("State", style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 10),
        TextFieldWidget(
          textEditingController: stateController,
          hintText: "State",
          keyboardType: TextInputType.text,
          validate: (state) {
            if (state == null || state.isEmpty) {
              return "Please enter a state";
            }
            return null;
          },
        ),
        const SizedBox(
          height: 20,
        ),
        Text("Zip Code", style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 10),
        TextFieldWidget(
          textEditingController: zipcodeController,
          hintText: "Zip Code",
          keyboardType: TextInputType.number,
          validate: (zipcode) {
            if (zipcode == null || zipcode.isEmpty) {
              return "Please enter a zip code";
            }
            return null;
          },
        ),
      ],
    );
  }
}
