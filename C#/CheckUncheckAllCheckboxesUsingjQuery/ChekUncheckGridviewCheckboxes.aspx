<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChekUncheckGridviewCheckboxes.aspx.cs"
    Inherits="CheckUncheckAllCheckboxesUsingjQuery.ChekUncheckGridviewCheckboxes" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AspnetO.com | Check/Uncheck checkboxes in asp.net gridview</title>
    <style type="text/css">
        .selected {
            background-color: #f5f5f5;
        }
    </style>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js">
    </script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#chkSelectAll').click(function () {
                if ($(this).is(":checked")) {
                    $('.chkSelect').prop('checked', true);
                    //add the selected class from each row
                    $('.chkSelect').closest("tr").addClass("selected");
                } else {
                    $('.chkSelect').prop('checked', false);
                    //remove selected class from each row
                    $('.chkSelect').closest("tr").removeClass("selected");
                }
            });

            $('.chkSelect').click(function () {
                //remove chkSelectAll checked when any of the child checkbox clicked
                $('#chkSelectAll').removeAttr("checked");

                if ($(this).is(":checked")) {
                    //add the selected class to selected row
                    $($(this).closest("tr")).addClass("selected");
                } else {
                    //remove the selected class from selected row
                    $($(this).closest("tr")).removeClass("selected");
                }
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="grdSubjectList" runat="server" AutoGenerateColumns="false">
                <HeaderStyle Font-Bold="true" BackColor="#9a9a9a" BorderColor="#222" ForeColor="White"
                    Height="30" />
                <Columns>
                    <asp:TemplateField>
                        <HeaderTemplate>
                            <input type="checkbox" id="chkSelectAll" style="width: 50px;">
                        </HeaderTemplate>
                        <ItemTemplate>
                            <input type="checkbox" class="chkSelect" style="width: 50px;">
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Subjects" HeaderText="Subjects" ItemStyle-Width="200"
                        ItemStyle-HorizontalAlign="Center" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
