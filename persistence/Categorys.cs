using System;
namespace persistence
{
    public class Categorys
    {
        public int categoryId {set; get;}
        public string categoryName{get; set;}

        public Categorys(){}

        public Categorys(int categoryId, string categoryName)
        {

        }
    }
}