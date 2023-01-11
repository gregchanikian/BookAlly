package bookally;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class Recommendation {


    public int randomRecommendation(String username) throws Exception {

        int id;
        String sql = "SELECT book_id FROM " + username + " WHERE recommended = 0 ORDER BY RAND() LIMIT 1; ";
        Connection con = null;
        DB db = new DB();

        try {

            con = db.getConnection();
            PreparedStatement stmt = con.prepareStatement(sql);

            ResultSet rs = stmt.executeQuery();

            if (!rs.next()) {

                rs.close();
                stmt.close();
                db.close();
                return 0;
            }

            id = rs.getInt("book_id");
            rs.close();
            stmt.close();
            

            sql = "UPDATE " + username + " SET recommended = 1 WHERE book_id = ?;";

            PreparedStatement stmt2 = con.prepareStatement(sql);
		    stmt2.setInt(1, id);
			stmt2.executeUpdate();
			stmt2.close();
            
            
            db.close();
            return id; 

            
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        } finally {
            try {
                db.close();
            } catch (Exception e) {
                
            }
        }

    }



    public void addToWishlist(int id, String username) throws Exception {

        String sql = " INSERT INTO wishlist "
        + " (id, username) ";
        Connection con = null;
        DB db = new DB();
		try {

            con = db.getConnection();
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setInt( 1, id );
            stmt.setString( 2, username );

            
            stmt.close();
            db.close();


            
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
