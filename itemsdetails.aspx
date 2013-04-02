<%@ Page Language="VB" AutoEventWireup="false" CodeFile="itemsdetails.aspx.vb" Inherits="detailsview" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="Stylesheet" type="text/css" href="./css/Style.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="ItemsDataSource" runat="server" 
            ConnectionString="<%$ ConnectionStrings:sc_TradeWebSite %>" 
            DeleteCommand="DELETE FROM [TradeItems] WHERE [pID] = @pID" 
            InsertCommand="INSERT INTO [TradeItems] ([pID], [pName], [pCategory], [pDescription], [pMaterial], [pAvailableSizes]) VALUES (@pID, @pName, @pCategory, @pDescription, @pMaterial, @pAvailableSizes)" 
            SelectCommand="SELECT * FROM [TradeItems] WHERE ([pID] = @pID)" 
            
            UpdateCommand="UPDATE [TradeItems] SET [pName] = @pName, [pCategory] = @pCategory, [pDescription] = @pDescription, [pMaterial] = @pMaterial, [pAvailableSizes] = @pAvailableSizes WHERE [pID] = @pID">
            <DeleteParameters>
                <asp:Parameter Name="pID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="pID" Type="Int32" />
                <asp:Parameter Name="pName" Type="String" />
                <asp:Parameter Name="pCategory" Type="String" />
                <asp:Parameter Name="pDescription" Type="String" />
                <asp:Parameter Name="pMaterial" Type="String" />
                <asp:Parameter Name="pAvailableSizes" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="pID" QueryStringField="pID" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="pName" Type="String" />
                <asp:Parameter Name="pCategory" Type="String" />
                <asp:Parameter Name="pDescription" Type="String" />
                <asp:Parameter Name="pMaterial" Type="String" />
                <asp:Parameter Name="pAvailableSizes" Type="String" />
                <asp:Parameter Name="pID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <a href="default.aspx">Home</a>
        <br />
        <a href="./Items.aspx">View All Items</a>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" 
            AutoGenerateRows="False" DataKeyNames="pID" DataSourceID="ItemsDataSource" 
            Height="50px" Width="899px">
            <Fields>
                <asp:BoundField DataField="pID" HeaderText="Product ID" ReadOnly="True" 
                    SortExpression="pID" />
                <asp:BoundField DataField="pName" HeaderText="Name" SortExpression="pName" />
                <asp:BoundField DataField="pCategory" HeaderText="Category" 
                    SortExpression="pCategory" />
                <asp:BoundField DataField="pDescription" HeaderText="Description" 
                    SortExpression="pDescription" />
                <asp:BoundField DataField="pMaterial" HeaderText="Material" 
                    SortExpression="pMaterial" />
                <asp:BoundField DataField="pAvailableSizes" HeaderText="Available Sizes" 
                    SortExpression="pAvailableSizes" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    
    </div>
    </form>
</body>
</html>
