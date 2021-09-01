//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace StoreFront.DATA.EF
{
    using System;
    using System.Collections.Generic;
    
    public partial class Product
    {
        public int ProductID { get; set; }
        public Nullable<int> SizeVariantID { get; set; }
        public Nullable<int> ColorVariantID { get; set; }
        public int CategoriesID { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public string SKU { get; set; }
        public decimal Price { get; set; }
        public int Stock { get; set; }
        public Nullable<int> StatusID { get; set; }
        public int ImageID { get; set; }
        public Nullable<int> ImageID1 { get; set; }
        public Nullable<int> ImageID2 { get; set; }
        public Nullable<int> ImageID3 { get; set; }
        public Nullable<int> ImageID4 { get; set; }
        public Nullable<int> ImageID5 { get; set; }
        public int SupplierID { get; set; }
    
        public virtual Category Category { get; set; }
        public virtual Color Color { get; set; }
        public virtual Image Image { get; set; }
        public virtual Image Image1 { get; set; }
        public virtual Image Image2 { get; set; }
        public virtual Image Image3 { get; set; }
        public virtual Image Image4 { get; set; }
        public virtual Image Image5 { get; set; }
        public virtual ProductStatus ProductStatu { get; set; }
        public virtual Size Size { get; set; }
    }
}