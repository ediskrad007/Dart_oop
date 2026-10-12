// enum Skill { FLUTTER, DART, OTHER }

// class Employee {
//   final String _name;
//   final double _baseSalary;
//   final List<Skill> _skills ;
//   final Adress _adress ;
//   final int _yearOfExp ;


//   Employee(this._name, this._baseSalary , {this._adress = const Adress("ot dg", "ot dg", "ot dg")  , this._skills = const [] , this._yearOfExp = 0 });
//   Employee.mobileDev(this._name, this._baseSalary  , this._adress , this._yearOfExp , ) :  _skills = [Skill.FLUTTER , Skill.DART];
//   String get name {
//     return _name ;
//   }
//   double get baseSalary {
//     return _baseSalary ;
//   }
//   Adress get adress {
//     return _adress ;
//   }
//   int get yearOfExp {
//     return _yearOfExp ;
//   }
//   List<Skill> get skills{
//     return _skills ;
//   }
//   double computeSalary (){
//     double total = _baseSalary ;
//     total +=yearOfExp * 2000 ;
//     for(Skill skill in _skills){
//       if (skill == Skill.DART){
//         total +=3000;
//       }
//       else if (skill == Skill.FLUTTER){
//         total += 5000 ;
//       }
//       else if (skill == Skill.OTHER){
//         total += 1000;
//       }
//     }
//     return total ;
//   }
//   //void printDetails() {
//   //   print('Employee: $name, Base Salary: \$${baseSalary}');
//   // }
  
//   void printDetails() {
//     print('Employee: $_name, Base Salary: \$$_baseSalary, Total Salary: \$${computeSalary()}, Address: $_adress'); 
//   }
// }
// class Adress {
//   final String _street ;
//   final String _city ;
//   final String _zipCode ;
//  const Adress(this._street , this._city , this._zipCode);
//   String get street {
//     return _street;
//   }
//   String get city {
//     return _city ;
//   }
//   String get zipCode {
//     return _zipCode ;
//   }
//   @override
//   String toString() => '$_street, $_city, $_zipCode';
// }


// void main() {
//   var emp1 = Employee('Sokea', 40000);
//   emp1.printDetails();

//   var emp2 = Employee('Ronan', 45000);
//   emp2.printDetails();

//    var emp4 = Employee('Peak mii', 45000 , skills: [Skill.OTHER] , yearOfExp: 1);
//   emp4.printDetails();

//   var adress3 = Adress('Street 6A', 'Phnom Penh', '168168');
//   var emp3 = Employee.mobileDev('ThearaDev', 40000, adress3, 3);
//   emp3.printDetails();
// }