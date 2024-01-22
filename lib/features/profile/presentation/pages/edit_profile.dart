
import 'dart:math';

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

  final String? dob;

  const EditMyProfile({
    super.key,
    this.street,
    this.height,
    this.weight,
    this.email,
    this.gender,

    this.zipcode,
    this.city,
    this.state,
    this.dob,
    this.mobile,
    this.name,
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
    // dobController = TextEditingController(
    //     text: dateFormatToddmmyyyy(DateTime.parse(widget.dob.toString())));
    dobController = TextEditingController();
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
                  context: context, message: "Error occured try again later");
            }
            if (!state.isUpdateLoading && state.hasData) {
              Toast.showToast(
                  context: context, message: "Profile Updated Successfully");

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
                     const SizedBox(height: 20),
                    Text("EmailId",
                        style: Theme.of(context).textTheme.titleLarge),
                    const SizedBox(height: 10),
                    TextFieldWidget(
                      textEditingController: emailIdController,
                      hintText: "zxy@gmail.com",
                      keyboardType: TextInputType.text,
                      validate: (number) {
                        if (number == null || number.isEmpty) {
                          return "Please enter an Email address";
                        } else if (!regex.hasMatch(number)) {
                          return "Please enter a valid Email address";
                        }
                        return null; // Return null if validation succeeds
                      },
                    ),
                    const SizedBox(height: 20,),
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
                        return null; // Return null if validation succeeds
                      },
                    ),
                    
                    const SizedBox(height: 20),
                    Text("Date of birth",
                        style: Theme.of(context).textTheme.titleLarge),
                    const SizedBox(height: 10),
                    TextFieldWidget(
                      textEditingController: dobController,
                    
                      hintText: "12/12/2023",
                      inputFormatters: [DateInputFormatter()],
                      validate: DateValidator.validateDate,
                      keyboardType: TextInputType.datetime,
                      suffixIcon: GestureDetector(
                        onTap: () => showDialog(
                          context: context,
                          builder: (context) =>
                              BlocBuilder<ProfileBloc, ProfileState>(
                            builder: (context, state) {
                              return CustomDatePickerDialog(
                                initialDate: DateTime.parse(
                                    widget.dob ?? DateTime.now().toString()),
                                firstDate: DateTime(1920, 9, 7, 17, 30),
                                lastDate: DateTime.now(),
                                onDateTimeChanged: (onDateTimeChanged) {
                                  context
                                      .read<ProfileBloc>()
                                      .add(ProfileEvent.pickDate(
                                        date: onDateTimeChanged,
                                      ));

                                  dobController = TextEditingController(
                                      text: dateFormatToddmmyyyy(
                                          onDateTimeChanged));

                                  // Navigator.of(context).pop();
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
                    const SizedBox(height: 20),
                    Text("Address",
                        style: Theme.of(context).textTheme.titleLarge),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: TextFieldWidget(
                            textEditingController: streetController,
                            hintText: "Street",
                            keyboardType: TextInputType.visiblePassword,
                            validate: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter a adress";
                              }
                              return null; // Return null if validation succeeds
                            },
                          ),
                        ),
                        const SizedBox(width: 10,),
                         Expanded(
                          child: TextFieldWidget(
                            textEditingController: cityController,
                            hintText: "City",
                            keyboardType: TextInputType.visiblePassword,
                            validate: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter a adress";
                              }
                              return null; // Return null if validation succeeds
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                     Row(
                      children: [
                        Expanded(
                          child: TextFieldWidget(
                            textEditingController: stateController,
                            hintText: "State",
                            keyboardType: TextInputType.visiblePassword,
                            validate: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter a adress";
                              }
                              return null; // Return null if validation succeeds
                            },
                          ),
                        ),
                        const SizedBox(width: 10,),
                         Expanded(
                          child: TextFieldWidget(
                            textEditingController: zipcodeController,
                            hintText: "Zipcode",
                            keyboardType: TextInputType.visiblePassword,
                            validate: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter a adress";
                              }
                              return null; // Return null if validation succeeds
                            },
                          ),
                        ),
                      ],
                    ),
                     const SizedBox(height: 10,),
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
                              return null; // Return null if validation succeeds
                            },
                          ),
                        ),
                        const SizedBox(width: 10,),
                         Expanded(
                          child: TextFieldWidget(
                            textEditingController: weightController,
                            hintText: "Weight",
                            keyboardType: TextInputType.visiblePassword,
                            validate: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter a Weight";
                              }
                              return null; // Return null if validation succeeds
                            },
                          ),
                        ),
                      ],
                    ),
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
                                          dob:dobController.value.text,
                                           mobileNumber: mobileController.value.text, 
                                           street:streetController.value.text,
                                            weight: weightController.value.text,
                                             name: nameController.value.text,
                                               city: cityController.value.text,
                                                height:heightController.value.text,
                                                 district: '', 
                                                 zipcode: '',
                                                  state: '', email: '', gender: ''
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
