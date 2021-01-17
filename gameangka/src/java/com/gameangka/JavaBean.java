
package com.gameangka;

public class JavaBean {
    private String guess;
    private int numGuesses;
    private String hint;
    private boolean match;
    private int answer;
    public JavaBean(){
        reset();
    }
    public void reset(){
        answer = (int) (Math.random() * 100) + 1;
        match = false;
        numGuesses = 0;
    }
    public String getGuess(){
        return this.guess;
    }
    public void setGuess(String guess){
        if (guess !=null) numGuesses++;
        int gs;
        try{
            gs = Integer.parseInt(guess);
        }
        catch(NumberFormatException e){
            gs=-1;
        }
        if (gs==1){
            hint = "Error : Isikan hanya angka digit";
        }else if (gs < answer){
            hint = "Lebih besar ....Tebakan terlalu kecil";
        }else if (gs > answer){
            hint = "Lebih kecil ....Tebakan rerlalu besar";
        }else if (gs == answer){
            hint = "Selamat ! tebakan anda benar....";
            }
        this.guess=String.valueOf(gs);
    }
    public int getNumGuesses(){
        return this.numGuesses;
    }
    public String getHint(){
        return this.hint;
    }
    public boolean isMatch(){
        return this.match;
    }
    
}
