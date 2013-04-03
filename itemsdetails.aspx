<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="itemsdetails.aspx.vb" Inherits="itemsdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width: 877px">
    
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
        <asp:DetailsView ID="DetailsView1" runat="server" 
            AutoGenerateRows="False" DataKeyNames="pID" DataSourceID="ItemsDataSource" 
            Height="50px" Width="874px">
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
            </Fields>
        </asp:DetailsView>
    
    </div>
</asp:Content>

