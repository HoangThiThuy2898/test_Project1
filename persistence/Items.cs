using System;
using System.Collections.Generic;

namespace Persistence
{
    public class Items
    {
        public int? ItemId{get; set;}
        public string ItemName{get; set;}
        public string Price{get; set;}
        public int Amount{get; set;}
        public override bool Equals(object obj){
            if(obj is Items){
                return ((Items)obj).ItemId.Equals(ItemId);
            }
            return false;
        }

        public override int GetHashCode(){
            return ItemId.GetHashCode();
        }
    }
}

// namespace persistence
// {
//     public class Items
//     {
//         public string itemId { get; set; }
//         public string itemName { get; set; }
//         public int quantity { get; set; }
//         public double price { get; set; }
//         public string description { get; set; }
//         public List<Categorys> CategoryList { get; set; }






//     }
// }