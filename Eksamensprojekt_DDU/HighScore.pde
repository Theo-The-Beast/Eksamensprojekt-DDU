class Highscore {
  boolean endeligPointBool = true;

  void lavCSV() {
    t.addColumn("HighScore", Table.INT);

    saveTable(t, "data/new.csv");
  }

  Table loadCSV(Table t) {

    t = loadTable("data/new.csv", "header");

    return t;
  }

  void saveCSV(Table t) {
    t.addRow();
    t.setInt(t.getRowCount()-1, "HighScore", point);

    saveTable(t, "data/new.csv");
    forberedHighScore();
  }

  void forberedHighScore() {

    // VIS HIGHSCORENE 
    HighScores.clear();
    for (TableRow row : t.rows()) {
      HighScores.append(row.getInt("HighScore"));
    }
  }

  void endeligScore() {
    if (endeligPointBool) {
      point += visTid*2;
      endeligPointBool = false;
    }
  }
}
