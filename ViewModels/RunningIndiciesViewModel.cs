namespace P04WeatherForecastAPI.Client.ViewModels
{
    public class RunningIndiciesViewModel
    {
        public RunningIndiciesViewModel(string [] runningIndices)
        {
            RunningIndices = runningIndices;
        }
        public string[] RunningIndices { get; set; }
    }
}