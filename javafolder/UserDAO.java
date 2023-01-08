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

		                users.add(new User( rs.getString("USERNAME"),rs.getString("PASSWORD"), rs.getInt("POINTER"),rs.getString("BIOGRAPHY"),rs.getString("ART"),rs.getString("THRILLER"),rs.getString("PSYCHOLOGY"),rs.getString("HISTORY"), rs.getString("ROMANCE"),rs.getString("ECONOMY"),rs.getString("PHILOSOPHY"),rs.getString("POETRY"),rs.getString("ADVENTURE"),rs.getString("COOKING"),rs.getString("SCI_FI")));

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


		String sql = "SELECT * FROM user WHERE username=? AND password=? ;";
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

			User user = new User( rs.getString("USERNAME"),rs.getString("PASSWORD"), rs.getInt("POINTER"),rs.getString("BIOGRAPHY"),rs.getString("ART"),rs.getString("THRILLER"),rs.getString("PSYCHOLOGY"),rs.getString("HISTORY"), rs.getString("ROMANCE"),rs.getString("ECONOMY"),rs.getString("PHILOSOPHY"),rs.getString("POETRY"),rs.getString("ADVENTURE"),rs.getString("COOKING"),rs.getString("SCI_FI"));
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


		String sql = "SELECT * FROM user WHERE username = ? ;";
        Connection con = null;
        DB db = new DB();

		try {

            con = db.getConnection();
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString( 1, user.getUsername() );
			

            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {

                rs.close();
                stmt.close();
                db.close();
                throw new Exception("Sorry, username already registered.");

            }else{
                sql = "INSERT INTO  user " 
                + " (USERNAME, PASSWORD, POINTER, BIOGRAPHY, ART, THRILLER, PSYCHOLOGY, HISTORY, ROMANCE, ECONOMY, PHILOSOPHY, POETRY, ADVENTURE, COOKING, SCI_FI ) VALUES (?, ? ,?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";

				PreparedStatement stmt2 = con.prepareStatement(sql);
				// setting parameters
				stmt2.setString(1, user.getUsername());
				stmt2.setString(2, user.getPassword());
				stmt2.setInt(3,user.getpointer());
				stmt2.setString(4, user.getBiography());
				stmt2.setString(5, user.getArt());
				stmt2.setString(6, user.getThriller());
				stmt2.setString(7, user.getPsychology());
				stmt2.setString(8, user.getHistory());
				stmt2.setString(9, user.getRomance());
				stmt2.setString(10, user.getEconomy());
				stmt2.setString(11, user.getPhilosophy());
				stmt2.setString(12, user.getPoetry());
				stmt2.setString(13, user.getAdventure());
				stmt2.setString(14, user.getCooking());
				stmt2.setString(15, user.getScifi());
				
				
				sql = "create table "+ user.getUsername() 
				+ "  (book_id int, counter int AUTO_INCREMENT primary key, recommended boolean not null default false,  FOREIGN KEY (book_id) REFERENCES book_info(book_id,FOREIGN KEY (USERNAME) REFERENCES user(USERNAME));";
				PreparedStatement stmt3 = con.prepareStatement(sql);

				
				stmt2.executeUpdate();
				stmt2.close();
				stmt3.executeUpdate();
				stmt3.close();


				//fills the recommend table with the books that the user sellected

				String [] categories = { user.getBiography(), user.getArt(), user.getThriller(), user.getPsychology(), user.getHistory(), user.getRomance(), user.getEconomy(), user.getPhilosophy(), user.getPoetry(), user.getAdventure(),user.getCooking(),user.getScifi() };
				String [] categoryNames = { "����������-��������������", "�����", "����������-������", "������������-���������", "�������", "���������", "����������", "���������", "������", "����������", "���������", "������������� ���������"};

				for(int i=0; i < 12;i++) {

					if (!(categories[i] == null)) {

						for(int j=0;j<10;j++){

							sql = "INSERT INTO " + user.getUsername()  + " SELECT Book_id FROM book_info WHERE ��������� = " + categoryNames[j]+ ";";
							PreparedStatement stmt4 = con.prepareStatement(sql);
							stmt4.executeUpdate();
							stmt4.close();

						}
					}
				}
				


           		db.close();
			}

  
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        } finally {
            try {
                db.close();
            } catch (Exception e) {
                
            }
        }
		
	}//end of register

			
}