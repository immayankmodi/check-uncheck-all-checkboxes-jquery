Public Class ChekUncheckGridviewCheckboxes
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim dtSubData As New DataTable()

        'Creating Column
        dtSubData.Columns.Add("Subjects")

        'Adding Subjects in column
        dtSubData.Rows.Add("Asp.net")
        dtSubData.Rows.Add("C#")
        dtSubData.Rows.Add("Vb.net")
        dtSubData.Rows.Add("HTML")
        dtSubData.Rows.Add("CSS")
        dtSubData.Rows.Add("JavaScript")
        dtSubData.Rows.Add("jQuery")

        'Binding Subjects to gridview
        grdSubjectList.DataSource = dtSubData
        grdSubjectList.DataBind()
    End Sub

End Class