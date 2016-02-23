﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MediaList.aspx.cs" Inherits="MyTunes_ChristianHapgood.MediaList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <section>
        <div>
            <hgroup>
                <h2><%: Page.Title %></h2>
            </hgroup>

            <asp:ListView ID="mediaList" runat="server" 
                DataKeyNames="MediaCategoryId" GroupItemCount="4"
                ItemType="MyTunes_ChristianHapgood.Models.MediaCategory" SelectMethod="GetMediaCategories">
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
                                    <a href="MediaTrackList.aspx?mediacategoryId=<%#:Item.MediaCategoryId%>">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="MediaTrackList.aspx?mediacategoryId=<%#:Item.MediaCategoryId%>">
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
