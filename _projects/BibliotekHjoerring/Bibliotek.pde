class Bibliotek {
  ArrayList<Bog> bøger = new ArrayList<Bog>();
  ArrayList<Bruger> brugere = new ArrayList<Bruger>();
  ArrayList<Laan> udlaan = new ArrayList<Laan>();

  void tilføjBog(Bog bog) {
    bøger.add(bog);
    println(bog.getTitel() + " af forfatter: " + bog.getForfatter() + " er blevet tilføjet til biblioteket.");
  }

  void tilføjBruger(Bruger bruger) {
    brugere.add(bruger);
    println("Bruger: " +bruger.getNavn() + " med brugerid: " + bruger.getBrugerId() + " er blevet tilføjet.");
  }

  void laanBog(Bruger bruger, Bog bog) {
    if (!bøger.contains(bog)) {
      println("Bog findes ikke i biblioteket!");
    }
    if (bog.erUdlaant()) {
      println("Bogen '" + bog.getTitel() + "' er allerede udlånt.");
    }

    Laan nytLaan = new Laan(bog, bruger);
    udlaan.add(nytLaan);
    println(bruger.getNavn() + " har lånt bogen '" + bog.getTitel() + "', den : " +nytLaan.getLaanDato() + ".");
  }

  void afleverBog(Bog bog) {
    Laan aktivtLaan = null;

    for (Laan laan : udlaan) {
      if (laan.getBog().equals(bog) && laan.erAktivtLaan()) {
        aktivtLaan = laan;
        break;
      }
    }

    if (aktivtLaan != null) {
      aktivtLaan.afleverBog();
      udlaan.remove(aktivtLaan);
    } else {
      println("Ingen aktive lån fundet for bogen '" + bog.getTitel() + "'.");
    }
  }
}
