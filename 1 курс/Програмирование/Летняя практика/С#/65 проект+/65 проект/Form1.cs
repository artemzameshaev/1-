using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace _65_проект
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string n = textBox1.Text;
            string itog = textBox2.Text;
            int n_1 = Convert.ToInt32(n);
            int s = n_1 / 10 + n_1 % 10;
            if (n_1 * n_1 == s * s * s)
                textBox2.Text = ("Верно");
            else
                textBox2.Text = ("Не верно");
        }
    }
}
