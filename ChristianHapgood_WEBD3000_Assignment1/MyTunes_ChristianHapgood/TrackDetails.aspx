<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TrackDetails.aspx.cs" Inherits="MyTunes_ChristianHapgood.TrackDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="trackDetail" runat="server" ItemType="MyTunes_ChristianHapgood.Models.Track" SelectMethod ="GetTrack" RenderOuterTable="false">
        <ItemTemplate>
            <div>
                <h1><%#:Item.Name %></h1>
            </div>
            <br />
            <table>
                <tr>
                        <td style="vertical-align: top; text-align:left;">                        
                        <br />
                        <span><b>Price:</b>&nbsp;<%#: String.Format("{0:c}", Item.UnitPrice) %></span>
                        <br />                            
                        <span><b>Artist:<%--</b>&nbsp;<%#:Artist.Name %></span>--%>
                        <br />
                        <span><b>Album:</b>&nbsp;<%#:Item.Album.Title %></span>
                        <br />
                        <span><b>Genre:</b>&nbsp;<%#:Item.Genre.Name %></span>
                        <br />
                        <span><b>Media Type:</b>&nbsp;<%#:Item.MediaType.Name %></span>
                        <br />
                        <span><b>Composer:</b>&nbsp;<%#:Item.Composer %></span>
                        <br />
                        <span><b>Duration:</b>&nbsp;<%#:Math.Round((Item.Milliseconds / 60000.00), 2) %>&nbsp;minutes</span>
                        <br /> 
                        <br />
                        <a href="/AddToCart.aspx?trackId=<%#:Item.TrackId %>">               
                                        <span class="TrackListItem">
                                            <b>Add To Cart<b>
                                        </span>           
                                    </a>                        
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:FormView>
</asp:Content>
