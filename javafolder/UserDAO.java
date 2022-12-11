package bookally;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;



public class UserDAO {


	public List<User> getUsers() throws Exception {


		List<User> users = new ArrayList<User>();

		        String sql = "SELECT * FROM user;";
		        Connection con = null;
		        DB db = new DB();

		        try {

		            con = db.getConnection();
		            PreparedStatement stmt = con.prepareStatement(sql);
		            ResultSet rs = stmt.executeQuery();

		            while (rs.next()) {

		                users.add(new User( rs.getString("USERNAME"),rs.getString("PASSWORD"), rs.getInt("POINTER"),rs.getBoolean("BIOGRAPHY"),rs.getBoolean("ART"),rs.getBoolean("THRILLER"),rs.getBoolean("PSYCHOLOGY"),rs.getBoolean("HISTORY"), rs.getBoolean("ROMANCE"),rs.getBoolean("ECONOMY"),rs.getBoolean("PHYLOSOPHY"),rs.getBoolean("POETRY"),rs.getBoolean("ADVENTURE"),rs.getBoolean("COOKING"),rs.getBoolean("SCI_FI")));

		            }

		            rs.close();
		            stmt.close();
		            db.close();

            return users;
            }catch (Exception e) {

			          throw new Exception(e.getMessage());

			} finally {

			          try {
			              db.close();
			          } catch (Exception e) {

			          }
			}


	}

	public User authenticate(String username, String password) throws Exception {


		String sql = "SELECT * FROM user WHERE username=? AND password=?";
		Connection con = null;
		DB db = new DB();

		try {

			con = db.getConnection();
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1,username);
			stmt.setString(2,password);

			ResultSet rs = stmt.executeQuery();

			if (!rs.next()) {

				rs.close();
				stmt.close();
				db.close();
				throw new Exception("Wrong username or password");
			}

			User user = new User( rs.getString("USERNAME"),rs.getString("PASSWORD"), rs.getInt("POINTER"),rs.getBoolean("BIOGRAPHY"),rs.getBoolean("ART"),rs.getBoolean("THRILLER"),rs.getBoolean("PSYCHOLOGY"),rs.getBoolean("HISTORY"), rs.getBoolean("ROMANCE"),rs.getBoolean("ECONOMY"),rs.getBoolean("PHYLOSOPHY"),rs.getBoolean("POETRY"),rs.getBoolean("ADVENTURE"),rs.getBoolean("COOKING"),rs.getBoolean("SCI_FI"));
			rs.close();
			stmt.close();
			db.close();

			return user;


			} catch (Exception e) {

				throw new Exception(e.getMessage());

			} finally {

				try {
					db.close();
			} catch (Exception e) {

			}

		}
	}


	public void createAccount(User user) throws Exception {


		String sql = "INSERT INTO user"
            + " (USERNAME, PASSWORD, POINTER, BIOGRAPHY, ART, THRILLER, PSYCHOLOGY, HISTORY, ROMANCE, ECONOMY, PHYLOSOPHY, POETRY, ADVENTURE, COOKING, SCI_FI ) VALUES (?, ? ,?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";

		String sql1 = "SELECT * FROM user WHERE username = '"+user.getUsername()+"'";
        Connection con = null;
        DB db = new DB();

		try {

		    con = db.getConnection();
            PreparedStatement stmt1 = con.prepareStatement(sql1);


            ResultSet rs = stmt1.executeQuery();
            if (rs.next()) {
			    rs.close();
			    stmt1.close();
			    db.close();
			    throw new Exception("Sorry, username has already created an account.");
			}

			try {

				con = db.getConnection();
				PreparedStatement stmt = con.prepareStatement(sql);
				// setting parameters
				stmt.setString(1, user.getUsername());
				stmt.setString(2, user.getPassword());
				stmt.setInt(3,user.getUserId());
				stmt.setBoolean(4, user.getBiography());
				stmt.setBoolean(5, user.getArt());
				stmt.setBoolean(6, user.getThriller());
				stmt.setBoolean(7, user.getPsychology());
				stmt.setBoolean(8, user.getHistory());
				stmt.setBoolean(9, user.getRomance());
				stmt.setBoolean(10, user.getEconomy());
				stmt.setBoolean(11, user.getPhilosophy());
				stmt.setBoolean(12, user.getPoetry());
				stmt.setBoolean(13, user.getAdventure());
				stmt.setBoolean(14, user.getCooking());
				stmt.setBoolean(15, user.getScifi());

				stmt.executeUpdate();
				stmt.close();
				db.close();

			} catch (Exception e) {
				throw new Exception(e.getMessage());
			}
		} catch (Exception e) {

				throw new Exception(e.getMessage());

		} finally {

				try {
					db.close();
				} catch (Exception e) {

				}
		}
	}

}
