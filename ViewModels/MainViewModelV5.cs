using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using Microsoft.Extensions.DependencyInjection;
using P04WeatherForecastAPI.Client.Commands;
using P04WeatherForecastAPI.Client.DataSeeders;
using P04WeatherForecastAPI.Client.Models;
using P04WeatherForecastAPI.Client.Services;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

using System;
using System.ComponentModel;

namespace P04WeatherForecastAPI.Client.ViewModels
{
    public partial class MainViewModelV5 : ObservableObject
    {
        private readonly IAccuWeatherService _accuWeatherService;

        public ObservableCollection<AutocompleteViewModel> AutocompleteCities { get; set; }


        // Constructor
        public MainViewModelV5(
            IAccuWeatherService accuWeatherService, 
            CurrentTempViewModel currentTempViewModel,
            HourlyForecastViewModel hourlyForecastViewModel,
            HistoricalHourlyForecastViewModel historicalHourlyForecastViewModel
            )
        {
            _accuWeatherService = accuWeatherService;
            AutocompleteCities = new ObservableCollection<AutocompleteViewModel>();
        }
        
        private AutocompleteViewModel _selectedCity;
        public AutocompleteViewModel SelectedCity
        {
            get { return _selectedCity; }
            set
            {
                _selectedCity = value;
                OnPropertyChanged(nameof(SelectedCity));

                HandleSelectedCityChange();
            }
        }
        
        [RelayCommand]
        public async void LoadCities(string locationName)
        {
            var cities = await _accuWeatherService.GetLocations(locationName);
            AutocompleteCities.Clear();
            foreach (var city in cities)
            {
                AutocompleteCities.Add(new AutocompleteViewModel(city));
            }
        }

        [ObservableProperty] private CurrentTempViewModel currentTempView;
        private async void HandleCurrentTemp()
        {
            var cityKey = SelectedCity.AutocompleteCityList.Key;
            if (cityKey != "")
            {
                var temp = await _accuWeatherService.GetCurrentTemp(cityKey);
                CurrentTempView = new CurrentTempViewModel(temp);
            }
        }
        
        [ObservableProperty] private HourlyForecastViewModel hourlyForecastView;
        private async void HandleHourlyForecast()
        {
            var cityKey = SelectedCity.AutocompleteCityList.Key;
            if (cityKey != "")
            {
                var temp = await _accuWeatherService.GetHourlyForecast(cityKey);
                HourlyForecastView = new HourlyForecastViewModel(temp);
            }
        }
        
        [ObservableProperty] private HistoricalHourlyForecastViewModel historicalHourlyForecastView;
        private async void HandleHistoricalHourlyForecast()
        {
            var cityKey = SelectedCity.AutocompleteCityList.Key;
            if (cityKey != "")
            {
                var temp = await _accuWeatherService.GetHistoricalHourlyForeCast(cityKey);
                HistoricalHourlyForecastView = new HistoricalHourlyForecastViewModel(temp);
            }
        }
        
        [ObservableProperty] private DailyForecastViewModel dailyForecastView;
        private async void HandleDailyForecast()
        {
            var cityKey = SelectedCity.AutocompleteCityList.Key;
            if (cityKey != "")
            {
                var (minTemp, maxTemp) = await _accuWeatherService.GetDailyForecast(cityKey);
                DailyForecastView = new DailyForecastViewModel(minTemp, maxTemp);
            }
        }
        
        [ObservableProperty] private RunningIndiciesViewModel runningIndiciesView;
        private async void HandleRunningIndicies()
        {
            var cityKey = SelectedCity.AutocompleteCityList.Key;
            if (cityKey != "")
            {
                var runningIndices = await _accuWeatherService.GetRunningIndices(cityKey);
                RunningIndiciesView = new RunningIndiciesViewModel(runningIndices);
            }
        }
        
        [ObservableProperty] private LocationDetailsViewModel locationDetailsView;
        private async void HandleLocationDetails()
        {
            var cityKey = SelectedCity.AutocompleteCityList.Key;
            if (cityKey != "")
            {
                var locationInfo = await _accuWeatherService.GetLocationInfo(cityKey);
                LocationDetailsView = new LocationDetailsViewModel(locationInfo);
            }
        }
        
        [ObservableProperty] private LocationHeighboursViewModel locationHeighboursView;
        private async void HandleLocationHeighbours()
        {
            var cityKey = SelectedCity.AutocompleteCityList.Key;
            if (cityKey != "")
            {
                var locationNeighbours = await _accuWeatherService.GetLocationNeightbours(cityKey);
                LocationHeighboursView = new LocationHeighboursViewModel(locationNeighbours);
            }
        }
        
        private async void HandleSelectedCityChange()
        {
            HandleCurrentTemp();
            HandleHourlyForecast();
            HandleHistoricalHourlyForecast();
            HandleDailyForecast();
            HandleRunningIndicies();
            HandleLocationDetails();
            HandleLocationHeighbours();
        }
    }
}

