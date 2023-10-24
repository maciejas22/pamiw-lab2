using P04WeatherForecastAPI.Client.Models;

namespace P04WeatherForecastAPI.Client.ViewModels
{
        public class AutocompleteViewModel
        {
                public City AutocompleteCityList { get; set; }

                public AutocompleteViewModel(City autocompleteCityList)
                {
                        AutocompleteCityList = autocompleteCityList;
                }
        }
}