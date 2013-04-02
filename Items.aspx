<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Items.aspx.vb" Inherits="gridview" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="ItemsDataSource" runat="server" 
            ConnectionString="<%$ ConnectionStrings:sc_TradeWebSite %>" 
            DeleteCommand="DELETE FROM [TradeItems] WHERE [pID] = @pID" 
            InsertCommand="INSERT INTO [TradeItems] ([pID], [pPicture], [pName], [pCategory], [pDescription], [pMaterial], [pAvailableSizes]) VALUES (@pID, @pPicture, @pName, @pCategory, @pDescription, @pMaterial, @pAvailableSizes)" 
            SelectCommand="SELECT * FROM [TradeItems]" 
            
            UpdateCommand="UPDATE [TradeItems] SET [pPicture] = @pPicture, [pName] = @pName, [pCategory] = @pCategory, [pDescription] = @pDescription, [pMaterial] = @pMaterial, [pAvailableSizes] = @pAvailableSizes WHERE [pID] = @pID">
            <DeleteParameters>
                <asp:Parameter Name="pID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="pID" Type="Int32" />
                <asp:Parameter Name="pPicture" Type="Object" />
                <asp:Parameter Name="pName" Type="String" />
                <asp:Parameter Name="pCategory" Type="String" />
                <asp:Parameter Name="pDescription" Type="String" />
                <asp:Parameter Name="pMaterial" Type="String" />
                <asp:Parameter Name="pAvailableSizes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="pPicture" Type="Object" />
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
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="pID" 
            DataSourceID="ItemsDataSource" PageSize = "7">
            <Columns>
                <asp:BoundField DataField="pID" HeaderText="Product ID" ReadOnly="True" 
                    SortExpression="pID" />
                <asp:BoundField DataField="pName" HeaderText="Name" SortExpression="pName" />
                <asp:HyperLinkField DataNavigateUrlFields="pID" 
                    DataNavigateUrlFormatString="itemsdetails.aspx?pID={0}" Text="View Details" />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
