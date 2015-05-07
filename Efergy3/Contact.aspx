<%@ Page Title="Контакт" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Efergy3.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
   
     
    <div class="area2-container">
        <div class="area2">
            <div class="breadcrumbs">
                <ul>
                    <li class="home">
                        <a href="Default.aspx" title="Go to Home Page">Почетна</a>
                        <span>/ </span>
                    </li>
                    <li class="cms_page">
                        <strong>Контакт</strong>
                    </li>
                </ul>
            </div>
            <div class="block block-freeshipping">
                <p>Free shipping on orders over $96.00</p>
            </div>
        </div>
    </div>


    <div class="float-right" style="background-image:url(Images/kontakt.png)">
    <section class="contact">
        <header>
            <h3 class="cattitle2">Телефон:</h3>
        </header>
        <p>
            <span class="label">Главен:</span>
            <span><span class="tcolor">+389 2 3290-580</span></span>
        </p>
       
    </section>

    <section class="contact">
        <header>
            <h3 class="cattitle2">Електронска пошта:</h3>
        </header>
        <p>
            <span class="label">Поддршка:</span>
            <span><a href="mailto:contact@euronetcom.mk">contact@euronetcom.mk</a></span>
        </p>
        
    </section>

    <section class="contact">
        <header>
            <h3 class="cattitle2">Адреса:</h3>
        </header>
        <p>
            <span class="label">Ул."Кеј 13-ти Ноември, кула бр.3, локал 238-Скопје, Македонија</span>
            
        </p>
    </section>
        </div>
    <div class="float-left">
        <asp:Panel ID="Panel1" runat="server" DefaultButton="btnSubmit">
    <p>
        Ве молиме пополнете ги бараните податоци.</p>
    <p>
        Име *

        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*"
            ControlToValidate="YourName" ValidationGroup="save" /><br />
        <asp:TextBox class="input-text" ID="YourName" runat="server" Width="250px" /><br />

        Е-пошта *
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
            ControlToValidate="YourEmail" ValidationGroup="save" /><br />
        <asp:TextBox class="input-text" ID="YourEmail" runat="server" Width="250px" />
        <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator23"
            SetFocusOnError="true" Text="Example: username@gmail.com" ControlToValidate="YourEmail"
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"
            ValidationGroup="save" /><br />

        Предмет *
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
            ControlToValidate="YourSubject" ValidationGroup="save" /><br />
        <asp:TextBox class="input-text" ID="YourSubject" runat="server" Width="400px" /><br />

        Прашање *
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"
            ControlToValidate="Comments" ValidationGroup="save" /><br />
        <asp:TextBox class="input-text" ID="Comments" runat="server" 
                TextMode="MultiLine" Rows="10" Width="400px" />
    </p>
    <p>
        <asp:Button class="fakebutton" ID="btnSubmit" runat="server" Text="Испрати" 
                    OnClick="Button1_Click" ValidationGroup="save" />

       
    </p>
</asp:Panel>
<p>
    <asp:Label ID="DisplayMessage" runat="server" Visible="false" />
</p> 
    </div>
</asp:Content>