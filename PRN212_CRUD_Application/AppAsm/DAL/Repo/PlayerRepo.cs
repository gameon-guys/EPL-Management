using DAL.Entities;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Repo
{
    public class PlayerRepo
    {
        private EplmanagementContext _context = new();
        public void Create(Player player)
        {
      ;
            _context.Players.Add(player);
            _context.SaveChanges();
        }

        public void Delete(Player player)
        {
          
            _context.Players.Remove(player);
            _context.SaveChanges();
        }

        public void Update(Player player)
        {
          
            _context.Players.Update(player);
            _context.SaveChanges();
        }

        public List<Player> GetAll(int userId)
        {
            var user = _context.Users.Find(userId);
            if (user == null || user.FootballTeamId == null)
                return new List<Player>(); // Không có user hoặc user không có đội bóng.

            return _context.Players.Include(p => p.FootballTeam)
                                   .Where(p => p.FootballTeamId == user.FootballTeamId)
                                   .ToList();
        }

        public string GetTeamNameByUserId(int userId)
        {

            var user = _context.Users.Find(userId);
            var teamName = _context.FootballTeams
                          .Where(ft => ft.FootballTeamId == user.FootballTeamId)
                          .Select(ft => ft.TeamName)
                          .FirstOrDefault();

            return teamName ?? "No Team";
        }




    }
}
