import 'package:flutter/material.dart';
import 'package:ftoast/ftoast.dart';
import 'package:panara_dialogs/panara_dialogs.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'strings.dart';

/// Empty Title & Subtitle TextFields Warning
emptyFieldsWarning(context) {
  Color toastColor = Theme.of(context).brightness == Brightness.dark
      ? Colors.white.withOpacity(0.5)
      : Colors.black.withOpacity(0.5);
  Color textColor = Theme.of(context).brightness == Brightness.dark
      ? Colors.black
      : Colors.white;
  return FToast.toast(
    context,
    msg: MyString.oopsMsg,
    subMsg: "You must fill all Fields!",
    corner: 20.0,
    duration: 2000,
    padding: const EdgeInsets.all(20),
    color: toastColor,
    msgStyle: TextStyle(color: textColor),
    subMsgStyle: TextStyle(color: textColor),
  );
}

/// The Task is deleted
taskDeleted(context) {
  Color toastColor = Theme.of(context).brightness == Brightness.dark
      ? Colors.white.withOpacity(0.5)
      : Colors.black.withOpacity(0.5);
  Color textColor = Theme.of(context).brightness == Brightness.dark
      ? Colors.black
      : Colors.white;
  return FToast.toast(
    context,
    msg: "the Task is deleted successfully!",
    corner: 20.0,
    duration: 1000,
    padding: const EdgeInsets.all(20),
    color: toastColor,
    msgStyle: TextStyle(color: textColor),
    subMsgStyle: TextStyle(color: textColor),
  );
}

/// The Task is added
taskAdded(context) {
  Color toastColor = Theme.of(context).brightness == Brightness.dark
      ? Colors.white.withOpacity(0.5)
      : Colors.black.withOpacity(0.5);
  Color textColor = Theme.of(context).brightness == Brightness.dark
      ? Colors.black
      : Colors.white;
  return FToast.toast(
    context,
    msg: "Task is added successfully!",
    corner: 20.0,
    duration: 1000,
    padding: const EdgeInsets.all(20),
    color: toastColor,
    msgStyle: TextStyle(color: textColor),
    subMsgStyle: TextStyle(color: textColor),
  );
}

/// The Task is updated
taskUpdated(context) {
  Color toastColor = Theme.of(context).brightness == Brightness.dark
      ? Colors.white.withOpacity(0.5)
      : Colors.black.withOpacity(0.5);
  Color textColor = Theme.of(context).brightness == Brightness.dark
      ? Colors.black
      : Colors.white;
  return FToast.toast(
    context,
    msg: "Task is updated successfully!",
    corner: 20.0,
    duration: 1000,
    padding: const EdgeInsets.all(20),
    color: toastColor,
    msgStyle: TextStyle(color: textColor),
    subMsgStyle: TextStyle(color: textColor),
  );
}

/// Nothing Enter When user try to edit the current task
nothingEnterOnUpdateTaskMode(context) {
  Color toastColor = Theme.of(context).brightness == Brightness.dark
      ? Colors.white.withOpacity(0.5)
      : Colors.black.withOpacity(0.5);
  Color textColor = Theme.of(context).brightness == Brightness.dark
      ? Colors.black
      : Colors.white;
  return FToast.toast(
    context,
    msg: MyString.oopsMsg,
    subMsg: "You must edit the tasks then try to update it!",
    corner: 20.0,
    duration: 3000,
    padding: const EdgeInsets.all(20),
    color: toastColor,
    msgStyle: TextStyle(color: textColor),
    subMsgStyle: TextStyle(color: textColor),
  );
}

/// No task Warning Dialog
dynamic warningNoTask(BuildContext context) {
  return PanaraInfoDialog.showAnimatedGrow(
    context,
    title: MyString.oopsMsg,
    message:
        "There is no Task For Delete!\n Try adding some and then try to delete it!",
    buttonText: "Okay",
    onTapDismiss: () {
      Navigator.pop(context);
    },
    panaraDialogType: PanaraDialogType.warning,
  );
}

/// Delete All Task Dialog
dynamic deleteAllTask(BuildContext context) {
  return PanaraConfirmDialog.show(
    context,
    title: MyString.areYouSure,
    message:
        "Do You really want to delete all tasks? You will no be able to undo this action!",
    confirmButtonText: "Yes",
    cancelButtonText: "No",
    onTapCancel: () {
      Navigator.pop(context);
    },
    onTapConfirm: () async {
      Navigator.pop(context);
    },
    panaraDialogType: PanaraDialogType.error,
    barrierDismissible: false,
  );
}

/// lottie asset address
String lottieURL = 'assets/lottie/1.json';

/// lottie splash asset address
String splashLottieURL = 'assets/lottie/splash.json';

SharedPreferences? sharedPreferences;
