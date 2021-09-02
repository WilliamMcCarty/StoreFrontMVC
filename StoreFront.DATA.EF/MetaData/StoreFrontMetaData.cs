using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

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

        [Required(ErrorMessage = "* Child Category is required")]
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

        [Required(ErrorMessage = "* Color is required")]
        [StringLength(25, ErrorMessage = "* Cannot exceed 25 characters")]
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

    #endregion
}
