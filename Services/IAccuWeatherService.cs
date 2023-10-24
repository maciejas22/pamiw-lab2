using P04WeatherForecastAPI.Client.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace P04WeatherForecastAPI.Client.Services
{
    public interface IAccuWeatherService
    {
        Task<City[]> GetLocations(string locationName);
        Task<double> GetCurrentTemp(string cityKey);
        Task<float[]> GetHourlyForecast(string cityKey);
        Task<(float[], float[])> GetDailyForecast(string cityKey);
        Task<string[]> GetRunningIndices(string cityKey);
        Task<LocationInfo> GetLocationInfo(string cityKey);
        Task<string[]> GetLocationNeightbours(string cityKey);
        Task<double[]> GetHistoricalHourlyForeCast(string cityKey);
    }

}