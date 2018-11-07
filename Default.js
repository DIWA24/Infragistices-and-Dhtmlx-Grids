function xml() {
    document.getElementById("hiddenName").value = "<UserTable>";
    document.getElementById("hiddenName").value += "<Rows>";
    var GridRows = $find('WebDataGrid1').get_rows();
    for (var i = 0; i < GridRows.get_length() ; i++) {
        var GridRow = GridRows.get_row(i);
        if (GridRow != null) {
            document.getElementById("hiddenName").value += "<Row>";
            document.getElementById("hiddenName").value += "<UserName>" + GridRow.get_cellByColumnKey("UserName").get_value() +
                "</UserName><Email>" + GridRow.get_cellByColumnKey("Email").get_value() + "</Email><Password>"+ GridRow.get_cellByColumnKey("Password").get_value() +
                "</Password><Country>" + GridRow.get_cellByColumnKey("Country").get_value() + "</Country><Gender>"
            + GridRow.get_cellByColumnKey("Gender").get_value() + "</Gender><Role>" + GridRow.get_cellByColumnKey("Role").get_value() + "</Role>"
            document.getElementById("hiddenName").value += "<Row>";
        }
    }
    document.getElementById("hiddenName").value += "</Rows>";
    document.getElementById("hiddenName").value += "</UserTable>";
}