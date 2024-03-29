﻿using BTL.DTO;
using DevExpress.XtraBars;
using DevExpress.XtraBars.Navigation;
using GUI;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BTL
{
    public partial class frmMain : DevExpress.XtraEditors.XtraForm
    {
        private TTNguoiDung inForUser;
        
        public TTNguoiDung InForUser
        {
            get { return inForUser; }
            set { inForUser = value; }
        }

        public frmMain(TTNguoiDung inFor)
        {
            InitializeComponent();
            WindowState = FormWindowState.Maximized;
            //btnQLHocVien.Enabled = false;
            //OpenformDacQuyen(typeof(frmThongBaoGac));
            this.inForUser = inFor;
            PhanQuyen();
        }

        void OpenForm(Type typeForm)
        {
            foreach( Form frm in MdiChildren )
            {
                if(frm.GetType() == typeForm)
                {
                    frm.Activate();
                    return;
                }
            }
            Form f = (Form) Activator.CreateInstance(typeForm);
            f.MdiParent = this;
            f.Show();
        }
        void OpenFormSpecical(Type typeForm)
        {
            foreach (Form frm in MdiChildren)
            {
                if (frm.GetType() == typeForm)
                {
                    frm.Activate();
                    return;
                }
            }
            Form f = (Form)Activator.CreateInstance(typeForm,inForUser);
            f.MdiParent = this;
            f.Show();
        }
        void OpenFormSpecical1(Type typeForm)
        {
            foreach (Form frm in MdiChildren)
            {
                if (frm.GetType() == typeForm)
                {
                    frm.Activate();
                    return;
                }
            }
            Form f = (Form)Activator.CreateInstance(typeForm, 0);
            f.MdiParent = this;
            f.Show();
        }
        void OpenFormSpecical2(Type typeForm)
        {
            foreach (Form frm in MdiChildren)
            {
                if (frm.GetType() == typeForm)
                {
                    frm.Activate();
                    return;
                }
            }
            Form f = (Form)Activator.CreateInstance(typeForm, inForUser.MaDV);
            f.MdiParent = this;
            f.Show();
        }

        /*void OpenFormSpecical(int i)
            
        {
            if (i == 1)
            {
                foreach (Form frm in MdiChildren)
                {
                    if (frm.GetType() == typeof(frmThongBaoGac))
                    {
                        frm.Activate();
                        return;
                    }
                }
                Form f = (Form)Activator.CreateInstance(typeForm(),inForUser);
            }
            
            f.MdiParent = this;
            f.Show();
        }*/
        void PhanQuyen()
        {
            //dai doi
            if (inForUser.MaQuyen == 2)
            {
                QuanLyNguoiDung.Visible = true;
                PhanCong.Visible = false; 
                ThongBao.Visible = true;
                QuanLyGac.Visible = false;
                QuanLyQN.Visible = true;
                QuanLyCongViec.Visible = true;
                LichSuDonVi.Visible = true;
            }
            //admin
            if (inForUser.MaQuyen == 1)
            {
                QuanLyNguoiDung.Visible = true;
                PhanCong.Visible = true; 
                ThongBao.Visible = true;
                QuanLyGac.Visible = false;
                QuanLyQN.Visible = false;
                QuanLyCongViec.Visible = false;
                LichSuDonVi.Visible= false;
            }
            //tieu doan
            if (inForUser.MaQuyen == 3)
            {
                PhanCong.Visible = true; 
                ThongBao.Visible = false;
                QuanLyGac.Visible = false;
                QuanLyQN.Visible = false;
                QuanLyCongViec.Visible = false;
                LichSuDonVi.Visible= false;
            }

        }

        void OpenformDacQuyen(Type typeForm)
        {
            Form f = (Form)Activator.CreateInstance(typeForm);
            f.MdiParent = this;
            f.Show();

        }

        private void btnInFoUser_ItemClick(object sender, ItemClickEventArgs e)
        {            
            OpenForm(typeof(frmInFoUser));
        }

        private void btnQLHocVien_ItemClick(object sender, ItemClickEventArgs e)
        {           
            OpenFormSpecical(typeof(frmDanhSachHocVien));
        }

        private void btnListLoi_ItemClick(object sender, ItemClickEventArgs e)
        {
            OpenForm(typeof(frmListLoi));
        }

        private void frmMain_Load(object sender, EventArgs e)
        {

        }

        private void btnDangNhap_ItemClick(object sender, ItemClickEventArgs e)
        {
             //OpenForm(typeof(Login));
            Login f = new Login();
            f.ShowDialog();
        }

        private void btnHome_ItemClick(object sender, ItemClickEventArgs e)
        {
            OpenForm(typeof(FrmHome));
        }

        private void btnCatGac_ItemClick(object sender, ItemClickEventArgs e)
        {
            OpenFormSpecical(typeof(frmCatGac));
        }

        private void btnPhanCongCV_ItemClick(object sender, ItemClickEventArgs e)
        {
            OpenForm(typeof(frmPhanCongCV));
        }

        private void btnPhanCongGac_ItemClick(object sender, ItemClickEventArgs e)
        {
            OpenForm(typeof(frmPhanCongGac));
        }

        private void btnThongBaoGac_ItemClick(object sender, ItemClickEventArgs e)
        {
            OpenFormSpecical(typeof(frmThongBaoGac));
        }

        private void btnThongBaoCongViec_ItemClick(object sender, ItemClickEventArgs e)
        {
            OpenFormSpecical(typeof(frmThongBaoCV));
        }

        private void btnCatCuCV_ItemClick(object sender, ItemClickEventArgs e)
        {
            OpenForm(typeof(frmCatCuCV));
        }

        private void barButtonItem7_ItemClick(object sender, ItemClickEventArgs e)
        {
            OpenForm(typeof(frmThemTK));
        }

        private void btnDieuChinhDanhSachUuTien_ItemClick(object sender, ItemClickEventArgs e)
        {
            OpenFormSpecical(typeof(frmDanhSachUuTien));
        }

        private void barButtonItem9_ItemClick(object sender, ItemClickEventArgs e)
        {
            OpenFormSpecical1(typeof(frmLichSuGac3));
        }

        private void btnLichSuCV_ItemClick(object sender, ItemClickEventArgs e)
        {
            OpenFormSpecical2(typeof(frmLichSuGac3));
        }
    }
}