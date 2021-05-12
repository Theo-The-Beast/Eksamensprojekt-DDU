class Highscore {

  void lavCSV(){
     t.addColumn("HighScore", Table.INT);
     
     saveTable(t, "data/new.csv");
  }
  
  Table loadCSV(Table t){
    
   t = loadTable("data/new.csv", "header");
    
    return t;
  }
  
  void saveCSV(Table t){
    t.addRow();
    println(t.getRowCount());
    t.setInt(t.getRowCount()-1,"HighScore", point);
  
    saveTable(t, "data/new.csv");
    forberedHighScore(); 
  }
  
  void forberedHighScore(){
    HighScores.clear();
   for (TableRow row : t.rows()) {
      HighScores.append(row.getInt("HighScore")); 
    }
  }
  
}
