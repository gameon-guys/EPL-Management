using DAL.Entities;
using DAL.Repo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BAL.Services
{
    public class PlayerService
    {
        private PlayerRepo _repo = new();

        public void CreatePlayer(Player player) => _repo.Create(player);

        public void DeletePlayer(Player player) => _repo.Delete(player);

        public void UpdatePlayer(Player player) => _repo.Update(player);

        public List<Player> GetAllPlayers(int userId) => _repo.GetAll(userId);

        public string GetTeamNameByUserId(int userId) => _repo.GetTeamNameByUserId(userId);


    }
}
