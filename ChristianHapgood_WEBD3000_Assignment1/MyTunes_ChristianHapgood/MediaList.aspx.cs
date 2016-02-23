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
    public partial class MediaList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<MediaCategory> GetMediaCategories([QueryString("id")] int? mediacategoryId)
        {
            var _db = new MyTunes_ChristianHapgood.Models.MyTunesContext();
            IQueryable<MediaCategory> query = _db.MediaCategories;
            if (mediacategoryId.HasValue && mediacategoryId > 0)
            {
                query = query.Where(p => p.MediaCategoryId == mediacategoryId);
            }
            return query;
        }
    }
}