   $(function () {
        var editingEnabled = true;
        $("#spreadsheet").igSpreadsheet({
            height: "600",
            width: "100%",
            isFormulaBarVisible: true,
            editModeEntering: function (e, args) {
                return editingEnabled;
            }
        });

        if (window.FileReader) {
            $("#input").on("change", function () {
                var excelFile,
                    fileReader = new FileReader();

                $("#result").hide();

                fileReader.onload = function (e) {
                    var buffer = new Uint8Array(fileReader.result);

                    $.ig.excel.Workbook.load(buffer, function () {
                        workbook = arguments[0];
                        setWorkbook();

                    }, function (error) {
                        $("#result").text("The excel file is corrupted.");
                        $("#result").show(1000);
                    });
                }

                if (this.files.length > 0) {
                    excelFile = this.files[0];
                    if (excelFile.type === "application/vnd.ms-excel" || excelFile.type === "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" || (excelFile.type === "" && (excelFile.name.endsWith("xls") || excelFile.name.endsWith("xlsx")))) {
                        fileReader.readAsArrayBuffer(excelFile);
                    } else {
                        $("#result").text("Invalid Format");
                        $("#result").show(1000);
                    }
                }
            })
        } else {
            $("#result").text("Browser not Supported");
            $("#result").show(1000);
        }
    });

function setWorkbook() {
    if ($("#spreadsheet").igSpreadsheet !== undefined && workbook != null) {
        $("#spreadsheet").igSpreadsheet("option", "workbook", workbook);
    }
}

function saveWorkbook(workbook, name) {
    $("#spreadsheet").igspreadsheet("option", "workbook")
        .save({ type: 'blob' }, function (data) {
            saveas(data, name);
            }, function (error) {
                alert('error exporting: : ' + error);
            }); 
}
