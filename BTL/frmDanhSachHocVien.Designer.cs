﻿namespace BTL
{
    partial class frmDanhSachHocVien
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            DevExpress.XtraEditors.Controls.EditorButtonImageOptions editorButtonImageOptions1 = new DevExpress.XtraEditors.Controls.EditorButtonImageOptions();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmDanhSachHocVien));
            DevExpress.Utils.SerializableAppearanceObject serializableAppearanceObject1 = new DevExpress.Utils.SerializableAppearanceObject();
            DevExpress.Utils.SerializableAppearanceObject serializableAppearanceObject2 = new DevExpress.Utils.SerializableAppearanceObject();
            DevExpress.Utils.SerializableAppearanceObject serializableAppearanceObject3 = new DevExpress.Utils.SerializableAppearanceObject();
            DevExpress.Utils.SerializableAppearanceObject serializableAppearanceObject4 = new DevExpress.Utils.SerializableAppearanceObject();
            DevExpress.XtraEditors.Controls.EditorButtonImageOptions editorButtonImageOptions2 = new DevExpress.XtraEditors.Controls.EditorButtonImageOptions();
            DevExpress.Utils.SerializableAppearanceObject serializableAppearanceObject5 = new DevExpress.Utils.SerializableAppearanceObject();
            DevExpress.Utils.SerializableAppearanceObject serializableAppearanceObject6 = new DevExpress.Utils.SerializableAppearanceObject();
            DevExpress.Utils.SerializableAppearanceObject serializableAppearanceObject7 = new DevExpress.Utils.SerializableAppearanceObject();
            DevExpress.Utils.SerializableAppearanceObject serializableAppearanceObject8 = new DevExpress.Utils.SerializableAppearanceObject();
            this.gcDanhSachQN = new DevExpress.XtraGrid.GridControl();
            this.gvDanhSachQN = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.MaQN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.TenQN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.TenDV = new DevExpress.XtraGrid.Columns.GridColumn();
            this.TenCV = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.btnDetail = new DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit();
            this.btnXoa = new DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit();
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.panelControl12 = new DevExpress.XtraEditors.PanelControl();
            this.btnThem = new DevExpress.XtraEditors.SimpleButton();
            this.btnDelete = new DevExpress.XtraEditors.SimpleButton();
            this.btnSua = new DevExpress.XtraEditors.SimpleButton();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.panelControl7 = new DevExpress.XtraEditors.PanelControl();
            this.panelControl10 = new DevExpress.XtraEditors.PanelControl();
            this.txtNoiDungUuTien = new DevExpress.XtraEditors.TextEdit();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.cbQN = new System.Windows.Forms.ComboBox();
            this.pncBtnXuLy = new DevExpress.XtraEditors.PanelControl();
            this.btnXacNhan = new DevExpress.XtraEditors.SimpleButton();
            this.labelControl13 = new DevExpress.XtraEditors.LabelControl();
            this.cnNganh = new System.Windows.Forms.ComboBox();
            ((System.ComponentModel.ISupportInitialize)(this.gcDanhSachQN)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvDanhSachQN)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.btnDetail)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.btnXoa)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl12)).BeginInit();
            this.panelControl12.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl7)).BeginInit();
            this.panelControl7.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl10)).BeginInit();
            this.panelControl10.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtNoiDungUuTien.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pncBtnXuLy)).BeginInit();
            this.pncBtnXuLy.SuspendLayout();
            this.SuspendLayout();
            // 
            // gcDanhSachQN
            // 
            this.gcDanhSachQN.Cursor = System.Windows.Forms.Cursors.IBeam;
            this.gcDanhSachQN.Location = new System.Drawing.Point(9, 78);
            this.gcDanhSachQN.MainView = this.gvDanhSachQN;
            this.gcDanhSachQN.Name = "gcDanhSachQN";
            this.gcDanhSachQN.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.btnXoa,
            this.btnDetail});
            this.gcDanhSachQN.Size = new System.Drawing.Size(1185, 628);
            this.gcDanhSachQN.TabIndex = 0;
            this.gcDanhSachQN.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gvDanhSachQN});
            // 
            // gvDanhSachQN
            // 
            this.gvDanhSachQN.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.MaQN,
            this.TenQN,
            this.TenDV,
            this.TenCV,
            this.gridColumn1});
            this.gvDanhSachQN.GridControl = this.gcDanhSachQN;
            this.gvDanhSachQN.Name = "gvDanhSachQN";
            this.gvDanhSachQN.OptionsCustomization.AllowMergedGrouping = DevExpress.Utils.DefaultBoolean.True;
            // 
            // MaQN
            // 
            this.MaQN.FieldName = "MaQN";
            this.MaQN.MaxWidth = 150;
            this.MaQN.MinWidth = 100;
            this.MaQN.Name = "MaQN";
            this.MaQN.OptionsColumn.AllowEdit = false;
            this.MaQN.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.True;
            this.MaQN.Visible = true;
            this.MaQN.VisibleIndex = 0;
            this.MaQN.Width = 150;
            // 
            // TenQN
            // 
            this.TenQN.Caption = "Tên Quân nhân";
            this.TenQN.FieldName = "TenQN";
            this.TenQN.MaxWidth = 500;
            this.TenQN.MinWidth = 25;
            this.TenQN.Name = "TenQN";
            this.TenQN.OptionsColumn.AllowEdit = false;
            this.TenQN.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.True;
            this.TenQN.Visible = true;
            this.TenQN.VisibleIndex = 1;
            this.TenQN.Width = 151;
            // 
            // TenDV
            // 
            this.TenDV.Caption = "Tên đơn vị";
            this.TenDV.FieldName = "TenDV";
            this.TenDV.MaxWidth = 275;
            this.TenDV.MinWidth = 25;
            this.TenDV.Name = "TenDV";
            this.TenDV.OptionsColumn.AllowEdit = false;
            this.TenDV.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.True;
            this.TenDV.Visible = true;
            this.TenDV.VisibleIndex = 2;
            this.TenDV.Width = 150;
            // 
            // TenCV
            // 
            this.TenCV.Caption = "Tên chức vụ";
            this.TenCV.FieldName = "TenCV";
            this.TenCV.MaxWidth = 275;
            this.TenCV.MinWidth = 25;
            this.TenCV.Name = "TenCV";
            this.TenCV.OptionsColumn.AllowEdit = false;
            this.TenCV.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.True;
            this.TenCV.Visible = true;
            this.TenCV.VisibleIndex = 3;
            this.TenCV.Width = 151;
            // 
            // gridColumn1
            // 
            this.gridColumn1.Caption = "Chi tiết";
            this.gridColumn1.ColumnEdit = this.btnDetail;
            this.gridColumn1.MaxWidth = 70;
            this.gridColumn1.MinWidth = 25;
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.Visible = true;
            this.gridColumn1.VisibleIndex = 4;
            this.gridColumn1.Width = 50;
            // 
            // btnDetail
            // 
            this.btnDetail.AutoHeight = false;
            editorButtonImageOptions1.Image = ((System.Drawing.Image)(resources.GetObject("editorButtonImageOptions1.Image")));
            this.btnDetail.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Glyph, "Xem chi tiết", -1, true, true, false, editorButtonImageOptions1, new DevExpress.Utils.KeyShortcut(System.Windows.Forms.Keys.None), serializableAppearanceObject1, serializableAppearanceObject2, serializableAppearanceObject3, serializableAppearanceObject4, "", null, null, DevExpress.Utils.ToolTipAnchor.Default)});
            this.btnDetail.Name = "btnDetail";
            this.btnDetail.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.HideTextEditor;
            // 
            // btnXoa
            // 
            this.btnXoa.AutoHeight = false;
            editorButtonImageOptions2.Image = ((System.Drawing.Image)(resources.GetObject("editorButtonImageOptions2.Image")));
            this.btnXoa.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Glyph, "", -1, true, true, false, editorButtonImageOptions2, new DevExpress.Utils.KeyShortcut(System.Windows.Forms.Keys.None), serializableAppearanceObject5, serializableAppearanceObject6, serializableAppearanceObject7, serializableAppearanceObject8, "", null, null, DevExpress.Utils.ToolTipAnchor.Default)});
            this.btnXoa.Name = "btnXoa";
            this.btnXoa.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.HideTextEditor;
            // 
            // panelControl1
            // 
            this.panelControl1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left)));
            this.panelControl1.Controls.Add(this.panelControl12);
            this.panelControl1.Controls.Add(this.labelControl2);
            this.panelControl1.Controls.Add(this.gcDanhSachQN);
            this.panelControl1.Location = new System.Drawing.Point(3, 12);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(1199, 802);
            this.panelControl1.TabIndex = 7;
            // 
            // panelControl12
            // 
            this.panelControl12.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.panelControl12.Controls.Add(this.btnThem);
            this.panelControl12.Controls.Add(this.btnDelete);
            this.panelControl12.Controls.Add(this.btnSua);
            this.panelControl12.Location = new System.Drawing.Point(9, 739);
            this.panelControl12.Name = "panelControl12";
            this.panelControl12.Size = new System.Drawing.Size(1185, 50);
            this.panelControl12.TabIndex = 21;
            // 
            // btnThem
            // 
            this.btnThem.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.btnThem.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("btnThem.ImageOptions.Image")));
            this.btnThem.Location = new System.Drawing.Point(523, 7);
            this.btnThem.Name = "btnThem";
            this.btnThem.Size = new System.Drawing.Size(186, 38);
            this.btnThem.TabIndex = 23;
            this.btnThem.Text = "Thêm ";
            this.btnThem.Click += new System.EventHandler(this.btnThem_Click);
            // 
            // btnDelete
            // 
            this.btnDelete.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.btnDelete.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("btnDelete.ImageOptions.Image")));
            this.btnDelete.Location = new System.Drawing.Point(736, 7);
            this.btnDelete.Name = "btnDelete";
            this.btnDelete.Size = new System.Drawing.Size(186, 38);
            this.btnDelete.TabIndex = 22;
            this.btnDelete.Text = "Xóa";
            this.btnDelete.Click += new System.EventHandler(this.btnDelete_Click);
            // 
            // btnSua
            // 
            this.btnSua.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.btnSua.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("btnSua.ImageOptions.Image")));
            this.btnSua.Location = new System.Drawing.Point(946, 7);
            this.btnSua.Name = "btnSua";
            this.btnSua.Size = new System.Drawing.Size(186, 38);
            this.btnSua.TabIndex = 21;
            this.btnSua.Text = "Sửa";
            this.btnSua.Click += new System.EventHandler(this.btnSua_Click);
            // 
            // labelControl2
            // 
            this.labelControl2.Appearance.Font = new System.Drawing.Font("Arial", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelControl2.Appearance.Options.UseFont = true;
            this.labelControl2.Location = new System.Drawing.Point(328, 26);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(430, 26);
            this.labelControl2.TabIndex = 5;
            this.labelControl2.Text = "DANH SÁCH HỌC VIÊN TRONG ĐƠN VỊ";
            // 
            // panelControl7
            // 
            this.panelControl7.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.panelControl7.Controls.Add(this.panelControl10);
            this.panelControl7.Controls.Add(this.pncBtnXuLy);
            this.panelControl7.Controls.Add(this.labelControl13);
            this.panelControl7.Cursor = System.Windows.Forms.Cursors.Default;
            this.panelControl7.Location = new System.Drawing.Point(1208, 12);
            this.panelControl7.Name = "panelControl7";
            this.panelControl7.Size = new System.Drawing.Size(643, 802);
            this.panelControl7.TabIndex = 12;
            // 
            // panelControl10
            // 
            this.panelControl10.Controls.Add(this.cnNganh);
            this.panelControl10.Controls.Add(this.txtNoiDungUuTien);
            this.panelControl10.Controls.Add(this.labelControl3);
            this.panelControl10.Controls.Add(this.labelControl1);
            this.panelControl10.Controls.Add(this.cbQN);
            this.panelControl10.Location = new System.Drawing.Point(91, 78);
            this.panelControl10.Name = "panelControl10";
            this.panelControl10.Size = new System.Drawing.Size(531, 628);
            this.panelControl10.TabIndex = 22;
            // 
            // txtNoiDungUuTien
            // 
            this.txtNoiDungUuTien.Location = new System.Drawing.Point(224, 223);
            this.txtNoiDungUuTien.Name = "txtNoiDungUuTien";
            this.txtNoiDungUuTien.Size = new System.Drawing.Size(269, 23);
            this.txtNoiDungUuTien.TabIndex = 32;
            // 
            // labelControl3
            // 
            this.labelControl3.Appearance.Font = new System.Drawing.Font("Arial", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelControl3.Appearance.Options.UseFont = true;
            this.labelControl3.Location = new System.Drawing.Point(24, 218);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(170, 26);
            this.labelControl3.TabIndex = 30;
            this.labelControl3.Text = "Nội dung ưu tiên:";
            // 
            // labelControl1
            // 
            this.labelControl1.Appearance.Font = new System.Drawing.Font("Arial", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelControl1.Appearance.Options.UseFont = true;
            this.labelControl1.Location = new System.Drawing.Point(24, 108);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(116, 26);
            this.labelControl1.TabIndex = 28;
            this.labelControl1.Text = "Quân nhân:";
            // 
            // cbQN
            // 
            this.cbQN.FormattingEnabled = true;
            this.cbQN.Location = new System.Drawing.Point(224, 113);
            this.cbQN.Name = "cbQN";
            this.cbQN.Size = new System.Drawing.Size(269, 24);
            this.cbQN.TabIndex = 29;
            // 
            // pncBtnXuLy
            // 
            this.pncBtnXuLy.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.pncBtnXuLy.Controls.Add(this.btnXacNhan);
            this.pncBtnXuLy.Location = new System.Drawing.Point(91, 739);
            this.pncBtnXuLy.Name = "pncBtnXuLy";
            this.pncBtnXuLy.Size = new System.Drawing.Size(531, 50);
            this.pncBtnXuLy.TabIndex = 23;
            // 
            // btnXacNhan
            // 
            this.btnXacNhan.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.btnXacNhan.ImageOptions.Image = ((System.Drawing.Image)(resources.GetObject("btnXacNhan.ImageOptions.Image")));
            this.btnXacNhan.Location = new System.Drawing.Point(163, 4);
            this.btnXacNhan.Name = "btnXacNhan";
            this.btnXacNhan.Size = new System.Drawing.Size(186, 43);
            this.btnXacNhan.TabIndex = 20;
            this.btnXacNhan.Text = "Xác nhận";
            this.btnXacNhan.Click += new System.EventHandler(this.btnXacNhan_Click);
            // 
            // labelControl13
            // 
            this.labelControl13.Appearance.Font = new System.Drawing.Font("Arial", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelControl13.Appearance.Options.UseFont = true;
            this.labelControl13.Location = new System.Drawing.Point(196, 26);
            this.labelControl13.Name = "labelControl13";
            this.labelControl13.Size = new System.Drawing.Size(244, 26);
            this.labelControl13.TabIndex = 1;
            this.labelControl13.Text = "THÔNG TIN HỌC VIÊN";
            // 
            // cnNganh
            // 
            this.cnNganh.FormattingEnabled = true;
            this.cnNganh.Location = new System.Drawing.Point(224, 44);
            this.cnNganh.Name = "cnNganh";
            this.cnNganh.Size = new System.Drawing.Size(269, 24);
            this.cnNganh.TabIndex = 33;
            // 
            // frmDanhSachHocVien
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1863, 820);
            this.Controls.Add(this.panelControl7);
            this.Controls.Add(this.panelControl1);
            this.Name = "frmDanhSachHocVien";
            this.Text = "Danh sách học viên";
            ((System.ComponentModel.ISupportInitialize)(this.gcDanhSachQN)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvDanhSachQN)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.btnDetail)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.btnXoa)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            this.panelControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl12)).EndInit();
            this.panelControl12.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.panelControl7)).EndInit();
            this.panelControl7.ResumeLayout(false);
            this.panelControl7.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl10)).EndInit();
            this.panelControl10.ResumeLayout(false);
            this.panelControl10.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtNoiDungUuTien.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pncBtnXuLy)).EndInit();
            this.pncBtnXuLy.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.GridControl gcDanhSachQN;
        private DevExpress.XtraGrid.Views.Grid.GridView gvDanhSachQN;
        private DevExpress.XtraGrid.Columns.GridColumn MaQN;
        private DevExpress.XtraGrid.Columns.GridColumn TenQN;
        private DevExpress.XtraGrid.Columns.GridColumn TenDV;
        private DevExpress.XtraGrid.Columns.GridColumn TenCV;
        private DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit btnXoa;
        private DevExpress.XtraEditors.PanelControl panelControl1;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.PanelControl panelControl7;
        private DevExpress.XtraEditors.LabelControl labelControl13;
        private DevExpress.XtraEditors.PanelControl pncBtnXuLy;
        private DevExpress.XtraEditors.SimpleButton btnXacNhan;
        private DevExpress.XtraEditors.PanelControl panelControl10;
        private DevExpress.XtraEditors.PanelControl panelControl12;
        private DevExpress.XtraEditors.SimpleButton btnThem;
        private DevExpress.XtraEditors.SimpleButton btnDelete;
        private DevExpress.XtraEditors.SimpleButton btnSua;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        private DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit btnDetail;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private System.Windows.Forms.ComboBox cbQN;
        private DevExpress.XtraEditors.TextEdit txtNoiDungUuTien;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraGrid.GridControl gridControl1;
        private System.Windows.Forms.ComboBox cnNganh;
    }
}