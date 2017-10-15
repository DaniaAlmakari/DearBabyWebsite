using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

/// <summary>
/// Summary description for DataAccess
/// </summary>
public class DataAccess
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString_DearBaby"].ToString());
	public DataAccess()
	{
        conn.Open();
	}
    public void closeconn()
    {
        conn.Close();
    }
    public int Add_Edit_Articles(string id,string title, string des, string details, bool ismain, string sec_id, bool inhome,byte[] image, bool isother)
    {
        SqlCommand cmd = new SqlCommand("Add_Edit_Articles",conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@title",title);
        cmd.Parameters.AddWithValue("@des",des);
        cmd.Parameters.AddWithValue("@details",details);
        cmd.Parameters.AddWithValue("@is_main",ismain);
        cmd.Parameters.AddWithValue("@sec_id",sec_id);
        cmd.Parameters.AddWithValue("@in_home",inhome);
        cmd.Parameters.AddWithValue("@image",image);
        cmd.Parameters.AddWithValue("@artID",id);
        cmd.Parameters.AddWithValue("@is_other", isother);
        return cmd.ExecuteNonQuery() ;
    }
    public int Add_Edit_Section(string id, string name, byte[] image, string des)
    {
        SqlCommand cmd = new SqlCommand("Add_Edit_Section", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@id", id);
        cmd.Parameters.AddWithValue("@name", name);
        cmd.Parameters.AddWithValue("@img", image);
        cmd.Parameters.AddWithValue("@des", des);
    
        return cmd.ExecuteNonQuery();
    }
    public int Add_Edit_Replay(string id, string Q_Id, string user_Id, string com)
    {
        SqlCommand cmd = new SqlCommand("Add_Edit_Replay", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@id", id);
        cmd.Parameters.AddWithValue("@Q_Id", Q_Id);
        cmd.Parameters.AddWithValue("@user_Id", user_Id);
        cmd.Parameters.AddWithValue("@com", com);

        return cmd.ExecuteNonQuery();
    }
    public int Add_Edit_Question(string id,string userId, string Qtitle, string Qcontent, bool Qactive)
    {
        SqlCommand cmd = new SqlCommand("Add_Edit_Question", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@QID", id);
        cmd.Parameters.AddWithValue("@user_Id", userId);
        cmd.Parameters.AddWithValue("@Qtitle", Qtitle);
        cmd.Parameters.AddWithValue("@Qcontent", Qcontent);
        cmd.Parameters.AddWithValue("@Qactive", Qactive);
        return cmd.ExecuteNonQuery();
    }

    public int Add_user(string id, string username , string pass, string email, bool is_admin, bool is_member, bool is_dr, string des, bool active)
    {
        SqlCommand cmd = new SqlCommand("Add_user", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@id", id);
        cmd.Parameters.AddWithValue("@username", username);
        cmd.Parameters.AddWithValue("@pass", pass);
        cmd.Parameters.AddWithValue("@email", email);
        cmd.Parameters.AddWithValue("@is_admin", is_admin);
        cmd.Parameters.AddWithValue("@is_member",is_member);
        cmd.Parameters.AddWithValue("@is_dr", is_dr);
        cmd.Parameters.AddWithValue("@des", des);
        cmd.Parameters.AddWithValue("@active", active);
        return cmd.ExecuteNonQuery();
    }
    public int Add_Msg(string id, string name, string email, string phone,  string msg)
    {
        SqlCommand cmd = new SqlCommand("Add_Msg", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@id", id);
        cmd.Parameters.AddWithValue("@name", name);
        cmd.Parameters.AddWithValue("@email", email);
        cmd.Parameters.AddWithValue("@phone", phone);
        cmd.Parameters.AddWithValue("@msg", msg);
        return cmd.ExecuteNonQuery();
    }

    public int Edit_user(string id, string username, string email, string des)
    {
        SqlCommand cmd = new SqlCommand("Edit_user", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@id", id);
        cmd.Parameters.AddWithValue("@username", username);
        cmd.Parameters.AddWithValue("@email", email);
        cmd.Parameters.AddWithValue("@des", des);
        return cmd.ExecuteNonQuery();
    }
    public DataTable GETART (string id)
    {
        SqlDataAdapter sda = new SqlDataAdapter("GetArticles",conn);
        sda.SelectCommand.CommandType = CommandType.StoredProcedure;
        sda.SelectCommand.Parameters.AddWithValue("@id", id);
        DataTable DT = new DataTable();
        sda.Fill(DT);
        return DT;
    }
    public DataTable GET_Section(string id)
    {
        SqlDataAdapter sda = new SqlDataAdapter("Get_Section", conn);
        sda.SelectCommand.CommandType = CommandType.StoredProcedure;
        sda.SelectCommand.Parameters.AddWithValue("@id", id);
        DataTable DT = new DataTable();
        sda.Fill(DT);
        return DT;
    }
    public DataTable GET_USERID(string user_name)
    {
        SqlDataAdapter sda = new SqlDataAdapter("GET_USERID", conn);
        sda.SelectCommand.CommandType = CommandType.StoredProcedure;
        sda.SelectCommand.Parameters.AddWithValue("@user_name", user_name);
        DataTable DT = new DataTable();
        sda.Fill(DT);
        return DT;
    }
    public DataTable GET_Question(string id)
    {
        SqlDataAdapter sda = new SqlDataAdapter("GET_Question", conn);
        sda.SelectCommand.CommandType = CommandType.StoredProcedure;
        sda.SelectCommand.Parameters.AddWithValue("@id", id);
        DataTable DT = new DataTable();
        sda.Fill(DT);
        return DT;
    }
    public DataTable GET_Replay(string id)
    {
        SqlDataAdapter sda = new SqlDataAdapter("GET_Replay", conn);
        sda.SelectCommand.CommandType = CommandType.StoredProcedure;
        sda.SelectCommand.Parameters.AddWithValue("@id", id);
        DataTable DT = new DataTable();
        sda.Fill(DT);
        return DT;
    }
    public DataTable GET_user(string id)
    {
        SqlDataAdapter sda = new SqlDataAdapter("GET_user", conn);
        sda.SelectCommand.CommandType = CommandType.StoredProcedure;
        sda.SelectCommand.Parameters.AddWithValue("@id", id);
        DataTable DT = new DataTable();
        sda.Fill(DT);
        return DT;
    }

    public int ActiveComments(string id, bool active)
    {
        SqlCommand cmd = new SqlCommand("ActiveComments", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@id", id);
        cmd.Parameters.AddWithValue("@active", active);
        return cmd.ExecuteNonQuery();
    }
    public int ActiveUser(string id, bool active)
    {
        SqlCommand cmd = new SqlCommand("ActiveUser", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@id", id);
        cmd.Parameters.AddWithValue("@active", active);
        return cmd.ExecuteNonQuery();
    }
    public int ActiveQuestion(string id, bool active)
    {
        SqlCommand cmd = new SqlCommand("ActiveQuestion", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@id", id);
        cmd.Parameters.AddWithValue("@active", active);
        return cmd.ExecuteNonQuery();
    }

    public DataTable Check_User(string name, string pass)
    {
        SqlDataAdapter sda = new SqlDataAdapter("Check_User", conn);
        sda.SelectCommand.CommandType = CommandType.StoredProcedure;
        sda.SelectCommand.Parameters.AddWithValue("@username", name);
        sda.SelectCommand.Parameters.AddWithValue("@pass", pass);
        DataTable DT = new DataTable();
        sda.Fill(DT);
        return DT;
    }
    public DataTable Check_member(string name, string pass)
    {
        SqlDataAdapter sda = new SqlDataAdapter("Check_member", conn);
        sda.SelectCommand.CommandType = CommandType.StoredProcedure;
        sda.SelectCommand.Parameters.AddWithValue("@username", name);
        sda.SelectCommand.Parameters.AddWithValue("@pass", pass);
        DataTable DT = new DataTable();
        sda.Fill(DT);
        return DT;
    }
    public DataTable Check_DR(string name, string pass)
    {
        SqlDataAdapter sda = new SqlDataAdapter("Check_DR", conn);
        sda.SelectCommand.CommandType = CommandType.StoredProcedure;
        sda.SelectCommand.Parameters.AddWithValue("@username", name);
        sda.SelectCommand.Parameters.AddWithValue("@pass", pass);
        DataTable DT = new DataTable();
        sda.Fill(DT);
        return DT;
    }

    public int change_pass(string old_pass, string name, string new_pass)
    {
        SqlCommand cmd = new SqlCommand("change_pass", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@pass", old_pass);
        cmd.Parameters.AddWithValue("@name", name);
        cmd.Parameters.AddWithValue("@newpass", new_pass);

        return cmd.ExecuteNonQuery();
    }
}