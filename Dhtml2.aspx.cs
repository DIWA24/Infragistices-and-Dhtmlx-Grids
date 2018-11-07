using System;
using ClassLibrary1;
using System.Data;


public partial class Dhtml2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        //string data = string.Empty;
        //data = JsonConvert.SerializeObject(GetDataSource());
        // Response.Write(data);

        //DataSet dt = GetDataSource();
        //foreach (DataTable dt1 in dt.Tables)
        //{
        //    HiddenField1.Value += "data ={";
        //    HiddenField1.Value += " rows:[";
        //    foreach (DataRow row in dt1.Rows)
        //    {
        //        //string str = row.ItemArray[0].ToString(); 
        //        HiddenField1.Value += "{id:" + '"' + row.ItemArray[0].ToString() + '"' + "," + "data:[" + '"' + row.ItemArray[0].ToString() + 
        //                                                                                                    '"' + "," + '"' + row.ItemArray[1].ToString() + '"' + "," + '"' + row.ItemArray[2].ToString() + '"' +
        //                                                                                "," + '"' + row.ItemArray[3].ToString() + '"' + "," + '"' + row.ItemArray[4].ToString() + '"' + "," + '"' + row.ItemArray[5].ToString() + '"' + "]},";

        //    }
        //    HiddenField1.Value += "]};";
        //}
    }
    private DataSet GetDataSource()
    {
        DataSet dst = new DataSet();
        Class1 obj = new Class1();
        dst = Class1.GetData();
        return dst;
    }

    [System.Web.Services.WebMethod]
    //[System.Web.Script.Services.ScriptMethod(UseHttpGet = true, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
    public static bool DeleteData(string UserName)
    {
        Class1.DeleteData(UserName);
        return true;
    }

    [System.Web.Services.WebMethod]
    [System.Web.Script.Services.ScriptMethod(UseHttpGet = true, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
    public static string GetJsonDataforAjax()
    {
        DataSet dst = new DataSet();
        dst = Class1.GetData();
        string data = string.Empty;
        foreach (DataTable dt1 in dst.Tables)
        {
            data += "data ={";
            data += " rows:[";
            foreach (DataRow row in dt1.Rows)
            {
                data += "{id:" + '"' + row.ItemArray[0].ToString() + '"' + "," + "data:[" + '"' + row.ItemArray[0].ToString() +
                                                                                                            '"' + "," + '"' + row.ItemArray[1].ToString() + '"' + "," + '"' + row.ItemArray[2].ToString() + '"' +
                                                                                        "," + '"' + row.ItemArray[3].ToString() + '"' + "," + '"' + row.ItemArray[4].ToString() + '"' + "," + '"' + row.ItemArray[5].ToString() + '"' + "," + '"' + row.ItemArray[6].ToString() + '"' + "," + '"' + row.ItemArray[7].ToString() + '"' + "]},";
            }
            data += "]};";
        }
        return data;
    }
    [System.Web.Services.WebMethod]
    //[System.Web.Script.Services.ScriptMethod(UseHttpGet = true, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
    public static void UpdateData(string UserName, string Email, string Password, string Country, string Gender, string Role, string Phone,string FileUpload1)
    {
        Class1.UpdateData(UserName, Email, Password, Country, Gender, Role,Phone,FileUpload1);
    }


    [System.Web.Services.WebMethod]
    //[System.Web.Script.Services.ScriptMethod(UseHttpGet = true, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
    public static void StProcedure(string UserName, string Email, string Password, string Country, string Gender, string Role,string Phone,string FileUpload1)
    {
        Class1.StProcedure(UserName, Email, Password, Country, Gender, Role, Phone, FileUpload1);
    }

    [System.Web.Services.WebMethod]
    public static void stdeleteProc(string UserName)
    {
        Class1.stdeleteProc(UserName);
    }

    [System.Web.Services.WebMethod]
   // [System.Web.Script.Services.ScriptMethod(UseHttpGet = true, ResponseFormat = System.Web.Script.Services.ResponseFormat.Json)]
    public static void StUpdateProc(string UserName, string Email, string Password, string Country, string Gender, string Role, string Phone,string FileUpload1)
    {
        Class1.StUpdateProc(UserName, Email, Password, Country, Gender, Role, Phone, FileUpload1);
    }
    protected void btn_Add_Click(object sender, EventArgs e)
    {
        Response.Redirect("Add.aspx");
    }

   
}
