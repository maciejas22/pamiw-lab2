
using P04WeatherForecastAPI.Client.Models;

namespace P04WeatherForecastAPI.Client.ViewModels
{
    public class LocationDetailsViewModel
    {
        public LocationDetailsViewModel(LocationInfo locationInfo)
        {
            LocationName = locationInfo.EnglishName;
            RegionName = locationInfo.Region.EnglishName;
            AdministrativeAreaName = locationInfo.AdministrativeArea.EnglishName;
            TimeZoneName = locationInfo.TimeZone.GmtOffset;
        }
        public string LocationName { get; set; }
        public string RegionName { get; set; }
        public string AdministrativeAreaName { get; set; }
        public double TimeZoneName { get; set; }
    }
}