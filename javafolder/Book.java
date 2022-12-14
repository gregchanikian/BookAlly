package bookally;

public class Book {

    private String category;
    private int book_id;
    private String title;
    private String author;
    private String description;
    private String pages;
    private String year;
    private String edition;



    public Book(String category, int book_id, String title, String author, String description,String pages,String year,String edition ) {
        this.category = category;
        this.book_id = book_id;
        this.title = title;
        this.author = author;
        this.description = description;
        this.pages = pages;
		this.year = year;
        this.edition = edition;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public int getBookId() {
        return book_id;
    }

    public void setBookId(int book_id) {
        this.book_id = book_id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDescription() {
        return description;
    }

    public void setYear(String year) {
            this.year = year;
        }

    public String getYear() {
           return year;
    }

    public void setEdition(String edition) {
            this.edition = edition;
        }

    public String getEdition() {
          return edition;
    }



}