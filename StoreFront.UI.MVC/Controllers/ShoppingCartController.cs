﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using StoreFront.DATA.EF;
using StoreFront.UI.MVC.Models;

namespace StoreFront.UI.MVC.Controllers
{
    public class ShoppingCartController : Controller
    {
        private StoreFrontEntities db = new StoreFrontEntities();

        // GET: ShoppingCart
        public ActionResult Index()
        {
            //retrive the Session shopping cart
            var shoppingCart = (Dictionary<int, CartItemViewModel>)Session["cart"];

            if (shoppingCart == null)
            {
                shoppingCart = new Dictionary<int, CartItemViewModel>();
            }

            return View(shoppingCart);
        }

        public ActionResult AddToCart(int qty, int productId)
        {
            Dictionary<int, CartItemViewModel> shoppingCart = null;
            
            if (Session["cart"] != null)
            {
                shoppingCart = (Dictionary<int, CartItemViewModel>)Session["cart"];
            }
            else
            {
                shoppingCart = new Dictionary<int, CartItemViewModel>();
            }

            Product product = db.Products.Find(productId);

            CartItemViewModel item = new CartItemViewModel(qty, product);

            if (shoppingCart.ContainsKey(product.ProductID))
            {
                shoppingCart[product.ProductID].Qty += qty;
            }
            else
            {
                shoppingCart.Add(product.ProductID, item);
            }

            Session["cart"] = shoppingCart;

            return RedirectToAction("Index");
        }

        public ActionResult RemoveFromCart(int id)
        {
            Dictionary<int, CartItemViewModel> shoppingCart = (Dictionary<int, CartItemViewModel>)Session["cart"];

            shoppingCart.Remove(id);

            Session["cart"] = shoppingCart;

            return RedirectToAction("Index");
        }

        public ActionResult UpdateCart(int productId, int qty)
        {
            Dictionary<int, CartItemViewModel> shoppingCart = (Dictionary<int, CartItemViewModel>)Session["cart"];

            shoppingCart[productId].Qty = qty;

            if (shoppingCart[productId].Qty == 0)
            {
                shoppingCart.Remove(productId);
            }

            Session["cart"] = shoppingCart;

            return RedirectToAction("Index");
        }
    }
}