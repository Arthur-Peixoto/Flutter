import 'dart:io';

void main(){
  print("Defina uma senha:");
  double senha = double.parse(stdin.readLineSync()!);
  bool senhaControl = true;
  while(senhaControl != false){
    print("Qual a senha?");
    double senhaConfere = double.parse(stdin.readLineSync()!);
    if(senhaConfere == senha){
        senhaControl = false;
        print("senha correta");
    }
    else {
      print("senha Incorreta");
    }
  }
  senhaControl = true;
  do{
    print("Qual a senha?");
    double senhaConfere = double.parse(stdin.readLineSync()!);
    if(senhaConfere == senha){
      senhaControl = false;
      print("senha correta");
    }
    else {
      print("senha Incorreta");
    }
  }while(senhaControl != false);
}


