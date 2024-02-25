<%@ Page Language="C#" CodeBehind="~/Exercise1.aspx.cs" Inherits="Module1Exercise1.Exercise1" %>

<%-- Exercise 1: Exploring Basic Controls of ASP.NET WebForms--%>
<%-- Useful References: https://www.tutorialspoint.com/asp.net/index.htm --%>
<!DOCTYPE html>
<html>
<head>
    <title>Malayan Music Player</title>
</head>
<body>
    <h1>Malayan Music Player</h1>
    
    <%-- !! IMPORTANT: Make sure to use the asp tag for each TODO  !! --%>
    <form runat="server">
        <%-- TODO 2.1 Create a label displaying the name of your favorite song and its artist (e.g. Yesterday - The Beatles)--%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_custom_controls.htm#:~:text=Label --%>
        <div>
               <asp:Label ID="Label1" runat="server" Text="redrum - 21 savage"></asp:Label>
        </div>

        <%-- TODO 2.2 Create an image that is 200px by 200x big showing the album cover of your favorite song. Make sure to set the alternative text. --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=Image%20Control --%>
        <div>
            <asp:Image ID="Image1" runat="server" ImageUrl="https://media.pitchfork.com/photos/659d9b69c6f7f7f715b07416/master/pass/21-Savage-American-Dream.jpg" Height="200px" Width="200px"></asp:Image>
        </div>
        
        <%-- TODO 2.3 Create three buttons with texts. "Prev", "Play", and "Next" --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=Button%20Controls --%>

        <asp:Button ID="Button1" runat="server" Text="Previous" />
        <asp:Button ID="Button2" runat="server" onclick="playMusic" Text="Play" />
        <asp:Button ID="Button3" runat="server" Text="Next" />


        <%-- TODO 2.4 Create a span. Once the play button is pressed, the span should display "Now playing <favorite song>" --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_first_example.htm#:~:text=convertoupper --%>
        <script runat="server">

            private void playMusic(object sender, EventArgs e)
            {
                string str = "Now Playing: Redrum";
                change_text.InnerHtml = str;
            }
            </script>
        <div>
            <span runat="server" id="change_text"></span>
        </div>

        <%-- TODO 2.5 Display the current time using the template syntax <%= %> --%>
        <%= DateTime.Now%>
        
    </form>
</body>
</html>
