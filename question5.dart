Question 5

mixin Payable {
  double calculateSalary(double baseSalary, double bonus) {
    return baseSalary + bonus;
  }

  void processPayment(double amount) {
    print("Payment processed: $amount");
  }
}

mixin Reportable {
  String generateReport(String employeeName, String department) {
    return "Monthly report for $employeeName in $department department";
  }
}

abstract class Employee {
  String name;
  String id;
  String department;

  Employee(this.name, this.id, this.department);

  String getJobTitle();
  double getBaseSalary();

  void displayInfo() {
    print("Employee: $name (ID: $id, Department: $department)");
  }
}

class Manager extends Employee with Payable, Reportable {
  int teamSize;

  Manager(String name, String id, String department, this.teamSize)
      : super(name, id, department);

  @override
  String getJobTitle() => "Manager";

  @override
  double getBaseSalary() => 8000.0;

  void displayManagerInfo() {
    print("Manager: $name (ID: $id, Department: $department, Team Size: $teamSize)");
  }
}

class Developer extends Employee with Payable {
  String programmingLanguage;

  Developer(String name, String id, String department, this.programmingLanguage)
      : super(name, id, department);

  @override
  String getJobTitle() => "Senior Developer";

  @override
  double getBaseSalary() => 6000.0;

  void displayDeveloperInfo() {
    print("Developer: $name (ID: $id, Department: $department, Language: $programmingLanguage)");
  }
}

void main() {
  Manager manager = Manager("John Smith", "M001", "IT", 5);
  Developer developer = Developer("Alice Johnson", "D001", "IT", "Dart");

  manager.displayManagerInfo();
  print("Job Title: ${manager.getJobTitle()}");
  print("Base Salary: ${manager.getBaseSalary()}");
  double managerSalary = manager.calculateSalary(manager.getBaseSalary(), 1000.0);
  print("Calculated Salary: $managerSalary");
  manager.processPayment(managerSalary);
  print("Report: ${manager.generateReport(manager.name, manager.department)}\n");

  developer.displayDeveloperInfo();
  print("Job Title: ${developer.getJobTitle()}");
  print("Base Salary: ${developer.getBaseSalary()}");
  double devSalary = developer.calculateSalary(developer.getBaseSalary(), 500.0);
  print("Calculated Salary: $devSalary");
  developer.processPayment(devSalary);
}
