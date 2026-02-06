import 'package:flutter/material.dart';

const black = Color(0xff000000);
const white = Color(0xffffffff);
const primary = Color(0xff273238);
const secondary = Color(0xff1a3562);
const gray = Color(0xFF979797);
Color grey = const Color(0xff090909).withAlpha(153);
const red = Colors.red;
const green = Colors.green;
const workflowTab = Color(0xff2D9CDB);
const workflowTabOrange = Color(0xffF2994A);
const cardGrey = Color(0xffF6F6F6);
const cardDarkGrey = Color(0xffE8E8E8);
const inboxBlue = Color(0xffCCEDFF);
const inboxGreen = Color(0xffDCFFEB);
const inboxOrange = Color(0xffFFE1C7);
const inboxRed = Color(0xffFFDADA);
const buttonRed = Color(0xffD11E22);
const background = Color(0xffEDEDED);
const calendarOrange = Color(0xffE55C0E);
const calendarYellow = Color(0xffCDBA10);
const calendarGreen = Color(0xff57CF0E);
const calendarGray = Color(0xffDADADA);
const geoRangeFill = Color(0xffFA4343);
const textRed = Color(0xffE22D2D);
const grayLight = Color(0xffD9D9D9);
const blue = Color(0xff1d7ae5);
const blackGray = Color(0xff504f4f);

/// Tag=2 for getStatusCardBackgroundColor
Color getColor(String status, int tag) {
  switch (status) {
    case 'Open':
      return tag == 1 ? workflowTab : inboxBlue;
    case 'Approved':
      return tag == 1 ? green : inboxGreen;
    case 'Draft':
      return tag == 1 ? workflowTabOrange : inboxOrange;
    case 'Rejected':
      return tag == 1 ? red : inboxRed;
    default:
      return white;
  }
}
