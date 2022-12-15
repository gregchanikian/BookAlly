package bookally;

public class User {

	private String username;
	private String password;
	private int pointer;
	private String biography;
	private String art;
	private String thriller;
	private String psychology;
	private String history;
	private String romance;
	private String economy;
	private String philosophy;
	private String poetry;
	private String adventure;
	private String cooking;
	private String scifi;
	
    public User( String username, String password, int pointer, String biography,String art, String thriller,String psychology,String history,String romance,String economy,String philosophy,String poetry,String adventure,String cooking,String scifi) {
        this.username = username;
        this.password = password;
        this.pointer = pointer;
        this.biography = biography;
        this.art = art;
        this.thriller = thriller;
        this.psychology = psychology;
        this.history = history;
        this.romance = romance;
        this.economy = economy;
        this.philosophy = philosophy;
        this.poetry = poetry;
        this.adventure = adventure;
        this.cooking = cooking;
        this.scifi = scifi;
    }
    

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPassword() {
        return password;
    }
    
    
    public void setpointer(){
    	this.pointer = pointer;
    }
    
    public int getpointer(){
            return pointer;
    }
    
    
    public void setBiography(){
        this.biography = biography;
    }
    
    public String getBiography(){
         return biography;
    }
    
    public void setArt(){
         this.art = art;
    }
    
    public String getArt(){
    	return art;
    }
    
    public void setThriller(){
    	this.thriller = thriller;
    }
    
    public String getThriller(){
    	return thriller;
    }
    
    public void setPsychology(){
    	this.psychology = psychology;
    }
    
    public String getPsychology(){
    	return psychology;
    }
    
    
    public void setHistory(){
    	this.history = history;
    }
    
    public String getHistory(){
    	return history;
    }
    
    
    public void setRomance(){
    	this.romance = romance;
    }
    
    public String getRomance(){
    	return romance;
    }
    
    
    public void setEconomy(){
    	this.economy = economy;
    }
    
    public String getEconomy(){
    	return economy;
    }
    
    public void setPhilosophy(){
    	this.philosophy = philosophy;
    }
    
    public String getPhilosophy(){
    	return philosophy;
    }
    
    public void setPoetry(){
    	this.poetry = poetry;
    }
    
    public String getPoetry(){
    	return poetry;
    }
    
    public void setAdventure(){
    	this.adventure = adventure;
    }
    
    public String getAdventure(){
    	return adventure;
    }
    
    
    public void setCooking(){
            this.cooking = cooking;
    }
    
    public String getCooking(){
    	return cooking;
    }
    
    public void setScifi(){
    	this.scifi = scifi;
    }
    
    public String getScifi(){
    	return scifi;
    }
    

}