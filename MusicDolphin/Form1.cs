using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MusicDolphin
{
    public partial class Form1 : Form
    {
       
        UserRepository ur = new UserRepository();
        ReviewRepository rr = new ReviewRepository();
        RecordRepository recrepo = new RecordRepository();

        Form2 form2 = new Form2();
        
        public Form1()
        {
            InitializeComponent();
       
            //var users = ur.GetAllUsers();

            //foreach (var user in users)
            //{
            //    UserControl1 u = new UserControl1();
            //    u.lblComment.Text = user.username;
            //    flowLayoutPanel1.Controls.Add(u);
            //}

          

         

           
        }

        private void button1_Click(object sender, EventArgs e)
        {
            form2.ShowDialog();
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

     

        private void button2_Click(object sender, EventArgs e)
        {
            int companyNr = int.Parse(textBox1.Text);

            pictureBox1.ImageLocation = recrepo.getRecordLabel(companyNr).picture;

            lblRecordLabel.Text = recrepo.getRecordLabel(companyNr).companyName;
            

            LoopReviews();
        }

        public void LoopReviews()
        {

            int companyNr = int.Parse(textBox1.Text);
            var reviews = rr.getMatchingReviewsLabel(companyNr);

            foreach (var review in reviews)
            {
                UserControl1 u = new UserControl1();
                u.lblUser.Text = review.username;
                u.lblComment.Text = review.comments;
                flowLayoutPanel1.Controls.Add(u);
            }
        }

    }
}
