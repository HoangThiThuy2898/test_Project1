using System;
using System.Collections.Generic;

namespace persistence{
    public class Items{
        public string itemId {get; set;}
        public string itemName {get; set;}
        public int quantity {get; set;}
        public double price {get; set;}
        public string description {get; set;}
        public List<Categorys> CategoryList {get; set;}

        

    }
}