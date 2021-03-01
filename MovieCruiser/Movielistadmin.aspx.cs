using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Com.Cognizant.Moviecruiser.Model;
using Com.Cognizant.Moviecruiser.Dao;

namespace MovieCruiser
{
    public partial class Movielistadmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MovieDaoCollection.MovieListInitialization();
            MovieDaoCollection movieList = new MovieDaoCollection();
            GridView1.DataSource = movieList.GetMovieListAdmin();
            GridView1.DataBind();
        }

       


    }
    }


   