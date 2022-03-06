import 'dart:io';
void main(List<String> arguments) {
  //demo input output
  stdout.write("Masukan Data: ");
  String? dtInput = stdin.readLineSync();
  createTriangle(int.parse(dtInput!));
}
void createTriangle(int row){
   var angkaleft = 1;
   var angkaright = row;
  for(int i=0;i<row;i++){
    for(int j=row-i;j > 0;j--){
      if(angkaleft>row){
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
      if(angkaright<1){
        angkaright = row;
      }
      stdout.write('$angkaright');
      angkaright -= 1;
    }
    print("");
  }
}
