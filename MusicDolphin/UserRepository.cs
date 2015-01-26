using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MusicDolphin
{
    class UserRepository
    {
        MDEntities db = new MDEntities();

        public void AddUser(string username)
        {
            User u = new User();
            u.username = username;
            db.User.Add(u);
            db.SaveChanges();
        }

        public User GetUser(string username)
        {
            return db.User.Find(username);
        }

        public List<User> GetAllUsers()
        {
            return db.User.ToList();
        }
    }
}
