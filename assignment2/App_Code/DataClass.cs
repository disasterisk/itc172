using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// This class will connect to the database
/// It will have methods to retrieve the Services
/// It will also retrieve the grants for that service
/// Jordan Blackmon 2016-04-12
/// </summary>
public class DataClass
{
    SqlConnection connect;
    public DataClass()
    {
        connect = new SqlConnection(ConfigurationManager.ConnectionStrings["BookReviewConnectionString"].ToString());
    }
    public DataTable getAuthor()
    {
        DataTable tbl;

        string sql = "SELECT authorkey, authorname FROM Author";
        SqlCommand cmd = new SqlCommand(sql, connect);
        tbl = ReadData(cmd);

        return tbl;
    }
    public DataTable getBooks(int authorKey)
    {
        DataTable tbl = null;
        string sql = "SELECT * FROM book INNER JOIN authorbook ON book.bookkey = authorbook.bookkey WHERE authorkey = @authorkey";

        SqlCommand cmd = new SqlCommand(sql, connect);
        cmd.Parameters.AddWithValue("@authorkey", authorKey);
        tbl = ReadData(cmd);

        return tbl;
    }
    private DataTable ReadData(SqlCommand cmd)
    {
        SqlDataReader reader;
        DataTable tbl = new DataTable();

        connect.Open();
        reader = cmd.ExecuteReader();
        tbl.Load(reader);
        reader.Close();
        connect.Close();

        return tbl;
    }
}