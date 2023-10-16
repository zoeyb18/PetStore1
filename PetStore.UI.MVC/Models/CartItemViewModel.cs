using PetStore.DATA.EF.Models;


namespace PetStore.UI.MVC.Models
{
    public class CartItemViewModel
    {
        public int Qty { get; set; }
        public Product Product { get; set; }
        //The above is an example of a concept called "Containment":
        //We are using a COMPLEX datatype as a field/property in a class.

        //A complex datatype is any class with multiple properties. DateTime, Product
        //A primitive datatype stores a single value. bool, int, short

        //CTRL + . => Generate constructor ... => Select props => OK
        public CartItemViewModel(int qty, Product product)
        {
            Qty = qty;
            Product = product;
        }
    }
}
