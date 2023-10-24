namespace P04WeatherForecastAPI.Client.ViewModels
{
    public class HourlyForecastViewModel
    {
        public HourlyForecastViewModel(float[] hourlyTemp = null)
        {
            HourlyTemp = hourlyTemp ?? new float[12]; 
        }
        public float[] HourlyTemp { get; set; }
    }
}