import 'dart:math';



class CalculatorBrain{

  CalculatorBrain({required this.height, required this.weight});
   final int height;
   final int weight;

     double actualBMI(){
       return weight / pow(height/100, 2);
     }

  String calculateBMI(){
    double bmi = weight / pow(height/100, 2);
    return bmi.toStringAsFixed(1);
  }


  String getResult(){
       double bmi = actualBMI();
    if(bmi >=25){
      return "Overweight";
    }
    else if(bmi >18.5){
      return "Normal";
    }
    else {return "Underweight";}
  }

  String getInterpretation(){

       double bmi = actualBMI();
    if(bmi >=25){
      return "You have a BMI more than normal! Try to exercise more.";
    }
    else if(bmi >18.5){
      return "You have a normal BMI! Keep it up.";
    }
    else { return "You have a BMI less than normal! Try to eat more.";}
  }












}
