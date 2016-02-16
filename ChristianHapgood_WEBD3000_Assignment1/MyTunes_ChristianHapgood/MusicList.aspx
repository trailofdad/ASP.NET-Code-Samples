<%@ Page Title="Music" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MusicList.aspx.cs" Inherits="MyTunes_ChristianHapgood.MusicList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section>
        <div>
            <hgroup>
                <h2><%: Page.Title %></h2>
            </hgroup>

            <asp:ListView ID="genreList" runat="server" 
                DataKeyNames="GenreId" GroupItemCount="4"
                ItemType="MyTunes_ChristianHapgood.Models.Genre" SelectMethod="GetGenres">
                <EmptyDataTemplate>
                    <table >
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td/>
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <ItemTemplate>
                    <td runat="server">
                        <table>
                            <tr>
                                <td>
                                    <a href="TrackList.aspx?genreId=<%#:Item.GenreId%>">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="TrackList.aspx?genreId=<%#:Item.GenreId%>">
                                        <span>
                                            <%#:Item.Name%>
                                        </span>
                                    </a>
                                    <br />                                
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                        </p>
                    </td>
                </ItemTemplate>
                <LayoutTemplate>
                    <table style="width:100%;">
                        <tbody>
                            <tr>
                                <td>
                                    <table id="groupPlaceholderContainer" runat="server" style="width:100%">
                                        <tr id="groupPlaceholder"></tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                            </tr>
                            <tr></tr>
                        </tbody>
                    </table>
                </LayoutTemplate>
            </asp:ListView>
        </div>
    </section>
</asp:Content>
