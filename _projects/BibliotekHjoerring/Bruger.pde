class Bruger {
  private String navn;
  private String brugerId;

  Bruger(String navn, String brugerId) {
    this.navn = navn;
    this.brugerId = brugerId;
  }

  String getNavn() {
    return navn;
  }

  String getBrugerId() {
    return brugerId;
  }
}
