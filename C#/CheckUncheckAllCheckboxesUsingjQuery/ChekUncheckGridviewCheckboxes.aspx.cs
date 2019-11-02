using System;

namespace CheckUncheckAllCheckboxesUsingjQuery {

    public partial class ChekUncheckGridviewCheckboxes : System.Web.UI.Page {

        protected void Page_Load(object sender, EventArgs e) {
            System.Data.DataTable dtSubData = new System.Data.DataTable();

            //Creating Column
            dtSubData.Columns.Add("Subjects");

            //Adding Subjects in column
            dtSubData.Rows.Add("Asp.net");
            dtSubData.Rows.Add("C#");
            dtSubData.Rows.Add("Vb.net");
            dtSubData.Rows.Add("HTML");
            dtSubData.Rows.Add("CSS");
            dtSubData.Rows.Add("JavaScript");
            dtSubData.Rows.Add("jQuery");

            //Binding Subjects to gridview
            grdSubjectList.DataSource = dtSubData;
            grdSubjectList.DataBind();
        }
    }
}