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
    public partial class MovieListCustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

           
            MovieDaoCollection movieList = new MovieDaoCollection();
            MovieDaoCollection.MovieListInitialization();
            GridView1.DataSource = movieList.GetMovieListCustomer();
            GridView1.DataBind();

            if (Request.QueryString["id"] != null)
            {
                FavoritesDaoCollection favoritesDao = new FavoritesDaoCollection();
                FavoritesDaoCollection.FavoritesListInitialization();
                int id = Convert.ToInt32(Request.QueryString["id"].ToString());
                Movie obj = (from x in MovieDaoCollection.movieList
                             where x.Id == id
                             select x).FirstOrDefault();

                if (obj != null)
                {
                    if (!FavoritesDaoCollection.favoritesMovieList.Contains(obj))
                    {
                        FavoritesDaoCollection.favoritesMovieList.Add(obj);
                        BindData();
                    }
                    Boolean ShowPanel = Convert.ToBoolean(Request.QueryString["ShowPanel"].ToString());
                    if (ShowPanel)
                    {
                        NotificationPanel.Visible = true;

                    }
                }
            }
        }
        public void BindData()
        {
            GridView1.DataSource = FavoritesDaoCollection.favoritesMovieList;
            GridView1.DataBind();

        }
    }
}