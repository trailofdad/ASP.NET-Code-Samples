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
    public partial class AlbumTrackList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<Track> GetAlbumTracks([QueryString("albumId")] int? albumId)
        {
            var _db = new MyTunes_ChristianHapgood.Models.MyTunesContext();
            IQueryable<Track> query = _db.Tracks;
            if (albumId.HasValue && albumId > 0)
            {
                query = query.Where(p => p.AlbumId == albumId);
            }
            return query;
        }
    }
}