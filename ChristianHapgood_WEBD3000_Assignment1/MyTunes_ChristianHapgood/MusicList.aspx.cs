using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MyTunes_ChristianHapgood.Models;
using System.Web.ModelBinding;

namespace MyTunes_ChristianHapgood
{
    public partial class MusicList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<Genre> GetGenres([QueryString("id")] int? genreId)
        {
            var _db = new MyTunes_ChristianHapgood.Models.MyTunesContext();
            IQueryable<Genre> query = _db.Genres;
            if (genreId.HasValue && genreId > 0)
            {
                query = query.Where(p => p.GenreId == genreId);
            }
            return query;
        }
    }
}