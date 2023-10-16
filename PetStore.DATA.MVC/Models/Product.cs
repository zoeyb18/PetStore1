﻿using System;
using System.Collections.Generic;

namespace PetStore.DATA.EF.Models
{
    public partial class Product
    {
        public int ProductId { get; set; }
        public string ProductName { get; set; } = null!;
        public decimal ProductPrice { get; set; }
        public string? ProductDescription { get; set; }
        public bool IsDiscontinued { get; set; }
        public int CategoryId { get; set; }
        public int? SupplierId { get; set; }
        public string? ProductImage { get; set; }

        public virtual Category Category { get; set; } = null!;
        public virtual Supplier? Supplier { get; set; }
    }
}
