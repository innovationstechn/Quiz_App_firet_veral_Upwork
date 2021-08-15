import 'dart:convert';

List<Employee> employeeFromJson(String str) =>
    List<Employee>.from(json.decode(str).map((x) => Employee.fromJson(x)));

String employeeToJson(List<Employee> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Employee {
  int id;
  int eventId;
  String menuName;
  String menuIcon;
  String deepLinkName;
  int displayStatus;
  int orderId;
  String dateTime;

  Employee({
    this.id,
    this.eventId,
    this.menuName,
    this.menuIcon,
    this.deepLinkName,
    this.displayStatus,
    this.orderId,
    this.dateTime,
  });

  factory Employee.fromJson(Map<String, dynamic> json) => Employee(
    id: json["Id"],
    eventId: json["Event_Id"],
    menuName: json["Menu_Name"],
    menuIcon: json["Menu_Icon"],
    deepLinkName: json["Deep_Link_Name"],
    displayStatus: json["Display_Status"],
    orderId: json["Order_Id"],
    dateTime: json["Date_Time"],
  );

  Map<String, dynamic> toJson() => {
    "Id": id,
    "Event_Id": eventId,
    "Menu_Name": menuName,
    "Menu_Icon": menuIcon,
    "Deep_Link_Name": deepLinkName,
    "Display_Status": displayStatus,
    "Order_Id": orderId,
    "Date_Time": dateTime,
  };
}