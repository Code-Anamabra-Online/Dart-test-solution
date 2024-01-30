


void main (){

//FUNCTIONS

int sum(int a, int b){
  return a+b;
}



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












}