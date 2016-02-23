using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MyTunes_ChristianHapgood.Models;
using MyTunes_ChristianHapgood.Logic;

namespace MyTunes_ChristianHapgood.Admin
{
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string trackAction = Request.QueryString["TrackAction"];
            if (trackAction == "add")
            {
                LabelAddStatus.Text = "Track added!";
            }

            if (trackAction == "remove")
            {
                LabelRemoveStatus.Text = "Track removed!";
            }
        }

//        protected void AddTrackButton_Click(object sender, EventArgs e)
//        {
//            // Add track data to DB.
//            AddTracks tracks = new AddTracks();
//            bool addSuccess = tracks.AddTrack(AddTrackName.Text,
//                AddTrackPrice.Text, DropDownAddGenre.SelectedValue);
//            if (addSuccess)
//            {
//                // Reload the page.
//                string pageUrl = Request.Url.AbsoluteUri.Substring(0, Request.Url.AbsoluteUri.Count() - Request.Url.Query.Count());
//                Response.Redirect(pageUrl + "?TrackAction=add");
//            }
//            else
//            {
//                LabelAddStatus.Text = "Unable to add new track to database.";
//            }
//        }
//            else
//            {
//                LabelAddStatus.Text = "Unable to accept file type.";
//            }
//}

//public IQueryable GetGenres()
//{
//    var _db = new MyTunes_ChristianHapgood.Models.MyTunesContext();
//    IQueryable query = _db.Genres;
//    return query;
//}

//public IQueryable GetTracks()
//{
//    var _db = new MyTunes_ChristianHapgood.Models.MyTunesContext();
//    IQueryable query = _db.Tracks;
//    return query;
//}

//protected void RemoveTrackButton_Click(object sender, EventArgs e)
//{
//    using (var _db = new MyTunes_ChristianHapgood.Models.MyTunesContext())
//    {
//        int trackId = Convert.ToInt16(DropDownRemoveTrack.SelectedValue);
//        var myItem = (from c in _db.Tracks where c.TrackId == trackId select c).FirstOrDefault();
//        if (myItem != null)
//        {
//            _db.Tracks.Remove(myItem);
//            _db.SaveChanges();

//            // Reload the page.
//            string pageUrl = Request.Url.AbsoluteUri.Substring(0, Request.Url.AbsoluteUri.Count() - Request.Url.Query.Count());
//            Response.Redirect(pageUrl + "?TrackAction=remove");
//        }
//        else
//        {
//            LabelRemoveStatus.Text = "Unable to locate track.";
//        }
//    }
//}
    }
}