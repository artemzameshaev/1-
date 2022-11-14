using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace _270б_Форма
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string str = textBox1.Text;
            string Word = str.Split(' ')[0];
            Word = Word.ToUpper();
            str = Word + str.Substring(Word.Length, str.Length - Word.Length);
            textBox2.Text = str;
        }
    }
}
