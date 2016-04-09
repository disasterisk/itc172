using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void greet(object sender, EventArgs e)
    {
        if (userName.Text == "")
        {
            greeting.Text = "Hello there.";
        }
        else
        {
            greeting.Text = "Hello, " + userName.Text;
        }
    }
    protected void updateCalendar(object sender, EventArgs e)
    {
        var newMonth = 0;
        var newYear = 0;
        if (int.Parse(month.SelectedValue) != 0)
        {
            newMonth = int.Parse(month.SelectedValue);
        }
        else
        {
            newMonth = birthdayCalendar.VisibleDate.Month;
        }
        if (int.Parse(year.SelectedValue) != 0)
        {
            newYear = int.Parse(year.SelectedValue);
        }
        else
        {
            newYear = birthdayCalendar.VisibleDate.Year;
        }
        birthdayCalendar.VisibleDate = new DateTime (newYear, newMonth, 1);
    }
    protected void submitButton_Click(object sender, EventArgs e)
    {
        timeToBirthday();
    }
    
    protected void timeToBirthday()
    {
        DateTime nextBDay;
        int bYear = birthdayCalendar.SelectedDate.Year;
        int bMonth = birthdayCalendar.SelectedDate.Month;
        int bDay = birthdayCalendar.SelectedDate.Day;
        if (birthdayCalendar.SelectedDate == DateTime.MinValue)
        {
            birthdayCalendar.SelectedDate = DateTime.Today;
        }
        if (bMonth < DateTime.Today.Month || bMonth == DateTime.Today.Month && bDay < DateTime.Today.Day)
        {
            nextBDay = new DateTime(DateTime.Today.Year+1, bMonth, bDay);
        }
        else
        {

            nextBDay = new DateTime(DateTime.Today.Year, bMonth, bDay);
        }
        String output;
        if (nextBDay == DateTime.Today)
        {
            output = "Happy Birthday!";
        }
        else
        {
            TimeSpan interval = nextBDay.Subtract(DateTime.Now);
            output = interval.Days.ToString() + " days, " + interval.Hours.ToString() + " hours and " + interval.Minutes.ToString() + " minutes until your next birthday!";
        };
        results.Text = output;
    }
}