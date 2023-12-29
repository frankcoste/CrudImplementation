using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CrudImplementation.Funciones
{
    public partial class Editar : System.Web.UI.Page
    {

        Func f = new Func();

        protected void Page_Load(object sender, EventArgs e)
        {
            Nombre.Enabled = false;
            Cantidad.Enabled = false;
            TipoProducto.Enabled = false;
            BtnEditar.Enabled = false;
        }

        protected void BtnBuscar_Click(object sender, EventArgs e)
        {
            

            f.ID = Convert.ToInt32(ID.Text);

            try
            {
                f.Buscar();

                Nombre.Text = f.Nombre?.ToString() ?? "No existe";
                Cantidad.Text = f.cantidad.ToString() ?? "XXXXXXX";
                TipoProducto.Text = f.TipoDeProducto?.ToString() ?? "XXXXXXX";

                ID.Enabled = false;
                Nombre.Enabled = true;
                Cantidad.Enabled = true;
                TipoProducto.Enabled = true;
                BtnEditar.Enabled = true;
            }
            catch (Exception)
            {
                
                

            }


        }

        protected void Limpiar_Click(object sender, EventArgs e)
        {
            ID.Enabled = true;
            ID.Text = "";
            Nombre.Text = "";
            Cantidad.Text = ""; ;
            TipoProducto.SelectedIndex = 0;
            

        }

        protected void BtnEditar_Click(object sender, EventArgs e)
        {

            f.ID = Convert.ToInt32(ID.Text);

            f.Nombre = Nombre.Text;
            f.cantidad = Convert.ToInt32(Cantidad.Text);
            f.TipoDeProducto = TipoProducto.Text;

            f.editar();

            ID.Enabled = true;
            ID.Text = "";
            Nombre.Text = "";
            Cantidad.Text = ""; ;
            TipoProducto.SelectedIndex = 0;
        }
    }
}