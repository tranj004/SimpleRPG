using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Engine.Models
{
    public class World
    {
        private List<Locations> _locations = new List<Locations>();

        internal void AddLocation(int xCoordinate, int yCoordinate, string name, string description, string imageName)
        {
            Locations loc = new Locations();
            loc.XCoordinate = xCoordinate;
            loc.YCoordinate = yCoordinate;
            loc.Name = name;
            loc.Description = description;
            loc.ImageName = imageName;

            _locations.Add(loc);
        }

        public Locations LocationAt(int xCoordinate, int yCoordinate)
        {
            foreach (Locations loc in _locations)
            {
                if (loc.XCoordinate == xCoordinate && loc.YCoordinate == yCoordinate)
                {
                    return loc;
                }
            }

            return null;
        }
    }
}
