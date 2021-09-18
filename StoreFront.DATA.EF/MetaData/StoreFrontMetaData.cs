using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.Web;

namespace StoreFront.DATA.EF//.MetaData
{
    #region Category
    public class CategoryMetadata
    {
        public int CategorieParentID { get; set; }

        [Required(ErrorMessage = "*Main Category is required")]
        [StringLength(25, ErrorMessage = "* Cannot exceed 25 characters")]
        [Display(Name = "Main Category")]
        public string MainCategory { get; set; }

        [Required(ErrorMessage = "*Child Category is required")]
        [StringLength(25, ErrorMessage = "* Cannot exceed 25 characters")]
        [Display(Name = "Child Category")]
        public string ChildCategory { get; set; }
    }

    [MetadataType(typeof(CategoryMetadata))]
    public partial class Category
    {
        //this is typically empty, unless you need to create custom properties
    }
    #endregion

    #region Color
    public class ColorMetadata
    {
        public int ColorVariantID { get; set; }

        [Required(ErrorMessage = "*Color is required")]
        [StringLength(25, ErrorMessage = "*Cannot exceed 25 characters")]
        [Display(Name = "Color")]
        public string Color1 { get; set; }
    }

    [MetadataType(typeof(ColorMetadata))]
    public partial class Color
    {
        //this is typically empty, unless you need to create custom properties
    }
    #endregion

    #region Department
    public class DepartmentMetadata
    {
        public int DepartmentID { get; set; }

        [Required(ErrorMessage = "* Department is required")]
        [StringLength(100, ErrorMessage = "* Cannot exceed 100 characters")]
        [Display(Name = "Department")]
        public string Department1 { get; set; }
    }

    [MetadataType(typeof(DepartmentMetadata))]
    public partial class Department
    {
        //this is typically empty, unless you need to create custom properties
    }
    #endregion

    #region Employee
    public class EmployeeMetadata
    {
        public int EmployeeID { get; set; }

        [Required(ErrorMessage = "* Last Name is required")]
        [StringLength(50, ErrorMessage = "* Cannot exceed 50 characters")]
        [Display(Name = "Last Name")]
        public string LastName { get; set; }

        [Required(ErrorMessage = "* First Name is required")]
        [StringLength(50, ErrorMessage = "* Cannot exceed 50 characters")]
        [Display(Name = "First Name")]
        public string FirstName { get; set; }

        [Required(ErrorMessage = "* Title is required")]
        [StringLength(50, ErrorMessage = "* Cannot exceed 50 characters")]
        public string Title { get; set; }

        [Required(ErrorMessage = "* Birth Date is required")]
        [Display(Name = "Birth Date")]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        public System.DateTime BirthDate { get; set; }

        [Required(ErrorMessage = "* Hire Date is required")]
        [Display(Name = "Hire Date")]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        public System.DateTime HireDate { get; set; }

        [Required(ErrorMessage = "* Home Phone is required")]
        [StringLength(20, ErrorMessage = "* Cannot exceed 20 characters")]
        [Display(Name = "Home Phone")]
        [Phone]
        public string HomePhone { get; set; }

        [StringLength(5, ErrorMessage = "* Cannot exceed 5 characters")]
        public string Extension { get; set; }

        [UIHint("MultilineText")]
        [StringLength(1000, ErrorMessage = "* Cannot exceed 1000 characters")]
        public string Notes { get; set; }

        [Display(Name = "Reports To")]
        public Nullable<int> ReportsToID { get; set; }

        [Required(ErrorMessage = "* Department is required")]
        [Display(Name = "Department")]
        public int DepartmentID { get; set; }

        [Required(ErrorMessage = "* Address is required")]
        [StringLength(200, ErrorMessage = "* Cannot exceed 200 characters")]
        public string Address { get; set; }

        [Required(ErrorMessage = "* City is required")]
        [StringLength(50, ErrorMessage = "* Cannot exceed 50 characters")]
        public string City { get; set; }

        [Required(ErrorMessage = "* State is required")]
        [StringLength(2, ErrorMessage = "* Cannot exceed 2 characters")]
        public string State { get; set; }

        [Required(ErrorMessage = "* Zip Code is required")]
        [StringLength(12, ErrorMessage = "* Cannot exceed 12 characters")]
        [Display(Name = "Zip Code")]
        public string Zip { get; set; }

    }

    [MetadataType(typeof(EmployeeMetadata))]
    public partial class Employee
    {
        //this is typically empty, unless you need to create custom properties
    }
    #endregion

    #region Image
    public class ImageMetadata
    {
        [Display(Name = "Image")]
        public int ImageID { get; set; }

        [Required]
        [StringLength(100, ErrorMessage = "* Cannot exceed 100 characters")]
        [Display(Name = "Image")]
        public string Image1 { get; set; }
    }

    [MetadataType(typeof(ImageMetadata))]
    public partial class Image
    {
        //this is typically empty, unless you need to create custom properties
    }
    #endregion

    #region Product
    public class ProductMetadata
    {
        public int ProductID { get; set; }
        public Nullable<int> SizeVariantID { get; set; }
        public Nullable<int> ColorVariantID { get; set; }

        [Required(ErrorMessage = "*Category is required")]
        public int CategoriesID { get; set; }

        [Required(ErrorMessage = "*Title is required")]
        [UIHint("MultilineText")]
        public string Title { get; set; }

        
        [UIHint("tinymce_full")]
        [Display(Name = "Description")]
        public string Description { get; set; }

        [Required(ErrorMessage = "*SKU is required")]
        public string SKU { get; set; }

        [Required(ErrorMessage = "*Price is required")]
        [DisplayFormat(DataFormatString = "{0:c}")]
        public decimal Price { get; set; }
        public int Stock { get; set; }
        public Nullable<int> StatusID { get; set; }

        [Required(ErrorMessage = "*Image is required")]
        public int ImageID { get; set; }
        public Nullable<int> ImageID1 { get; set; }
        public Nullable<int> ImageID2 { get; set; }
        public Nullable<int> ImageID3 { get; set; }
        public Nullable<int> ImageID4 { get; set; }
        public Nullable<int> ImageID5 { get; set; }

        [Required(ErrorMessage = "*Supplier is required")]
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

        
        public virtual Supplier Supplier { get; set; }
    }

    [MetadataType(typeof(ProductMetadata))]
    public partial class Product
    {
        //this is typically empty, unless you need to create custom properties
    }
    #endregion

    #region Product Status
    public class ProductStatusMetadata
    {
        public int StatusID { get; set; }

        [Required]
        [StringLength(25, ErrorMessage = "* Cannot exceed 25 characters")]
        public string Status { get; set; }
    }

    [MetadataType(typeof(ProductStatusMetadata))]
    public partial class ProductStatus
    {
        //this is typically empty, unless you need to create custom properties
    }
    #endregion

    #region Size
    public class SizeMetadata
    {
        public int SizeVariantID { get; set; }

        [Required]
        [StringLength(25, ErrorMessage = "* Cannot exceed 25 characters")]
        [Display(Name = "Size")]
        public string Size1 { get; set; }
    }

    [MetadataType(typeof(SizeMetadata))]
    public partial class Size
    {
        //this is typically empty, unless you need to create custom properties
    }
    #endregion

    #region Supplier
    public class SupplierMetadata
    {
        [Display(Name = "Supplier")]
        public int SupplierID { get; set; }
        [Display(Name = "Supplier")]
        public string Supplier1 { get; set; }
        public string Contact { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string Zip { get; set; }
    }

    [MetadataType(typeof(SupplierMetadata))]
    public partial class Suppler
    {
        //this is typically empty, unless you need to create custom properties
    }
    #endregion
}
