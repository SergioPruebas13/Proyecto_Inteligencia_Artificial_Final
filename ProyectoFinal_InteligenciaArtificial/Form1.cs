using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using SbsSW.SwiPlCs;

namespace ProyectoFinal_InteligenciaArtificial
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            Environment.SetEnvironmentVariable("Path", @"C:\\PROGRAM FILES (x86)\\swipl\bin");
            string[] p = { "-q", "-f", @"componentes.pl" };
            PlEngine.Initialize(p);
        }

        private void btn_Cargar_Click(object sender, EventArgs e)
        {

            ltb_Computadores.Items.Clear();
            PlQuery busque = null;
            string procesador = "Proce";
            string placa_madre = "Placa_m";
            string gpu = "Gpu";
            string ram = "Ram";
            string Fuentepw = "Fuente_pw";
            string periferico = "Perif";
            string disco = "Disco";
            string monitor = "Moni";
            string gabinete = "Gabin";
            int valor = 0;

            if (!(Convert.ToString(cmb_procesadores.SelectedItem).Equals("todos"))){ procesador = Convert.ToString(cmb_procesadores.SelectedItem); }
            if (!(Convert.ToString(cmb_PlacaMadre.SelectedItem).Equals("todos"))) { placa_madre = Convert.ToString(cmb_PlacaMadre.SelectedItem); }
            if (!(Convert.ToString(cmb_GPU.SelectedItem).Equals("todos"))) { gpu = Convert.ToString(cmb_GPU.SelectedItem); }
            if (!(Convert.ToString(cmb_Ram.SelectedItem).Equals("todos"))) { ram = Convert.ToString(cmb_Ram.SelectedItem); }
            if (!(Convert.ToString(cmb_FuentePw.SelectedItem).Equals("todos"))) { Fuentepw = Convert.ToString(cmb_FuentePw.SelectedItem); }
            if (!(Convert.ToString(cmb_Periferico.SelectedItem).Equals("todos"))) { periferico = Convert.ToString(cmb_Periferico.SelectedItem); }
            if (!(Convert.ToString(cmb_Disco.SelectedItem).Equals("todos"))) { disco = Convert.ToString(cmb_Disco.SelectedItem); }
            if (!(Convert.ToString(cmb_Monitor.SelectedItem).Equals("todos"))) { monitor = Convert.ToString(cmb_Monitor.SelectedItem); }
            if (!(Convert.ToString(cmb_Gabinete.SelectedItem).Equals("todos"))) { gabinete = Convert.ToString(cmb_Gabinete.SelectedItem); }
            if (txt_Presupuesto.Text.Length > 0) { valor = int.Parse(txt_Presupuesto.Text); }






            PlQuery cargar = new PlQuery("cargar('componentes.bd')");
            cargar.NextSolution();


            if (txt_Presupuesto.Text.Length > 0)
            {
                busque = new PlQuery("busqueda_valor(" + procesador + "," + placa_madre + "," + gpu + "," + ram + "," + Fuentepw + "," + periferico + "," + disco + "," + monitor + "," + gabinete + "," + valor + ",Precio).");
            }
            else
            {
                busque = new PlQuery("busqueda(" + procesador + "," + placa_madre + "," + gpu + "," + ram + "," + Fuentepw + "," + periferico + "," + disco + "," + monitor + "," + gabinete + ",Precio).");
            }


            foreach (PlQueryVariables item in busque.SolutionVariables)
            {

                //Porcesador
                if (!(Convert.ToString(cmb_procesadores.SelectedItem).Equals("todos")))
                {
                    procesador = Convert.ToString(cmb_procesadores.SelectedItem);
                    ltb_Computadores.Items.Add("Procesador = " + procesador);
                }
                else
                {
                    ltb_Computadores.Items.Add("Procesador = " + item["Proce"].ToString());
                }

                //Placa Madre
                if (!(Convert.ToString(cmb_PlacaMadre.SelectedItem).Equals("todos")))
                {
                    placa_madre = Convert.ToString(cmb_PlacaMadre.SelectedItem);
                    ltb_Computadores.Items.Add("Placa Madre = " + placa_madre);
                }
                else
                {
                    ltb_Computadores.Items.Add("Placa Madre = " + item["Placa_m"].ToString());
                }

                //GPU
                if (!(Convert.ToString(cmb_GPU.SelectedItem).Equals("todos")))
                {
                    gpu = Convert.ToString(cmb_GPU.SelectedItem);
                    ltb_Computadores.Items.Add("GPU = " + gpu);
                }
                else
                {
                    ltb_Computadores.Items.Add("GPU = " + item["Gpu"].ToString());
                }

                //Ram
                if (!(Convert.ToString(cmb_Ram.SelectedItem).Equals("todos")))
                {
                    ram = Convert.ToString(cmb_Ram.SelectedItem);
                    ltb_Computadores.Items.Add("Ram = " + ram);
                }
                else
                {
                    ltb_Computadores.Items.Add("Ram = " + item["Ram"].ToString());
                }

                //Fuente de Poder
                if (!(Convert.ToString(cmb_FuentePw.SelectedItem).Equals("todos")))
                {
                    Fuentepw = Convert.ToString(cmb_FuentePw.SelectedItem);
                    ltb_Computadores.Items.Add("Fuente de Poder = " + Fuentepw);
                }
                else
                {
                    ltb_Computadores.Items.Add("Fuente de Poder = " + item["Fuente_pw"].ToString());
                }

                //Periferico
                if (!(Convert.ToString(cmb_Periferico.SelectedItem).Equals("todos")))
                {
                    periferico = Convert.ToString(cmb_Periferico.SelectedItem);
                    ltb_Computadores.Items.Add("Periferico = " + periferico);
                }
                else
                {
                    ltb_Computadores.Items.Add("Periferico = " + item["Perif"].ToString());
                }

                //Disco
                if (!(Convert.ToString(cmb_Disco.SelectedItem).Equals("todos")))
                {
                    disco = Convert.ToString(cmb_Disco.SelectedItem);
                    ltb_Computadores.Items.Add("Disco = " + disco);
                }
                else
                {
                    ltb_Computadores.Items.Add("Disco = " + item["Disco"].ToString());
                }

                //Monitor
                if (!(Convert.ToString(cmb_Monitor.SelectedItem).Equals("todos")))
                {
                    monitor = Convert.ToString(cmb_Monitor.SelectedItem);
                    ltb_Computadores.Items.Add("Monitor = " + monitor);
                }
                else
                {
                    ltb_Computadores.Items.Add("Monitor = " + item["Moni"].ToString());
                }

                //Gabinete
                if (!(Convert.ToString(cmb_Monitor.SelectedItem).Equals("todos")))
                {
                    gabinete = Convert.ToString(cmb_Gabinete.SelectedItem);
                    ltb_Computadores.Items.Add("Gabinete = " + gabinete);
                }
                else
                {
                    ltb_Computadores.Items.Add("Gabinete = " + item["Gabin"].ToString());
                }
                ltb_Computadores.Items.Add("Precio = " + item["Precio"]);
                ltb_Computadores.Items.Add("");
                ltb_Computadores.Items.Add("--------------------------------");
                ltb_Computadores.Items.Add("");
            }

            PlQuery Otro = new PlQuery("procesador(intel,Y).");
            foreach (PlQueryVariables item in Otro.SolutionVariables) { }


        }
        

    }

        
}
