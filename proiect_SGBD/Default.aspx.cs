using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proiect_SGBD
{
    public partial class _Default : Page
    {

        SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=db1;Persist Security Info=True;User ID=robert;Password=romania123");

        double avg(double x, double y)
        {
            return (x + y) / 2;
        }

        double nrCredite(double x, double y)
        {
            return avg(x, y) * 62;  //31 credite per sem
        }

         void DisplayGrid()
        {
            SqlCommand command = new SqlCommand("select * from stud",con);
            SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
            DataTable dataTable = new DataTable();
            dataAdapter.Fill(dataTable);
            GridView1.DataSource = dataTable;
            GridView1.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                DisplayGrid();
            }
        }
        
        //INSERT BTN
        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand command = new SqlCommand("Insert into stud values('" + int.Parse(TextBox2.Text) + "','" + TextBox3.Text+"','"+TextBox4.Text+"','"+int.Parse(TextBox5.Text)+"','"+TextBox6.Text+"','"+int.Parse(TextBox7.Text)+"','"+int.Parse(TextBox8.Text)+"','"+ avg(double.Parse(TextBox7.Text), double.Parse(TextBox8.Text)) + "')",con);
            SqlCommand command1 = new SqlCommand("update stud_grades set CreditNumber ='" + nrCredite(double.Parse(TextBox7.Text), double.Parse(TextBox8.Text)) + "' where ID = '" + int.Parse(TextBox2.Text) + "'", con);
            command.ExecuteNonQuery();
            command1.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script","alert('Inserted successfully')" ,true);
            DisplayGrid();
        }

        //UPDATE BTN
        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand command = new SqlCommand("update stud set Name = '"+TextBox3.Text+ "',Address = '" + TextBox4.Text + "',Age ='"+int.Parse(TextBox5.Text)+"',Phone = '"+TextBox6.Text+"',FirstGrade = '"+int.Parse(TextBox7.Text)+"',SecondGrade = '"+int.Parse(TextBox8.Text)+"',AnnualGrade = '"+ avg(double.Parse(TextBox7.Text), double.Parse(TextBox8.Text)) + "' where ID = '"+int.Parse(TextBox2.Text)+"'", con);
            SqlCommand command1 = new SqlCommand("update stud_grades set CreditNumber ='" + nrCredite(double.Parse(TextBox7.Text), double.Parse(TextBox8.Text)) + "' where ID = '" + int.Parse(TextBox2.Text) + "'", con);
            command.ExecuteNonQuery();
            command1.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Updated successfully')", true);
            DisplayGrid();
        }

        //DELETE BTN
        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand command = new SqlCommand("Delete stud where ID = '" + int.Parse(TextBox2.Text) + "'", con);
            SqlCommand command1 = new SqlCommand("delete stud_grades where ID ='" + int.Parse(TextBox2.Text) + "'", con);
            command.ExecuteNonQuery();
            command1.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Deleted successfully')", true);
            DisplayGrid();
        }

        //SEARCH BTN
        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand("select * from stud where ID = '" + int.Parse(TextBox2.Text) + "'", con);
            SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
            DataTable dataTable = new DataTable();
            dataAdapter.Fill(dataTable);
            GridView1.DataSource = dataTable;
            GridView1.DataBind();
        }

        //RESET BTN
        protected void Button5_Click(object sender, EventArgs e)
        {
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            DisplayGrid();
        }

        //GET BTN
        protected void Button6_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand command = new SqlCommand("select * from stud where ID = '" + int.Parse(TextBox2.Text) + "'", con);
            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                TextBox3.Text = reader.GetValue(1).ToString();
                TextBox4.Text = reader.GetValue(2).ToString();
                TextBox5.Text = reader.GetValue(3).ToString();
                TextBox6.Text = reader.GetValue(4).ToString();
                TextBox7.Text = reader.GetValue(5).ToString();
                TextBox8.Text = reader.GetValue(6).ToString();
            }
        }
    }
}