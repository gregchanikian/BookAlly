package bookally;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class BookService {


	public List<Book> getBooks() throws Exception {


		List<Book> books = new ArrayList<Book>();

		        String sql = "SELECT * FROM book_info;";
		        Connection con = null;
		        DB db = new DB();

		        try {

		            con = db.getConnection();
		            PreparedStatement stmt = con.prepareStatement(sql);
		            ResultSet rs = stmt.executeQuery();

		            while (rs.next()) {

		                books.add(new Book( rs.getString("Κατηγορία"),rs.getInt("book_id"),rs.getString("Τίτλος"),rs.getString("Συγγραφέας"),rs.getString("Περιγραφή"),rs.getString("Σελίδες"),rs.getString("Χρονολογία"),rs.getString("Εκδότης")));

		            }

		            rs.close();
		            stmt.close();
		            db.close();

            return books;
            }catch (Exception e) {

			          throw new Exception(e.getMessage());

			} finally {

			          try {
			              db.close();
			          } catch (Exception e) {

			          }
			}


	}

	public Book findBook(int id) throws Exception {

		String sql = "SELECT * FROM book_info WHERE book_id=?";
		Connection con = null;
		DB db = new DB();

		try {

			con = db.getConnection();
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setInt(1,id);

			ResultSet rs = stmt.executeQuery();

			if (!rs.next()) {

				rs.close();
				stmt.close();
				db.close();
				return null;
			}

			Book book = new Book( rs.getString("Κατηγορία"),rs.getInt("book_id"),rs.getString("Τίτλος"),rs.getString("Συγγραφέας"),rs.getString("Περιγραφή"),rs.getString("Σελίδες"),rs.getString("Χρονολογία"),rs.getString("Εκδότης"));
			rs.close();
			stmt.close();
			db.close();

			return book;


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
