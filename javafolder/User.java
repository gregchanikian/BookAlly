package bookally;

public class User {

	private String username;
	private String password;
	private int userId;
	private boolean biography;
	private boolean art;
	private boolean thriller;
	private boolean psychology;
	private boolean history;
	private boolean romance;
	private boolean economy;
	private boolean philosophy;
	private boolean poetry;
	private boolean adventure;
	private boolean cooking;
	private boolean scifi;
	
    public User( String username, String password, int userId, boolean biography,boolean art, boolean thriller, boolean psychology,boolean history,boolean romance,boolean economy,boolean philosophy,boolean poetry,boolean adventure,boolean cooking,boolean scifi) {
        this.username = username;
        this.password = password;
        this.userId = userId;
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
    
    
    public void setUserId(){
    	this.userId = userId;
    }
    
    public int getUserId(){
            return userId;
    }
    
    
    public void setBiography(){
        this.biography = biography;
    }
    
    public boolean getBiography(){
         return biography;
    }
    
    public void setArt(){
         this.art = art;
    }
    
    public boolean getArt(){
    	return art;
    }
    
    public void setThriller(){
    	this.thriller = thriller;
    }
    
    public boolean getThriller(){
    	return thriller;
    }
    
    public void setPsychology(){
    	this.psychology = psychology;
    }
    
    public boolean getPsychology(){
    	return psychology;
    }
    
    
    public void setHistory(){
    	this.history = history;
    }
    
    public boolean getHistory(){
    	return history;
    }
    
    
    public void setRomance(){
    	this.romance = romance;
    }
    
    public boolean getRomance(){
    	return romance;
    }
    
    
    public void setEconomy(){
    	this.economy = economy;
    }
    
    public boolean getEconomy(){
    	return economy;
    }
    
    public void setPhilosophy(){
    	this.philosophy = philosophy;
    }
    
    public boolean getPhilosophy(){
    	return philosophy;
    }
    
    public void setPoetry(){
    	this.poetry = poetry;
    }
    
    public boolean getPoetry(){
    	return poetry;
    }
    
    public void setAdventure(){
    	this.adventure = adventure;
    }
    
    public boolean getAdventure(){
    	return adventure;
    }
    
    
    public void setCooking(){
            this.cooking = cooking;
    }
    
    public boolean getCooking(){
    	return cooking;
    }
    
    public void setScifi(){
    	this.scifi = scifi;
    }
    
    public boolean getScifi(){
    	return scifi;
    }
    

}