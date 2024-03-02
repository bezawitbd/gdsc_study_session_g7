void main(){
final numbers = [1, 8, 3,3,4,45,5,69,10,39,91,10];
int max = numbers[0];
int min = numbers[0];
int sum = 0;
double average= 0.0;


for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] > max) {
      max = numbers[i];
    }
    if (numbers[i] < min) {
      min = numbers[i];
    }
    sum += numbers[i];
  }
average =  sum/ numbers.length;
print('The maximum number  in the list is $max');
print('The minimum number  in the list is $min');
print('The sum of all number in the list is $sum');
print('The average of all number is in the list is $average');

 }