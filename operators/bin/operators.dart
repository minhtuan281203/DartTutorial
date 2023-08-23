import 'package:operators/operators.dart' as operators;


class Student {
  var name = "John";
  //eg1
  static void printName(name) {
    print(name);
  }
  //eg2
  void printName2(name) {
    print(name);
  }
}
class Employee {
  late String eName;
  String get ename {     //getter
    return eName;
  }
  set ename(String name) {    //setter
    this.eName = name;
  }
}

void main(List<String> arguments) {
  print('Hello world: ${operators.calculate()}!');
  //operator condition
  var n1 = 10, n2 = 15, n3 = null;
  var result = n1 > n2 ? n1 : n2;
  print(result);
  var result1 = n3 ?? n1;  //n3 khác null thì lấy n3, ngc lại lấy n1
  print(result1);
//if-else, switch-case
  int num = 0;
  if(num > 0)
    print("num is positive");
  else
    print("num is not positive");

  var grade = 'A';
  switch(grade) {
    case 'A': { print('Excellent');}
      break;
    case 'B': { print('Good');}
      break;
    case 'C': { print('Fair');}
      break;
    case 'D': { print('Poor');}
      break;
    default : { print('Excellent');}
      break;
  }
  //loop
  var list = [10, 20, 30, 40, 50];
  for(int i in list){
    print(i);
  }
  var a1 = 1, b1 = 5;
  while(a1 < b1) {
    print(a1);
    a1 = a1 + 1;
  }
  var n = 5;
  do {
    print(n);
    n--;
  } while(n >= 0);

  //class
  Student.printName("Tuan");  //eg1

  Student stu = new Student();  //eg2
  stu.printName2("July");

  Employee emp = new Employee();
  emp.ename = 'Jeff';
  print("Employee name is: ${emp.ename}");
}
