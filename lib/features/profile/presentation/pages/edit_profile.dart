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

enum EditProfileSection { BasicDetails, Address, otherdetails }

class EditMyProfile extends StatefulWidget {
  final String? name;
  final String? mobile_No;
  final String? city;
  final String? state;
  final String? street;
  final String? zipCode;
  final String? height;
  final String? weight;
  final String? email;
  final String? gender;
  final String? district;
  final String? dob;
  final EditProfileSection? section;
  final String? kit_id;
  final String? device_id;
  final String? diseases;
  final String? bloodgroup;

  const EditMyProfile({
    super.key,
    this.street,
    this.height,
    this.weight,
    this.email,
    this.gender,
    this.district,
    this.zipCode,
    this.city,
    this.state,
    this.dob,
    this.mobile_No,
    this.name,
    this.section,
    this.kit_id,
    this.bloodgroup,
    this.device_id,
    this.diseases,
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
  late TextEditingController districtController;

  @override
  void initState() {
    nameController = TextEditingController(text: widget.name);
    dobController = TextEditingController(
        text: dateFormatToddmmyyyy(DateTime.parse(widget.dob.toString())));
    mobileController = TextEditingController(text: widget.mobile_No);
    stateController = TextEditingController(text: widget.state);
    streetController = TextEditingController(text: widget.street);
    cityController = TextEditingController(text: widget.city);
    zipcodeController = TextEditingController(text: widget.zipCode);
    heightController = TextEditingController(text: widget.height);
    weightController = TextEditingController(text: widget.weight);
    emailIdController = TextEditingController(text: widget.email);
    genderController = TextEditingController(text: widget.gender);
    districtController = TextEditingController(text: widget.district);

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
                    Text(
                        "Edit Profile - ${widget.section.toString().split('.').last}",
                        style: Theme.of(context).textTheme.headlineLarge!),
                    const SizedBox(
                      height: 25,
                    ),
                    if (widget.section == EditProfileSection.BasicDetails)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Full Name",
                              style: Theme.of(context).textTheme.titleLarge),
                          const SizedBox(height: 10),
                          TextFieldWidget(
                            textEditingController: nameController,
                            hintText: "Name",
                            keyboardType: TextInputType.name,
                            validate: (name) {
                              if (name == null || name.isEmpty) {
                                return "Please enter an Name";
                              }
                              return null; // Return null if validation succeeds
                            },
                          ),
                          const SizedBox(height: 20),
                          Text("Mobile",
                              style: Theme.of(context).textTheme.titleLarge),
                          const SizedBox(height: 10),
                          TextFieldWidget(
                            textEditingController: mobileController,
                            hintText: "+91",
                            keyboardType: TextInputType.number,
                            validate: (number) {
                              if (number == null || number.isEmpty) {
                                return "Please enter an mobile number";
                              } else if (!regexMobile.hasMatch(number)) {
                                return "Please enter a valid mobile number";
                              }
                              return null; // Return null if validation succeeds
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text("Gender",
                              style: Theme.of(context).textTheme.titleLarge),
                          const SizedBox(height: 10),
                          TextFieldWidget(
                            textEditingController: genderController,
                            hintText: "Gender",
                            keyboardType: TextInputType.name,
                            validate: (name) {
                              if (name == null || name.isEmpty) {
                                return "Please enter an gender";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 20),
                          TextFieldWidget(
                            hintText: "12/12/2023",
                            inputFormatters: [DateInputFormatter()],
                            validate: DateValidator.validateDate,
                            keyboardType: TextInputType.none,
                            textEditingController: dobController,
                            suffixIcon: GestureDetector(
                              onTap: () => showDialog(
                                context: context,
                                builder: (context) =>
                                    BlocBuilder<ProfileBloc, ProfileState>(
                                  builder: (context, state) {
                                    return CustomDatePickerDialog(
                                      initialDate: DateTime.parse(widget.dob ??
                                          DateTime.now().toString()),
                                      firstDate: DateTime(1920, 9, 7, 17, 30),
                                      lastDate: DateTime.now(),
                                      onDateTimeChanged: (onDateTimeChanged) {
                                        context
                                            .read<ProfileBloc>()
                                            .add(ProfileEvent.pickDate(
                                              date: onDateTimeChanged,
                                            ));
                                        setState(() {
                                          dobController.text =
                                              dateFormatToddmmyyyy(
                                                  onDateTimeChanged);
                                        });
                                      },
                                    );
                                  },
                                ),
                              ),
                              child: Icon(
                                Icons.calendar_month,
                                color: context.theme.primary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    const SizedBox(height: 20),
                    if (widget.section == EditProfileSection.Address)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFieldWidget(
                            textEditingController: streetController,
                            hintText: "Street",
                            keyboardType: TextInputType.name,
                            validate: (name) {
                              if (name == null || name.isEmpty) {
                                return "Please enter an street";
                              }
                              return null; // Return null if validation succeeds
                            },
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: TextFieldWidget(
                                  textEditingController: districtController,
                                  hintText: "District",
                                  keyboardType: TextInputType.visiblePassword,
                                  validate: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "Please Enter the District";
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: TextFieldWidget(
                                  textEditingController: cityController,
                                  hintText: "City",
                                  keyboardType: TextInputType.visiblePassword,
                                  validate: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "Please enter a City";
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: TextFieldWidget(
                                  textEditingController: stateController,
                                  hintText: "State",
                                  keyboardType: TextInputType.visiblePassword,
                                  validate: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "Please enter a State";
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: TextFieldWidget(
                                  textEditingController: zipcodeController,
                                  hintText: "Zipcode",
                                  keyboardType: TextInputType.visiblePassword,
                                  validate: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "Please Enter a Zipcode ";
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    if (widget.section == EditProfileSection.otherdetails)
                      Column(
                        children: [
                          const SizedBox( height: 10, ),
                          Row(
                            children: [
                              Expanded(
                                child: TextFieldWidget(
                                  textEditingController: heightController,
                                  hintText: "Height",
                                  keyboardType: TextInputType.visiblePassword,
                                  validate: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "Please enter a Height";
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: TextFieldWidget(
                                  textEditingController: weightController,
                                  hintText: "Weight",
                                  keyboardType: TextInputType.visiblePassword,
                                  validate: (value) {
                                    if (value == null || value.isEmpty) {
                                      return "Please enter a Weight";
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    const SizedBox(
                      height: 10,
                    ),
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
                                          mobileNo:
                                              mobileController.value.text,
                                          street: streetController.value.text,
                                          weight: weightController.value.text,
                                          name: nameController.value.text,
                                          city: cityController.value.text,
                                          height: heightController.value.text,
                                          state: stateController.value.text,
                                          email: emailIdController.value.text,
                                          gender: genderController.value.text,
                                          district:
                                              districtController.value.text,
                                          zipCode: zipcodeController.value.text,
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
}
