class Laan {
  private Bog bog;
  private Bruger bruger;
  private String laanDato;
  boolean aktivtLaan;

  Laan(Bog bog, Bruger bruger) {
    this.bog = bog;
    this.bruger = bruger;
    this.laanDato = day() + "/" + month() + "/" + year();
    this.aktivtLaan = true;
    bog.laanBog();
  }

  Bog getBog(){
   return bog; 
  }
  
  Bruger getBruger(){
    return bruger;
  }
  
  String getLaanDato(){
   return laanDato; 
  }

  void afleverBog(){
    if(aktivtLaan){
      aktivtLaan = false;
      bog.afleverBog();
      println("Bogen '" + bog.getTitel() + "' er blevet afleveret af: " + bruger.getNavn() + ".");
    } else
    {
     println("Denne bog er allerede afleveret"); 
    }
  }
  
  boolean erAktivtLaan() {
    return aktivtLaan;
  }
  
  void visLaanInfo(){
    println("Bog: " + bog.getTitel() + ", er lånt af: " + bruger.getNavn() + " på dato: " + laanDato + ". Aktivt lån: " + aktivtLaan + ".");
  }
}
