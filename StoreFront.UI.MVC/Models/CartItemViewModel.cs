using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using StoreFront.DATA.EF;

namespace StoreFront.UI.MVC.Models
{
    public class CartItemViewModel
    {
        public Product Product { get; set; }
        public int Qty { get; set; }

        public CartItemViewModel(int qty, Product product)
        {
            Qty = qty;
            Product = product;
        }
    }
}