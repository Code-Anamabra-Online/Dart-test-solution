


void main (){


int age = 25;

double height = 5.9;

String name = "Ekwebene Chima Franklin";

bool isStudent = true;


print("sum: ${age+height}");

print("sum: ${age-height}");


int count=1;
while(count<=5){
  print("count:$count")
  count++
}



for(int i=2;i<=10;i+=2){
  print("count:${i}")
}


int countdown=10;
while(countdown>=1){
  print("count:$countdown")
  countdown--
}



for(int i=1;i<=5;i++){
  print("square of ${i}:${i*i}")
}




List<String> fruits=["pawpaw","mango","Orange"]

for(var fruit in fruits){
  print(${fruit})
}



if(age>18){
  print("Adult")
}



if(name==john){
  print("welcome john")
}else{
  print("Sorry, You're not John")
}



if(isStudent){
  print("Student")
}else{
  print("Not a Student")
}



int weekDay = 1;

switch(weekDay){
  case 1:
  print("its Monday");
  break;
  case 2:
  print("its Tuesday");
  break;
  case 3:
  print("its Wednesday");
  break;
  case 4:
  print("its Thursday");
  break;
  case 5:
  print("its Friday");
  break;
  case 6:
  print("its Saturday");
  break;
  case 7:
  print("its Sunday");
  break;
  default:
  print("invalid day")
}




int ageOfPerson = 5;

switch(ageOfPerson){
  case 5:
  print("Child");
  break;
  case 10:
  print("Adolescent");
  break;
  case 15:
  print("Teenager");
  break;
  case 20:
  print(" Young Adult");
  break;
  case 25:
  print("Old Adult");
  break;
  default:
  print("")
}

}