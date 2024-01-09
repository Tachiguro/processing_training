String benutzereingabe = "";
boolean ergebnisAngezeigt = false;

void setup() {
  size(400, 100);
  background(255);
}

void draw() {
  fill(0);
  textSize(16);
  text(benutzereingabe, 10, 30);

  if (ergebnisAngezeigt) {
    textSize(20);
    text("Ergebnis: " + berechneErgebnis(benutzereingabe), 10, 70);
  }
}

void keyPressed() {
  if (key == BACKSPACE) {
    if (benutzereingabe.length() > 0) {
      benutzereingabe = benutzereingabe.substring(0, benutzereingabe.length() - 1);
    }
  } else if (key == RETURN || key == ENTER) {
    ergebnisAngezeigt = true;
  } else {
    benutzereingabe += key;
  }
}

float berechneErgebnis(String aufgabe) {
  while (aufgabe.contains("/") || aufgabe.contains("*")) {
    int indexDiv = aufgabe.indexOf("/");
    int indexMul = aufgabe.indexOf("*");

    if ((indexDiv < indexMul && indexDiv != -1) || (indexMul == -1 && indexDiv != -1)) {
      aufgabe = bearbeiteTeilaufgabe(aufgabe, indexDiv);
    } else {
      aufgabe = bearbeiteTeilaufgabe(aufgabe, indexMul);
    }
  }

  while (aufgabe.contains("+") || aufgabe.contains("-")) {
    int indexAdd = aufgabe.indexOf("+");
    int indexSub = aufgabe.indexOf("-");

    if ((indexAdd < indexSub && indexAdd != -1) || (indexSub == -1 && indexAdd != -1)) {
      aufgabe = bearbeiteTeilaufgabe(aufgabe, indexAdd);
    } else {
      aufgabe = bearbeiteTeilaufgabe(aufgabe, indexSub);
    }
  }

  return float(aufgabe);
}

String bearbeiteTeilaufgabe(String aufgabe, int operatorIndex) {
  String teil1 = aufgabe.substring(0, operatorIndex).trim();
  String teil2 = aufgabe.substring(operatorIndex + 1).trim();
  char operator = aufgabe.charAt(operatorIndex);
  float ergebnis = 0;

  switch (operator) {
    case '/':
      ergebnis = float(teil1) / float(teil2);
      break;
    case '*':
      ergebnis = float(teil1) * float(teil2);
      break;
    case '+':
      ergebnis = float(teil1) + float(teil2);
      break;
    case '-':
      ergebnis = float(teil1) - float(teil2);
      break;
  }

  aufgabe = aufgabe.substring(0, operatorIndex) + ergebnis + aufgabe.substring(operatorIndex + 1 + teil2.length());
  return aufgabe;
}
