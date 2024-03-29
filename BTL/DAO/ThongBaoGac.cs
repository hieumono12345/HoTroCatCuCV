﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BTL.DAO
{
    public class ThongBaoGac
    {
        private static ThongBaoGac instance;

        public static ThongBaoGac Instance
        {
            get { if (instance == null) instance = new ThongBaoGac(); return instance; }
            private set { instance = value; }
        }

        private ThongBaoGac() { }

        public DataTable LayLichGac(int MaDV)
        {
            DataTable data = DataProvider.Instance.ExecuteQuery("usp_hienthingaygac @madv=" + MaDV);
            return data;
        }
    }
}
