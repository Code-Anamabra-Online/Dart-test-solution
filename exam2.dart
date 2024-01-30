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


//Create a function that checks if a number is prime.
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
   



//Implement a function that converts Celsius to Fahrenheit.
double celsiusToFahrenheit(double celsius){
  return (celsius * 9 / 5) + 32;
}


//Write a Dart function that takes a string as input and returns the reversed string
String reverseString(String string){
  return String.fromCharCodes(string.runes.toList().reversed);
}






//CLASSES


//Create a class named Person with attributes name and age. Implement a method to display the person's information.
class Person{
  String name;
  int age;

  Person(this.name, this.age);

  void displayPerson(){
    print('Name: $name , Age: $age');
  }
}



//Define a class Rectangle with attributes length and width. Implement a method to calculate the area of the rectangle.
class Rectangle{
  double length;
  double width;

  Rectangle(this.length, this.width);

  double calculateArea(){
    return length*width
  }
}



//Implement a class Circle with a method to calculate the circumference.
class Circle {
  double radius;

  Circle(this.radius);

  double calculateCircumference(){
    return 2 * 3.14 * radius
  }
}





//Create a class BankAccount with methods to deposit and withdraw money, and to check the account balance.
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





//Write a class Student with attributes name, age, and grade. Implement a method to determine if the student passed or failed.
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




//Define a class Calculator with methods for basic arithmetic operations (add, subtract, multiply, divide).
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




//Implement a class Car with methods to start, stop, and check the fuel level.
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





//Write a Dart program that uses a function to find the maximum element in a list of integers.
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




//Create a class Employee with attributes name, salary, and a method to give a bonus.
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



//Combine a function and a class to calculate the area of a triangle given its base and height.

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






//Write a Dart program with a function to find the square root of a given number.
double findSquareRoot(double number) {
  if (number < 0) {
    print('Cannot find the square root of a negative number.');
    return double.nan; // Return Not-a-Number for nnegtive numbers
  }

  return sqrt(number);
  // the sqrt method is from the 'dart:math' library which has been imported at the top of this page, kindly confirm
}




//Create a function that generates a list of Fibonacci numbers up to a specified limit.
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





//Implement a function to determine if a given year is a leap year.
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




//Define a recursive function to compute the factorial of a number.
int factorial(int a) {
  if (a == 0 || a == 1) {
    return 1;
  } else {
    return a * factorial(a - 1);
  }
}




//Write a function that takes a list of integers and returns a new list with only the even numbers.
List<int> filterEvenNumbers(List<int> numbers) {
  return numbers.where((num) => num % 2 == 0).toList();
}




}