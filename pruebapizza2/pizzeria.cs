using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace pruebapizza2
{
    public partial class pizzeria : Form
    {
        public pizzeria()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            long fecha = DateTimeOffset.UtcNow.ToUnixTimeMilliseconds();
            Venta venta = new Venta();
            venta.fecha = fecha;

            Cajero cajero = new Cajero();

            Producto producto = new Producto();

            Cliente cliente = new Cliente();

            venta.idCajero = cajero.rut;
            venta.idCliente = cliente.phone;
            venta.idProducto = producto.cantidad;

            LinkCajeroDataContext dc = new LinkCajeroDataContext();
            var datosCajero = dc.Cajero.All<Cajero>(c => c.rut == 84767484);

        }
    }
}
