List<int> numbers = [1,2,3,4,5];
void main(){
  // for(int i=0; i<numbers.length;i++){
  //   print(numbers[i]);
  // }
  for(int number in numbers){
    if(number==5){
      continue;
    }
    print(number);
  }

  int max = 4;
  int test = 1;

  // while
  // while(test<max){
  //   print('Viet');
  //   test++;
  // }
  // do while
  do {
    print('Flutter');
    test++;
    if(test == 2){
      break;
    }
  } while (test<=max);

}