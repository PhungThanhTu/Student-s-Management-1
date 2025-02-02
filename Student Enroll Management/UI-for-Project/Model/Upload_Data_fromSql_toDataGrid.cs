﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Text;
using System.Windows.Controls;

namespace UI_for_Project.Model
{
    class Upload_Data_fromSql_toDataGrid
    {
        string Query;
        DataGrid nameDatagrid;

        // những bảng cần thiết để tạo nên câu lệnh  sql
        string nameTable;

        public Upload_Data_fromSql_toDataGrid(string a, DataGrid b, string c)
        {
            Query = a;
            nameDatagrid = b;
            nameTable = c;
        }
        
        public void setData()
        {
            // tìm kiếm database
            SqlConnection con = new SqlConnection(sqlConnection.CONNECTION);
            //con.ConnectionString = ConfigurationManager.ConnectionStrings[@"Data Source=PCHIEU\SQLEXPRESS;Initial Catalog=QLTuyenSinh;Integrated Security=True"].ConnectionString;
            con.Open();

            // câu lệnh cần thực hiện
            //string Get_Data = "select THI_SINH.so_bao_danh,ho_ten, ngay_thi,so_phong_thi,dia_diem_thi from THI_SINH, GIAY_BAO_THI";

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = Query;


            SqlDataAdapter da = new SqlDataAdapter(cmd);
            System.Data.DataTable dt = new System.Data.DataTable(nameTable);
            da.Fill(dt);

            // load data lên datagrid
            nameDatagrid.ItemsSource = dt.DefaultView;

            
        }
    }
}
