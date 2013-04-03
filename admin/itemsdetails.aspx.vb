
Partial Class admin_itemsdetails
    Inherits System.Web.UI.Page
    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As System.Web.UI.WebControls.DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted
        Dim delItem As String = e.Values("pName").ToString()
        Response.Write("The record ")
        Response.Write("<span class=deleteditemshighlight>")
        Response.Write(delItem)
        Response.Write("</span> has been deleted from the database.")

        Response.AddHeader("REFREASH", "3;URL=./Items.aspx")
    End Sub

    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As System.Web.UI.WebControls.DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Response.Redirect("./Items.aspx")
    End Sub

    Protected Sub DetailsView1_ItemInserted(sender As Object, e As System.Web.UI.WebControls.DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted
        Response.Redirect("./Items.aspx")
    End Sub
End Class
