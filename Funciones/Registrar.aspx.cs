using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CrudImplementation.Funciones
{
    public partial class Buscar : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }


        protected void BtnRegistrar_Click(object sender, EventArgs e)
        {
            Func Funcion = new Func();

            string Prod = TipoProducto.SelectedValue.ToString();

            
            Funcion.Nombre = Nombre.Text;
            Funcion.cantidad = Convert.ToInt32(Cantidad.Text);
            Funcion.TipoDeProducto = Prod;
            
           
            Funcion.enviar();

            Funcion.cargarID();

            ID.Text = Funcion.ID.ToString();
        }

        protected void  Limpiar_Click(object sender, EventArgs e)
        {
           

            ID.Text = "";
            Nombre.Text = "";
            Cantidad.Text = ""; ;
            TipoProducto.SelectedIndex = 0;
            
            
        }
    }
}