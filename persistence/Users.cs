using System;

namespace persistence
{
    public class Users
    {
        public int userId{set; get;}
        public string userName {set; get;}
        public string password {set; get;}
        public string phoneNumber{set; get;}
        public string address {set; get;}
        public DateTime dateOfBirth {set; get;}

        public Users(){}

        public Users(int userId, string userName, string password, string phoneNumber, string address, DateTime dateOfBirth  ){

        }

        
    }

}
