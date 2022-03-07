import 'dart:io';
void main(List<String> arguments) {
  //demo input output
  print("1. Untuk soal no 1");
  print("2. Untuk Soal no 2");
  stdout.write("input= ");
  String? dtInput = stdin.readLineSync();
  if(int.parse(dtInput!) == 1){
    String? input = stdin.readLineSync();
    createTriangleNo1(int.parse(input!));
  }
  else if(int.parse(dtInput)==2){
    String? input = stdin.readLineSync();
    createTriangleNo2(int.parse(input!));
  }
}
void createTriangleNo1(int row){
  int angka = 1;
  int pengurang = 1;
  int pengurangleft =1;
  int pengurangright=1;
  int marker = 1;
  if(row%2 ==0){
    angka = 0;
    pengurang =0;
    pengurangleft = 0;
    pengurangright = 1;
  }
  else {
    angka = 0;
    pengurang = 1;
    pengurangleft =  1;
    pengurangright = 1;
  }
  for(int i=0;i<row;i++){
    for(int j=0;j<row;j++){
      if(j<=(row/2).round()-pengurangleft + angka && j>=(row/2).round()-pengurangright-angka){
        stdout.write(marker);
      }
      else{
        stdout.write("*");
      }
    }

    if (row%2 != 0 ){
      if(i + 1 > (row/2).round()-pengurang){
        angka -= 1;
      }
      else{
        angka += 1;
      }
    }
    else {
      if(i+1 > (row/2).round()-pengurang){
        angka -= 1;
      }

      else{
        angka += 1;
      }
    }
    if (marker == 9){
      marker = 0;
    }
    marker += 1;
    print("");
  }
}


void createTriangleNo2(int row){
   var angkaleft = 1;
   var angkaright = row;
   if(row > 9){
     angkaright = 9;
   }
  for(int i=0;i<row;i++){
    for(int j=row-i;j > 0;j--){
      if(angkaleft > row || angkaleft > 9){
        angkaleft = 1;
      }
      stdout.write('$angkaleft');
      angkaleft += 1;
    }
    for(int j=0;j<i;j++){
      
      stdout.write("*");
    }
    for(int j=1;j<=i;j++){
      stdout.write("*");
    }
    for(int j=row-i;j > 0;j--){
      if(angkaright < 1 ){
        if (row > 9){
          angkaright = 9;
        }
        else {
          angkaright = row;
        }
      }
      stdout.write('$angkaright');
      angkaright -= 1;
    }
    print("");
  }
}
