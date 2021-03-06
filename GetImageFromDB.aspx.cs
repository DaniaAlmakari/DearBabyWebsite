﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data;

public partial class Admin_GetImageFromDB : PageDataAccess
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = DA.GETART(Request.QueryString["Id"].ToString());
        if (dt.Rows.Count > 0)
        {
            if (!(dt.Rows[0]["art_img"] is DBNull))
            {
                byte[] imageByte = (byte[])dt.Rows[0]["art_img"];

                System.IO.MemoryStream MS = new System.IO.MemoryStream(imageByte);
                System.Drawing.Image img = System.Drawing.Image.FromStream(MS);

                int width = 100;
                if (Request.QueryString["w"] != null)
                    width = int.Parse(Request.QueryString["w"]);

                int heigh = width * img.Height / img.Width;

                System.Drawing.Image thump = img.GetThumbnailImage(width, heigh, null, IntPtr.Zero);
                thump.Save(Response.OutputStream, System.Drawing.Imaging.ImageFormat.Jpeg);

                img.Dispose();
                thump.Dispose();
            }
        }
    }
}