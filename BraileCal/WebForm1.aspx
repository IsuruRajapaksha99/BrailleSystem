<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="BraileCal.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 301px;
        }
       form {
  max-width: 800px;
  margin: 0 auto;
  padding: 20px;
  font-family: Arial, sans-serif;
  background-color: #f7f7f7;
  border-radius: 8px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

/* Style the table inside the form */
table {
  width: 100%;
  border-collapse: collapse;
}

/* Style the table header cells */
th {
  text-align: left;
  background-color: #4CAF50;
  color: white;
  padding: 12px;
}

/* Style the table cells */
td {
  padding: 12px;
  border: 1px solid #ddd;
}

/* Style the first column cells */
td.auto-style1 {
  width: 40%;
  font-weight: bold;
}

/* Style the input fields */
input[type="text"],
input[type="number"] {
  width: 100%;
  padding: 10px;
  margin: 8px 0;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

/* Style the button */
button {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

button:hover {
  background-color: #3e8e41;
}

/* Style the result labels */
label {
  font-weight: bold;
  margin-right: 10px;
  color: #4CAF50;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td class="auto-style1"> 
                        <b>To calculate circumference enter</b></td>
                    <td>
                        Radius<asp:TextBox ID="circlebox" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1"> 
                        <b>To calculate perimeter of a rectangle enter </b>
                    </td>
                    <td>
                        Length <asp:TextBox ID="rectLength" runat="server" Width="127px"></asp:TextBox>
                    </td>
                    <td>
                        Breadth <asp:TextBox ID="rectBreadth" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                     <td class="auto-style1"> 
                        <b>To calculate perimeter of a traingle enter </b>
                    </td>
                    <td>
                        Side1 <asp:TextBox ID="side1Box" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        Side2 <asp:TextBox ID="side2Box" runat="server"></asp:TextBox>
                    </td>
                     <td>
                        Side3 <asp:TextBox ID="side3Box" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr> 
                    <td class="auto-style1"> Result </td>
                    <td>
                        <asp:Label ID="lblresult" runat="server" Text="Circumference">
                        </asp:Label></td>
                    <td>
                        <asp:Label ID="lblresult1" runat="server" Text="Rectangle Perimeter">
                        </asp:Label></td>
                    <td>
                        <asp:Label ID="lblresult2" runat="server" Text="Traingle Perimeter">
                        </asp:Label></td>
                </tr>
                <tr>
                     <td class="auto-style1">No of dots prints </td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Dots in Circle">
                        </asp:Label></td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Dots in rectangle">
                        </asp:Label></td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Dots in perimeter">
                        </asp:Label></td>
                </tr>
                <tr colspan="2">
                   <td class="auto-style1">
                        <asp:Button ID="Button" runat="server" Text="Calculate" OnClick="Button_Click" />
                   </td>
                </tr>
            </table>




        </div>
    </form>
</body>
</html>
