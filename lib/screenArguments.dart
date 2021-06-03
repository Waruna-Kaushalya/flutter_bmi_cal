//TODO 2: Extract arguments(variables) and construct method from parent class,
//becase when parent class has construct we cannot map routes due to parameeter
//request

class ScreenArguments {
  final String bmiResultValue;
  final String resultTextShortMsg;
  final String interpretationText;
  ScreenArguments(
      this.bmiResultValue, this.resultTextShortMsg, this.interpretationText);
}
