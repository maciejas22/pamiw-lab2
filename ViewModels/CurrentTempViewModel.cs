namespace P04WeatherForecastAPI.Client.ViewModels
{
    public class CurrentTempViewModel
    {
        public CurrentTempViewModel(double currentTemp = 0.0)
        {
            CurrentTemp = currentTemp;
        }
        public double CurrentTemp { get; set; }
    }
}