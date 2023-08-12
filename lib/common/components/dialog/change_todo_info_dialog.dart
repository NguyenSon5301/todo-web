import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../common/common.dart';
import '../../constants/constants.dart';
import '../../singleton/singletons.dart';

class ChangeTodoInfoDialog extends StatefulWidget {
  final String dataTitleInit;
  final String dataDescriptionInit;
  final String title;
  final DateTime time;
  const ChangeTodoInfoDialog({
    required this.dataTitleInit,
    required this.dataDescriptionInit,
    required this.title,
    required this.time,
    Key? key,
  }) : super(key: key);

  @override
  State<ChangeTodoInfoDialog> createState() => _ChangeTodoInfoDialogState();
}

class _ChangeTodoInfoDialogState extends State<ChangeTodoInfoDialog> {
  TextEditingController titleTextController = TextEditingController();
  TextEditingController descriptionTextController = TextEditingController();

  @override
  void initState() {
    super.initState();
    descriptionTextController.text = widget.dataDescriptionInit;
    titleTextController.text = widget.dataTitleInit;
    TodoSingleton.ins.time = widget.time;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 500.scaled),
      child: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.scaled),
        ),
        child: Container(
          padding: EdgeInsets.all(20.scaled),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              AppText(
                widget.title,
                AppTextStyles.title24Bold,
              ),
              SizedBox(height: 30.scaled),
              _formFieldCustomer(
                title: StringManager.title,
                controller: titleTextController,
              ),
              SizedBox(height: 30.scaled),
              _formFieldCustomer(
                title: StringManager.description,
                controller: descriptionTextController,
                descriptionForm: true,
              ),
              SizedBox(height: 30.scaled),
              timeWidget(
                DateFormat('MMM d, yyyy').format(TodoSingleton.ins.time),
              ),
              SizedBox(height: 50.scaled),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buttonCustom(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5)
                            .scaled,
                    title: AppText(
                      StringManager.cancelButton,
                      AppTextStyles.button16Medium.copyWith(
                        color: AppColors.white,
                      ),
                      applyHeightTop: true,
                    ),
                    onTap: () {
                      AppNavigator.fromContext(context).pop(callback: false);
                    },
                  ),
                  SizedBox(
                    width: 40.scaled,
                  ),
                  _buttonCustom(
                    gradient: AppColors.blueGradient,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5)
                            .scaled,
                    title: AppText(
                      StringManager.confirmButton,
                      AppTextStyles.button16Medium.copyWith(
                        color: AppColors.white,
                      ),
                      applyHeightTop: true,
                    ),
                    onTap: () {
                      TodoSingleton.ins.description =
                          descriptionTextController.text;
                      TodoSingleton.ins.title = titleTextController.text;
                      AppNavigator.fromContext(context).pop(callback: true);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buttonCustom({
    required VoidCallback onTap,
    required Widget title,
    required EdgeInsetsGeometry padding,
    Gradient? gradient,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          color: AppColors.lightGray,
          borderRadius: BorderRadius.circular(4.scaled),
          gradient: gradient,
        ),
        alignment: Alignment.center,
        child: title,
      ),
    );
  }

  Widget _formFieldCustomer({
    required String title,
    TextEditingController? controller,
    bool descriptionForm = false,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 80,
          child: AppText('$title:', AppTextStyles.body14Regular),
        ),
        SizedBox(
          width: 200,
          child: TextFormField(
            controller: controller,
            keyboardType: descriptionForm ? TextInputType.multiline : null,
            maxLines: descriptionForm ? 4 : 1,
            decoration: InputDecoration(
              labelText: title,
              border: const OutlineInputBorder(),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 5),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget timeWidget(String time) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 80,
          child: AppText('${StringManager.date}:', AppTextStyles.body14Regular),
        ),
        SizedBox(
          width: 200,
          child: Row(
            children: [
              AppText(time, AppTextStyles.body14Medium),
              IconButton(
                onPressed: () async {
                  await _pickDate(widget.time);
                },
                icon: const Icon(
                  Icons.date_range_outlined,
                  size: 20,
                  color: AppColors.green,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Future<void> _pickDate(
    DateTime time,
  ) async {
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: time,
      firstDate: DateTime(1950),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      // await db.updateInfo(field, pickedDate);
      setState(() {
        TodoSingleton.ins.time = pickedDate;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(' cập nhật thành công'),
        ),
      );
    } else {}
  }
}
