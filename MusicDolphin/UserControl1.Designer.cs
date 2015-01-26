namespace MusicDolphin
{
    partial class UserControl1
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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.lblComment = new System.Windows.Forms.Label();
            this.lblUser = new System.Windows.Forms.Label();
            this.seperator = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // lblComment
            // 
            this.lblComment.AutoSize = true;
            this.lblComment.Location = new System.Drawing.Point(13, 19);
            this.lblComment.Name = "lblComment";
            this.lblComment.Size = new System.Drawing.Size(35, 13);
            this.lblComment.TabIndex = 0;
            this.lblComment.Text = "label1";
            // 
            // lblUser
            // 
            this.lblUser.AutoSize = true;
            this.lblUser.Location = new System.Drawing.Point(384, 19);
            this.lblUser.Name = "lblUser";
            this.lblUser.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.lblUser.Size = new System.Drawing.Size(35, 13);
            this.lblUser.TabIndex = 1;
            this.lblUser.Text = "label1";
            // 
            // seperator
            // 
            this.seperator.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.seperator.Location = new System.Drawing.Point(0, 48);
            this.seperator.Name = "seperator";
            this.seperator.Size = new System.Drawing.Size(434, 2);
            this.seperator.TabIndex = 2;
            // 
            // UserControl1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.seperator);
            this.Controls.Add(this.lblUser);
            this.Controls.Add(this.lblComment);
            this.Name = "UserControl1";
            this.Size = new System.Drawing.Size(433, 50);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        public System.Windows.Forms.Label lblComment;
        public System.Windows.Forms.Label lblUser;
        private System.Windows.Forms.Label seperator;

    }
}
