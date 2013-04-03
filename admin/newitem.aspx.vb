
Partial Class admin_newitem
    Inherits System.Web.UI.Page
    Protected Sub DetailsView1_ItemInserted(sender As Object, e As System.Web.UI.WebControls.DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted
        Response.Redirect("./Items.aspx")
    End Sub
End Class
