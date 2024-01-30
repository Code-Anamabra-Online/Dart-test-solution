import 'dart:math';


void main (){

//FUNCTIONS


//Define a Dart function that takes two parameters (int a, int b) and returns their sum.
int sum(int a, int b){
  return a+b;
}


//Write a function that calculates the factorial of a given number.
int factorial(int a){
  if (a==0||a==1){
    return 1
  } else{
    return a * factorial(a-1);
  }
}



bool isPrime(int a){
  if(a<=1){
    return false;
  }

  for (int i=2, i<=a/2 , i++){
    if (a % i==0){
      return false;
    }
  }
  return true
}
   




double celsiusToFahrenheit(double celsius){
  return (celsius * 9 / 5) + 32;
}



String reverseString(String string){
  return String.fromCharCodes(string.runes.toList().reversed);
}






//CLASSES


class Person{
  String name;
  int age;

  Person(this.name, this.age);

  void displayPerson(){
    print('Name: $name , Age: $age');
  }
}




class Rectangle{
  double length;
  double width;

  Rectangle(this.length, this.width);

  double calculateArea(){
    return length*width
  }
}




class Circle {
  double radius;

  Circle(this.radius);

  double calculateCircumference(){
    return 2 * 3.14 * radius
  }
}






class BankAccount{
  double balance;

  BankAccount(this.balance);

  void deposit(double deposit){
    if(deposit > 0){
      balance += deposit;
      print( 'Deposited $deposit naira and your new balance is $balance naira')
    } else{
      print ('Please deposit a valid amount')
    }
  }

  void withdraw (double withdraw){
    if (withdraw > 0 && withdraw <= balance){
      balance -= withdraw;
      print('$withdraw naira withdrawn succesfully . New balance is $balance naira')
    }
  }else{
    print('insufficient funds in your account')
  }
}






class Student{

  String name;
  int age;
  double grade;

  Student(this.name, this.age, this.grade);

  bool passed(){
    if (grade>=50){
      return true
    }else{
      return false
    }
  }
}





//FUNCTIONS AND CLASS INTERACTIONS



class Calculator {
  double add(double num1, double num2) {
    return num1 + num2;
  }

  double subtract(double num1, double num2) {
    return num1 - num2;
  }

  double multiply(double num1, double num2) {
    return num1 * num2;
  }

  double divide(double num1, double num2) {
    if (num2 != 0) {
      return num1 / num2;
    } else {
      print('Error: Division by zero');
      return double.nan; // Not-a-Number to represent an error
    }
  }
}





class Car {
  bool isRunning = false;
  double fuelLevel = 0.0;

  void start() {
    if (!isRunning) {
      print('Starting the car');
      isRunning = true;
    } else {
      print('The car is already running');
    }
  }

  void stop() {
    if (isRunning) {
      print('Stopping the car');
      isRunning = false;
    } else {
      print('The car is already stopped');
    }
  }

  double checkFuelLevel() {
    return fuelLevel;
  }
}






int findMax(List<int> numbers) {
  if (numbers.isEmpty) {
    print('The list is empty.');
    return null; // Return null for an empty list
  }

  int max = numbers[0]; // Assume the first element is the maximum

  for (int num in numbers) {
    if (num > max) {
      max = num;
    }
  }

  return max;
}





class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);

  void giveBonus(double bonusAmount) {
    if (bonusAmount > 0) {
      salary += bonusAmount;
      print('$name has received a bonus of $bonusAmount. New salary: $salary');
    } else {
      print('Invalid bonus amount');
    }
  }
}




// area of triangle in form of class
class Triangle {
  double base;
  double height;

  Triangle(this.base, this.height);

  double calculateArea() {
    return 0.5 * base * height;
  }
}

//area of triangle in form of function
double calculateTriangleArea(double base, double height) {
  return 0.5 * base * height;
}






//MORE FUNCTIONS





double findSquareRoot(double number) {
  if (number < 0) {
    print('Cannot find the square root of a negative number.');
    return double.nan; // Return Not-a-Number for invalid input
  }

  return sqrt(number);
  // the sqrt method is from the 'dart:math' library which has been imported at the top of this page, kindly confirm
}




double findSquareRoot(double number) {
  if (number < 0) {
    print('Cannot find the square root of a negative number.');
    return double.nan; // Return Not-a-Number for invalid input
  }

  return sqrt(number);
}




List<int> generateFibonacciList(int limit) {
  List<int> fibonacciList = [];

  if (limit >= 1) {
    fibonacciList.add(0);
  }
  if (limit >= 2) {
    fibonacciList.add(1);
  }

  int i = 2;
  while (true) {
    int nextFibonacci = fibonacciList[i - 1] + fibonacciList[i - 2];
    if (nextFibonacci > limit) {
      break;
    }
    fibonacciList.add(nextFibonacci);
    i++;
  }

  return fibonacciList;
}






bool isLeapYear(int year) {
  if (year % 4 != 0) {
    // Not divisible by 4, not a leap year
    return false;
  } else if (year % 100 != 0) {
    // Divisible by 4 but not divisible by 100, leap year
    return true;
  } else if (year % 400 != 0) {
    // Divisible by 100 but not divisible by 400, not a leap year
    return false;
  } else {
    // Divisible by 400, leap year
    return true;
  }
}





int factorial(int a) {
  if (a == 0 || a == 1) {
    return 1;
  } else {
    return a * factorial(a - 1);
  }
}





List<int> filterEvenNumbers(List<int> numbers) {
  return numbers.where((num) => num % 2 == 0).toList();
}




}