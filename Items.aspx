<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Items.aspx.vb" Inherits="Items" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
</asp:Content>

