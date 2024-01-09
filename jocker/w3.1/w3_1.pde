
    String u_input="";
    boolean knowsPassword=false;

    void setup() {
      // nothing
      size(200, 200);
      background(255);
    } 

    void draw() {
      if (knowsPassword) {
        background (152);
        fill(0);
        text("ok", 20, 20);
      }
      else {
        background(126);
      }
    }

    void keyPressed() {
      
      while(key != " ")
      {
        print("");
        
      }
      if (key==CODED) {
        if (keyCode==LEFT) {
          println("left");
        } // if
        else {
          println("unknown special key");
          
          println(); 
        }
      }
      else
      {
        if (key==BACKSPACE) {
          if (u_input.length()>0) {
            u_input=u_input.substring(0, u_input.length()-1);
          }
        }
        else if (key==RETURN || key==ENTER) {
          println ("ENTER");
          if (u_input.equals("abcd")) {
            println("Hurra!");
            knowsPassword=true;
            u_input="";
          }
          else {
            knowsPassword=false;
          }
        }
        else {
          u_input+=key;
        }
        println (u_input);
      }
    }
