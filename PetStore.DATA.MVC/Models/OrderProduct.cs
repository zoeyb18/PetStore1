﻿using System;
using System.Collections.Generic;

namespace PetStore.DATA.EF.Models
{
    public partial class OrderProduct
    {
        public int OrderProductId { get; set; }
        public int ProductId { get; set; }
        public int OrderId { get; set; }
        public short? Quantity { get; set; }
        public decimal ProductPrice { get; set; }

        public virtual Order Order { get; set; } = null!;
    }
}
