using System;

namespace P04WeatherForecastAPI.Client.ViewModels
{
    public class DailyForecastViewModel
    {
        public DailyForecastViewModel(float[] minTemp, float[] maxTemp)
        {
            MinTemp = minTemp;
            MaxTemp = maxTemp;
        }
        public float[] MinTemp { get; set; }
        public float[] MaxTemp { get; set; }
    }
}