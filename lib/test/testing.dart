class Maths{
  DateTime datetime=DateTime.utc(2002,1,3);
  String? status;
  String? day(){
print(datetime);
    if(datetime.month==1 || datetime.month==2 || datetime.month==12){
      status = "Winter";
    }else if(datetime.month==3 || datetime.month==4 || datetime.month==5){
      status = "Summer";
    }else if(datetime.month==6 || datetime.month==7 || datetime.month==8 || datetime.month == 9){
      status = "Monsoon";
    }else if(datetime.month==10 || datetime.month==11 ){
      status = "Diwali";
    }else return "XYZ";
  }
}