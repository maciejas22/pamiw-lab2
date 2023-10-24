using System;

namespace P04WeatherForecastAPI.Client.ViewModels
{
    public class LocationHeighboursViewModel
    {
        public LocationHeighboursViewModel(string[] locationNeighbours = null)
        {
            LocationNeighbours = locationNeighbours;
        }
        public string[] LocationNeighbours { get; set; }
    }
}