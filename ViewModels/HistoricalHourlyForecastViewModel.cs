namespace P04WeatherForecastAPI.Client.ViewModels
{
    public class HistoricalHourlyForecastViewModel
    {
        public HistoricalHourlyForecastViewModel(double[] historicalHourlyTemp = null)
        {
            HistoricalHourlyTemp = historicalHourlyTemp ?? new double[12]; 
        }
        public double[] HistoricalHourlyTemp { get; set; }
    }
}