<%@ Page Language="VB" AutoEventWireup="false" CodeFile="gridview.aspx.vb" Inherits="gridview" %>

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
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="pID" 
            DataSourceID="ItemsDataSource">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
