using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

    public class Product
    {
    internal string product_specification;

    public string product_id { get; set; }
        public string product_name { get; set; }
        public string product_price { get; set; }
        public string product_image { get; set; }
        public string product_description { get; set; }
        public string product_qty { get; set; }
    public string product_color { get; internal set; }
    public object product_warranty { get; internal set; }
    public string product_spec { get; internal set; }

    public static string CartDisplay(Product product)
        {
            //Formating Customer String to Show In Contact List
            Console.WriteLine(product.product_price);
            Console.WriteLine(Convert.ToInt32(product.product_qty));
            Console.WriteLine((Convert.ToDouble(product.product_price) * Convert.ToInt32(product.product_qty)));
            return product.product_name + "; Qty = " + product.product_qty + " ; Price = " + (Convert.ToDouble(product.product_price) * Convert.ToInt32(product.product_qty));
        }
    }