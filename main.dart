

void main(){
  print("Started Main");
  funcitionOne();
  print("Finished Main");

}


void funcitionOne(){
  print("Started F01");
  functionTwo();
  print("Finished F02");
  }

  void functionTwo(){
    print("Starde F02");
    for(int i = 1; i <= 5; i++){
      print(i);
    }

    print("Finished F02");

  }