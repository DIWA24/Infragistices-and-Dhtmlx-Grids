<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EXCELXML.aspx.cs" Inherits="EXCELXML" %>


<%@ Register Assembly="Infragistics45.Web.v15.2, Version=15.2.20152.2125, Culture=neutral, PublicKeyToken=7DD5C3163F2CD0CB" Namespace="Infragistics.Web.UI.GridControls" TagPrefix="ig" %>
<%@ Register Assembly="Infragistics45.Web.v15.2, Version=15.2.20152.2125, Culture=neutral, PublicKeyToken=7DD5C3163F2CD0CB" Namespace="Infragistics.Web.UI.LayoutControls" TagPrefix="ig" %>
<%@ Register Assembly="Infragistics45.Web.v15.2, Version=15.2.20152.2125, Culture=neutral, PublicKeyToken=7dd5c3163f2cd0cb" Namespace="Infragistics.Web.UI.NavigationControls" TagPrefix="ig" %>
<%@ Register Assembly="Infragistics45.Web.v15.2, Version=15.2.20152.2125, Culture=neutral, PublicKeyToken=7dd5c3163f2cd0cb" Namespace="Infragistics.Web.UI" TagPrefix="ig" %>

<!DOCTYPE html>

<html>
<head>
	<title></title>

	<link href="http://cdn-na.infragistics.com/igniteui/2018.1/latest/css/themes/infragistics/infragistics.theme.css" rel="stylesheet" />
	<link href="http://cdn-na.infragistics.com/igniteui/2018.1/latest/css/structure/infragistics.css" rel="stylesheet" />

	<script src="http://ajax.aspnetcdn.com/ajax/modernizr/modernizr-2.8.3.js"></script>
	<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
	<script src="http://code.jquery.com/ui/1.11.1/jquery-ui.min.js"></script>

	<script src="http://cdn-na.infragistics.com/igniteui/2018.1/latest/js/infragistics.core.js"></script>
	<script src="http://cdn-na.infragistics.com/igniteui/2018.1/latest/js/infragistics.lob.js"></script>
	<script src="http://cdn-na.infragistics.com/igniteui/2018.1/latest/js/infragistics.excel-bundled.js"></script>
	<script src="http://cdn-na.infragistics.com/igniteui/2018.1/latest/js/infragistics.spreadsheet-bundled.js"></script>

	<script src="https://www.igniteui.com/js/external/FileSaver.js"></script>
</head>
<body>

	<div>
        <div class="spreadsheet-sample-btn">
            <input type="file" id="input" accept="application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" />
            <span> Choose a file... </span>
        </div>
		<div>
			<input class="spreadsheet-sample-btn" id="saveBtn" type="button" value="Save Workbook" onclick="saveWorkbook()">
		</div>
		<div class="clear"></div>
		
		<div id="result"></div>
		<div id="spreadsheet"></div>
	</div>
</body>
<script src="EXCELXML.js"></script>
</html>
