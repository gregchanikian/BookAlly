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

		                books.add(new Book( rs.getString("���������"),rs.getInt("book_id"),rs.getString("������"),rs.getString("����������"),rs.getString("���������"),rs.getString("�������"),rs.getString("����������"),rs.getString("�������")));

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

			Book book = new Book( rs.getString("���������"),rs.getInt("book_id"),rs.getString("������"),rs.getString("����������"),rs.getString("���������"),rs.getString("�������"),rs.getString("����������"),rs.getString("�������"));
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
public List<Book> searchBook(String username) throws Exception{

			List<Book> books = new ArrayList<Book>();
			String sql = "SELECT * FROM wishlist,book_info WHERE wishlist.book_id=book_info.Book_id AND wishlist.username=?";
			Connection con = null;
			DB db = new DB();

			try {

				con = db.getConnection();
				PreparedStatement stmt = con.prepareStatement(sql);
				stmt.setString(1,username);

				ResultSet rs = stmt.executeQuery();

				if (!rs.next()) {

					rs.close();
					stmt.close();
					db.close();
					return null;
				}

				while (rs.next()) {


 					books.add(new Book( rs.getString("���������"),rs.getInt("book_id"),rs.getString("������"),rs.getString("����������"),rs.getString("���������"),rs.getString("�������"),rs.getString("����������"),rs.getString("�������")));
 				}

				rs.close();
				stmt.close();
				db.close();

				return books;


			} catch (Exception e) {

				throw new Exception(e.getMessage());

			} finally {

				try {
					db.close();
				} catch (Exception e) {

			}
	}
}

public Book findBookbyTitle(String title) throws Exception {

	String sql = "SELECT * FROM book_info WHERE Τίτλος =?";
	Connection con = null;
	DB db = new DB();

	try {

		con = db.getConnection();
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.setString(1,title);

		ResultSet rs = stmt.executeQuery();

		if (!rs.next()) {

			rs.close();
			stmt.close();
			db.close();
			return null;
		}

		Book book = new Book( rs.getString("���������"),rs.getInt("book_id"),rs.getString("������"),rs.getString("����������"),rs.getString("���������"),rs.getString("�������"),rs.getString("����������"),rs.getString("�������"));
		rs.close();
		stmt.close();
		db.close();

		return book;


	} catch (Exception e) {

		throw new Exception("Sorry, we cannot find the book you are asking for. Try another one.");

	} finally {

		try {
			db.close();
		} catch (Exception e) {

	}
}


}

}
