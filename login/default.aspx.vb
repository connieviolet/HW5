
Partial Class login_Default
    Inherits System.Web.UI.Page

    Protected Sub Login1_LoggedIn(sender As Object, e As System.EventArgs) Handles Login1.LoggedIn
        Response.Redirect("../admin/default.aspx")
    End Sub
End Class
