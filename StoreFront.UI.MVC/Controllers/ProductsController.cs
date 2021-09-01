using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using StoreFront.DATA.EF;

namespace StoreFront.UI.MVC.Controllers
{
    [Authorize(Roles = "Admin")]
    public class ProductsController : Controller
    {
        private StoreFrontEntities db = new StoreFrontEntities();

        // GET: Products
        public ActionResult Index()
        {
            var products = db.Products.Include(p => p.Category).Include(p => p.Color).Include(p => p.Image).Include(p => p.Image1).Include(p => p.Image2).Include(p => p.Image3).Include(p => p.Image4).Include(p => p.Image5).Include(p => p.ProductStatu).Include(p => p.Size);
            return View(products.ToList());
        }

        // GET: Products/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Products.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            return View(product);
        }

        // GET: Products/Create
        public ActionResult Create()
        {
            ViewBag.CategoriesID = new SelectList(db.Categories, "CategorieParentID", "MainCategory");
            ViewBag.ColorVariantID = new SelectList(db.Colors, "ColorVariantID", "Color1");
            ViewBag.ImageID = new SelectList(db.Images, "ImageID", "Image1");
            ViewBag.ImageID2 = new SelectList(db.Images, "ImageID", "Image1");
            ViewBag.ImageID3 = new SelectList(db.Images, "ImageID", "Image1");
            ViewBag.ImageID4 = new SelectList(db.Images, "ImageID", "Image1");
            ViewBag.ImageID5 = new SelectList(db.Images, "ImageID", "Image1");
            ViewBag.ImageID1 = new SelectList(db.Images, "ImageID", "Image1");
            ViewBag.StatusID = new SelectList(db.ProductStatus1, "StatusID", "Status");
            ViewBag.SizeVariantID = new SelectList(db.Sizes, "SizeVariantID", "Size1");
            return View();
        }

        // POST: Products/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ProductID,SizeVariantID,ColorVariantID,CategoriesID,Title,Description,SKU,Price,Stock,StatusID,ImageID,ImageID1,ImageID2,ImageID3,ImageID4,ImageID5,SupplierID")] Product product)
        {
            if (ModelState.IsValid)
            {
                db.Products.Add(product);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.CategoriesID = new SelectList(db.Categories, "CategorieParentID", "MainCategory", product.CategoriesID);
            ViewBag.ColorVariantID = new SelectList(db.Colors, "ColorVariantID", "Color1", product.ColorVariantID);
            ViewBag.ImageID = new SelectList(db.Images, "ImageID", "Image1", product.ImageID);
            ViewBag.ImageID2 = new SelectList(db.Images, "ImageID", "Image1", product.ImageID2);
            ViewBag.ImageID3 = new SelectList(db.Images, "ImageID", "Image1", product.ImageID3);
            ViewBag.ImageID4 = new SelectList(db.Images, "ImageID", "Image1", product.ImageID4);
            ViewBag.ImageID5 = new SelectList(db.Images, "ImageID", "Image1", product.ImageID5);
            ViewBag.ImageID1 = new SelectList(db.Images, "ImageID", "Image1", product.ImageID1);
            ViewBag.StatusID = new SelectList(db.ProductStatus1, "StatusID", "Status", product.StatusID);
            ViewBag.SizeVariantID = new SelectList(db.Sizes, "SizeVariantID", "Size1", product.SizeVariantID);
            return View(product);
        }

        // GET: Products/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Products.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            ViewBag.CategoriesID = new SelectList(db.Categories, "CategorieParentID", "MainCategory", product.CategoriesID);
            ViewBag.ColorVariantID = new SelectList(db.Colors, "ColorVariantID", "Color1", product.ColorVariantID);
            ViewBag.ImageID = new SelectList(db.Images, "ImageID", "Image1", product.ImageID);
            ViewBag.ImageID2 = new SelectList(db.Images, "ImageID", "Image1", product.ImageID2);
            ViewBag.ImageID3 = new SelectList(db.Images, "ImageID", "Image1", product.ImageID3);
            ViewBag.ImageID4 = new SelectList(db.Images, "ImageID", "Image1", product.ImageID4);
            ViewBag.ImageID5 = new SelectList(db.Images, "ImageID", "Image1", product.ImageID5);
            ViewBag.ImageID1 = new SelectList(db.Images, "ImageID", "Image1", product.ImageID1);
            ViewBag.StatusID = new SelectList(db.ProductStatus1, "StatusID", "Status", product.StatusID);
            ViewBag.SizeVariantID = new SelectList(db.Sizes, "SizeVariantID", "Size1", product.SizeVariantID);
            return View(product);
        }

        // POST: Products/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ProductID,SizeVariantID,ColorVariantID,CategoriesID,Title,Description,SKU,Price,Stock,StatusID,ImageID,ImageID1,ImageID2,ImageID3,ImageID4,ImageID5,SupplierID")] Product product)
        {
            if (ModelState.IsValid)
            {
                db.Entry(product).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.CategoriesID = new SelectList(db.Categories, "CategorieParentID", "MainCategory", product.CategoriesID);
            ViewBag.ColorVariantID = new SelectList(db.Colors, "ColorVariantID", "Color1", product.ColorVariantID);
            ViewBag.ImageID = new SelectList(db.Images, "ImageID", "Image1", product.ImageID);
            ViewBag.ImageID2 = new SelectList(db.Images, "ImageID", "Image1", product.ImageID2);
            ViewBag.ImageID3 = new SelectList(db.Images, "ImageID", "Image1", product.ImageID3);
            ViewBag.ImageID4 = new SelectList(db.Images, "ImageID", "Image1", product.ImageID4);
            ViewBag.ImageID5 = new SelectList(db.Images, "ImageID", "Image1", product.ImageID5);
            ViewBag.ImageID1 = new SelectList(db.Images, "ImageID", "Image1", product.ImageID1);
            ViewBag.StatusID = new SelectList(db.ProductStatus1, "StatusID", "Status", product.StatusID);
            ViewBag.SizeVariantID = new SelectList(db.Sizes, "SizeVariantID", "Size1", product.SizeVariantID);
            return View(product);
        }

        // GET: Products/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Products.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            return View(product);
        }

        // POST: Products/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Product product = db.Products.Find(id);
            db.Products.Remove(product);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
