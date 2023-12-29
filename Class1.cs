using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.NetworkInformation;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI.WebControls;

namespace CrudImplementation
{
   
    public  class  Func
    {
        public int ID { get; set; }
        public string Nombre { get; set; }
        public int cantidad { get; set; }
        public string TipoDeProducto { get; set; }
        
            
        public void enviar() {
            

        SqlConnection conexion = new SqlConnection("server=DESKTOP-5TH5G7K\\SQLEXPRESS ; database=PruebaCRUD ; integrated security = true; MultipleActiveResultSets=true; ");
        conexion.Open();
       
        string cadena = "INSERT INTO Productos(Nombre,Cantidad,TipoDeProducto) VALUES ('" + Nombre + "','" + cantidad + "','" + TipoDeProducto + "')";

        SqlCommand comando = new SqlCommand(cadena, conexion);

            comando.ExecuteNonQuery();

            conexion.Close();
        }

        public void cargarID()
        {
            SqlConnection conexion = new SqlConnection("server=DESKTOP-5TH5G7K\\SQLEXPRESS ; database=PruebaCRUD ; integrated security = true; MultipleActiveResultSets=true; ");
            conexion.Open();

            string cadena0 = "SELECT IDENT_CURRENT('Productos') AS ID";
            SqlCommand comando0 = new SqlCommand(cadena0, conexion);
            SqlDataReader registro = comando0.ExecuteReader();

            if (registro.Read())
            {
                ID = Convert.ToInt32(registro["ID"]);

            }
            else
            {

            }
            conexion.Close();
        }

        public void Buscar()
        {

            SqlConnection conexion = new SqlConnection("server=DESKTOP-5TH5G7K\\SQLEXPRESS ; database=PruebaCRUD ; integrated security = true; MultipleActiveResultSets=true; ");
            conexion.Open();

            String cadena = "select * from Productos where ID=" + ID;

            SqlCommand comando = new SqlCommand(cadena, conexion);
            SqlDataReader registro = comando.ExecuteReader();
            
                if (registro.Read())
                {
                    ID = Convert.ToInt32(registro["ID"]);
                    Nombre = registro["Nombre"].ToString();
                    cantidad = Convert.ToInt32(registro["Cantidad"]);
                    TipoDeProducto = registro["TipoDeProducto"].ToString();
                }
            
            
           
            conexion.Close();
        }
        public void editar()
        {
            
            SqlConnection conexion = new SqlConnection("server=DESKTOP-5TH5G7K\\SQLEXPRESS ; database=PruebaCRUD ; integrated security = true; MultipleActiveResultSets=true; ");
            conexion.Open();

            String cadena = "update Productos set Nombre='"+Nombre+"' , Cantidad='"+cantidad+"', TipoDeProducto='"+TipoDeProducto+"' where ID=" + ID; 

            SqlCommand comando = new SqlCommand(cadena, conexion);

             comando.ExecuteNonQuery();

            
        }
        public void eliminar()
        {
            SqlConnection conexion = new SqlConnection("server=DESKTOP-5TH5G7K\\SQLEXPRESS ; database=PruebaCRUD ; integrated security = true; MultipleActiveResultSets=true; ");
            conexion.Open();

            string cadena = "delete from Productos where ID=" + ID;
            SqlCommand comando = new SqlCommand(cadena, conexion);

            comando.ExecuteNonQuery();

            conexion.Close();
        }


        }
       
    }
    
    
