using System;
using System.Collections.Generic;

namespace PetStore.DATA.EF.Models
{
    public partial class Category
    {
        public Category()
        {
            Products = new HashSet<Product>();
        }

        public int CategoryId { get; set; }
        public string Animal { get; set; } = null!;

        public virtual ICollection<Product> Products { get; set; }
    }
}
