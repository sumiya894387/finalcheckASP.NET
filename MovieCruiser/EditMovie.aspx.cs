using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Com.Cognizant.Moviecruiser.Dao;
using Com.Cognizant.Moviecruiser.Model;

namespace MovieCruiser
{
    public partial class EditMovie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {

                    MovieDaoCollection.MovieListInitialization();
                    int id = Convert.ToInt32(Request.QueryString["id"].ToString());
                    Movie obj = (from x in MovieDaoCollection.movieList
                                 where x.Id == id
                                 select x).FirstOrDefault();
                    if (obj != null)
                    {
                        TxtTitle.Text = obj.Title;
                        TxtGross.Text = obj.BoxOffice.ToString();
                        if (obj.Active)
                        {
                            RadioBtnYes.Checked = true;
                        }
                        else
                        {
                            RadioBtnNo.Checked = true;
                        }
                        textdate.Text = obj.DateOfLaunch.ToString();
                        textgenre.SelectedValue = obj.Genre;
                        if (obj.HasTeaser)
                        {
                            hasteaser.Checked = true;
                        }
                        else
                        {
                            hasteaser.Checked = false;
                        }


                    }

                }
            }
        }
       
        protected void Button1_Click(object sender, EventArgs e)
        {
            // MovieDaoCollection.MovieListInitialization();
            int id = Convert.ToInt32(Request.QueryString["id"].ToString());

            Boolean active;
            Boolean hasTeaser;
            if (RadioBtnYes.Text == "Yes")
            {
                active = true;
            }
            else
            {
                active = false;
            }

            if (hasteaser.Checked)
            {
                hasTeaser = true;
            }
            else
            {
                hasTeaser = false;
            }
            MovieDaoCollection.movieList.Where(w => w.Id == id).ToList().ForEach(i =>
            {
                i.Title = TxtTitle.Text;
                i.BoxOffice = Convert.ToInt64(TxtGross.Text);
                i.Active = active;
                i.DateOfLaunch = textdate.Text;
                i.Genre = textgenre.SelectedValue;
                i.HasTeaser = hasTeaser;
            });
            Response.Redirect("EditMovieStatus.aspx");
        }
    }
}


