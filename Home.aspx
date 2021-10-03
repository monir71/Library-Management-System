<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Library_Management_System.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Home : Library Management System
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">LibraryMS : Admin Area</a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav">
                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-user"></span>Readers<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#"><span class="glyphicon glyphicon-user"></span>Add Reader</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-user"></span>Update Reader</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-user"></span>Delete Reader</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-user"></span>Find Reader By Code</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-user"></span>Find Reader By Name</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-user"></span>Find Reader By Type</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-user"></span>Get Reader Sort</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-user"></span>Get All Reader Sort</a></li>
                        </ul>
                    </li>
                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-book"></span>Books<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#"><span class="glyphicon glyphicon-user"></span>Add Book</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-user"></span>Update Book</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-user"></span>Delete Book</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-user"></span>Find Book By Code</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-user"></span>Find Book By Type</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-user"></span>Find Book By Author</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-user"></span>Get All Books</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-user"></span>Get Book Sort</a></li>
                        </ul>
                    </li>


                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-th"></span>System Query<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#"><span class="glyphicon glyphicon-pencil"></span>Query</a></li>
                        </ul>
                    </li>

                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-cog"></span>Settings<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#"><span class="glyphicon glyphicon-cog"></span>Settings</a></li>
                        </ul>
                    </li>

                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-shopping-cart"></span>Books State<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span>Borrowings</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span>Returning</a></li>
                        </ul>
                    </li>
                </ul>

                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-shopping-user"></span>Admin<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#"><span class="glyphicon glyphicon-cog"></span>Add Admin</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-cog"></span>Update Admin</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-cog"></span>Delete Admin</a></li>
                            <li><a href="#"><span class="glyphicon glyphicon-cog"></span>Change Password</a></li>
                        </ul>
                    </li>
                    <li><a href="../"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!--CSS Spinner-->
    <div class="spinner-wrapper">
        <div class="spinner"></div>
        <h1 class="bg-primary text-center" style="padding-top: 20px; box-shadow: 3px 3px 15px grey; padding-bottom: 30px; margin-bottom: 10px; font-family: 'Faster One'">List Of Books</h1>
        <asp:GridView ID="GridView1" runat="server">
            <Columns>
                <asp:CommandField ShowEditButton="true" />
                <asp:CommandField ShowDeleteButton="true" />
            </Columns>
        </asp:GridView>

        <h1 class="bg-primary text-center" style="padding-top: 20px; box-shadow: 3px 3px 15px grey; padding-bottom: 30px; margin-bottom: 10px; font-family: 'Faster One'">List Of Readers</h1>

        <asp:GridView ID="GridView2" runat="server">
            <Columns>
                <asp:CommandField ShowEditButton="true" />
                <asp:CommandField ShowDeleteButton="true" />
            </Columns>
        </asp:GridView>


        <h1 class="bg-primary text-center" style="padding-top: 20px; box-shadow: 3px 3px 15px grey; padding-bottom: 30px; margin-bottom: 10px; font-family: 'Faster One'">List Of Admin</h1>
        <asp:GridView ID="GridView3" runat="server">
            <Columns>
                <asp:CommandField ShowEditButton="true" />
                <asp:CommandField ShowDeleteButton="true" />
            </Columns>
        </asp:GridView>


    </div>




</asp:Content>
