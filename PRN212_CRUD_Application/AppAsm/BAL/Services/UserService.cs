using DAL.Entities;
using DAL.Repo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BAL.Services
{
    public class UserService
    {
        private UserRepo _repo = new();

        public User? Authenticate(string username, string passwordHash)
        {
            return _repo.GetUser(username, passwordHash);
        }
    }
}
