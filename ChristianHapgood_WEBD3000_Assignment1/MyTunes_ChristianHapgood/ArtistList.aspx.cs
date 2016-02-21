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
    public partial class ArtistList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<Artist> GetArtists([QueryString("id")] int? artistId)
        {
            var _db = new MyTunes_ChristianHapgood.Models.MyTunesContext();
            IQueryable<Artist> query = _db.Artists;
            if (artistId.HasValue && artistId > 0)
            {
                query = query.Where(p => p.ArtistId == artistId);
            }
            return query;
        }
    }
}