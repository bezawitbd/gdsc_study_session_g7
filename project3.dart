import 'dart:async';

class Calculator {
    double add(double a, double b){
        return a + b;
    }
    double subtract(double a, double b){
        return a - b;
    }
    double multiply(double a, double b){
        return a * b;
    }

double divide(double a, double b){
        if (b == 0) {
            throw new
            IntegerDivisionByZeroException();
        }
        return a / b;
    }
}
void main() async{
    print ('Enter Two Numbers:');
    double a = double.parse(await readLine());
     double b = double.parse(await readLine());

     print('Enter an operator(+, -, *, / ):');
     String op = await readLine();

     Calculator calculator = new Calculator();
     double result = 0;

     try{
        switch (op){
            case '+':
            result = calculator.add(a, b);
            break;
            case '-':
            result = calculator.subtract(a, b);
            break;
            case '*':
            result = calculator.multiply(a, b);
            break;
            case '/':
            result = calculator.divide(a, b);
            break;
            default:
            print('Invalid operator');
            return;
        }

        await Future.delayed(Duration(seconds: 5));
        print('Result: $result');
     } on IntegerDivisionByZeroException catch (e){
        print ('cannot divide by zero');
     }
     
}
Future<String> readLine(){
    return ;
  
 
}