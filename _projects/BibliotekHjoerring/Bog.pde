class Bog{
  private String titel;
  private String forfatter;
  private boolean udlaant;
  
  Bog(String titel, String forfatter) {
    this.titel = titel;
    this.forfatter = forfatter;
    this. udlaant = false; 
  }
  
  String getTitel(){
   return titel; 
  }
  
  String getForfatter(){
   return forfatter;  
  }
  
  void laanBog() {
   if(!udlaant){
    udlaant= true;
    println(titel+ " er nu udlånt.");
   }
   else
   {
     println(titel+ " er allerede udlånt.");
     
   }
  }
  
  void afleverBog(){
    if(udlaant){
      udlaant = false;
      println(titel+ " er nu afleveret. ");
    }
    else
    {
      println(titel+ " var ikke udlpnt.");
    }
  }
  
  boolean erUdlaant(){
    return udlaant;
  }
}
