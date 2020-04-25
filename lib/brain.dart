import 'dart:math';
class Brain {

Brain({this.height,this.weight});

final int height;
final int weight;
double _bmi;

String results() {
  _bmi = weight / pow(height / 100, 2);
  return _bmi.toStringAsFixed(1);
}

String bmicalc() {
  if (_bmi > 25.0){
    return 'overweight';
  } else if (_bmi > 18.0) {
    return 'Normal';
  } else {
    return 'UnderWeight';
  }
}

String bmianalysis() {
  if (_bmi > 25.0){
    return 'Your Should Probably Limit  your Intake of the Food';
  } else if (_bmi > 18.0) {
    return 'Maintain This Proportion';
  } else {
    return 'You Should Eat More.';
  }
}


}