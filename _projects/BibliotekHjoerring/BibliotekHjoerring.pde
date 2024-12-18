Bibliotek htxBib;

void setup(){
  htxBib = new Bibliotek();
  
  // opret 2 bøger 
  Bog bog1 = new Bog("Learning Processing", "Daniel Shiffman");
  Bog bog2 = new Bog("The Art of Processing", "Ben Fry");
  
  // tilføj bøger til bib
  htxBib.tilføjBog(bog1);
  htxBib.tilføjBog(bog2);

  
}
