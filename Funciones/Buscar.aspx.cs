using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CrudImplementation.Funciones
{
    public partial class Buscar1 : System.Web.UI.Page
    {
        Func f = new Func();

        protected void Page_Load(object sender, EventArgs e)
        {
            Nombre.Enabled = false;
            Cantidad.Enabled = false;
            TipoProducto.Enabled = false;
        }

        protected void BtnBuscar_Click(object sender, EventArgs e)
        {


            f.ID = Convert.ToInt32(ID.Text);

            try
            {
                
                f.Buscar();
                
                Nombre.Text = f.Nombre?.ToString() ?? "No existe";
                Cantidad.Text = f.cantidad.ToString();
                TipoProducto.Text = f.TipoDeProducto?.ToString() ?? "XXXXXXX";

                

            }
            catch (Exception ex)
            {
                
                

            }

        }

        protected void Limpiar_Click(object sender, EventArgs e)
        {
            ID.Text = "";
            Nombre.Text = "";
            Cantidad.Text = ""; ;
            TipoProducto.Text = "";
            
        }

        
        
    }
    }
