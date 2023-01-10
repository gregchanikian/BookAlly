package bookally;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class Recommendation {


    public Book randomRecommendation(User user) throws Exception {

        String sql = "SELECT book_id FROM " + user.getUsername() + " ORDER BY RAND() LIMIT 1";
        Connection con = null;
        DB db = new DB();

        try{

        }

        return null;

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
