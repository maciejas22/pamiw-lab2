   M S B A M L   `   `   `  ����W  SP04WeatherForecastAPI.Client, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullK*clr-namespace:P04WeatherForecastAPI.ClientP04WeatherForecastAPI.Client  5   	   -    'P04WeatherForecastAPI.Client.MainWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   <local*clr-namespace:P04WeatherForecastAPI.Client     5   	     � Title$  
MainWindow��5   	   $	��700��6   $	��500��6)   .��5	      ]� .+�5
   
   �� $	��150��6   $
��Left=�6!   .+�5      �� $��City:��6   6'   �� 5      -   5         ��Name$ txtCity��5      6)   �� 5      -   5         ��Name$ 	btnSearch��5      $��Search��5      ��5      �� *LoadCitiesCommand+��5      �� *Text+ �� ElementName$ txtCity��5      �� 5      -   5         ��Name$ lbData��5       �� DisplayMemberPath$( "AutocompleteCityList.LocalizedName��5      ��5      �� *AutocompleteCities+ �� SelectedItem 5      �� *SelectedCity+5      5      �� 5   
   .+�5      ��  �� Orientation$ 
Horizontal=�6   .+�5      �� $��Center=�6   $
��Bold"�65   $��Selected City:��6G   6b   �� 5      -   5         ��Name$ lblCityName��5      $��Center=�6-   ��6J   �� *1/SelectedCity.AutocompleteCityList.LocalizedName+6�   5      �� 5!      $ 
Horizontal=�6   .+�5"      �� $��Center=�6   $
��Bold"�66   $��Current Temperature:��6H   6i   �� 5#      -   5        $ lblTemperatureValue��5#      $��Center=�65   ��6R   �� *CurrentTempView.CurrentTemp+6�   5$      �� 5&      �� 5(      $
��Left=�6   $
��Bold"�6/   $��Hourly Forecast:��6A   6^   �� 5)      $ 
Horizontal=�6   .+�5*      �� $ Vertical=�6   .+�5+      �� $��Center=�6   $	��1h:��69   6I   �� 5,      -   5        $ lbl1h��5,      $��Center=�6+   ��6H   �� *" HourlyForecastView.HourlyTemp[0]+6   5-      �� 5.      $ Vertical=�6   .+�5/      �� $��Center=�6   $	��2h:��69   6I   �� 50      -   5        $ lbl2h��50      $��Center=�6+   ��6H   �� *" HourlyForecastView.HourlyTemp[1]+6   51      �� 52      $ Vertical=�6   .+�53      �� $��Center=�6   $	��3h:��69   6I   �� 54      -   5        $ lbl3h��54      $��Center=�6+   ��6H   �� *" HourlyForecastView.HourlyTemp[2]+6   55      �� 56      $ Vertical=�6   .+�57      �� $��Center=�6   $	��4h:��69   6I   �� 58      -	   5        $ lbl4h��58      $��Center=�6+   ��6H   �� *" HourlyForecastView.HourlyTemp[3]+6   59      �� 5:      $ Vertical=�6   .+�5;      �� $��Center=�6   $	��5h:��69   6I   �� 5<      -
   5        $ lbl5h��5<      $��Center=�6+   ��6H   �� *" HourlyForecastView.HourlyTemp[4]+6   5=      �� 5>      $ Vertical=�6   .+�5?      �� $��Center=�6   $	��6h:��69   6I   �� 5@      -   5        $ lbl6h��5@      $��Center=�6+   ��6H   �� *" HourlyForecastView.HourlyTemp[5]+6   5A      5B      �� 5D      �� 5F      $
��Left=�6   $
��Bold"�6/   $!��Historical Hourly Forecast:��6A   6i   �� 5G      $ 
Horizontal=�6   .+�5H      �� $ Vertical=�6   .+�5I      �� $��Center=�6   $
��-1h:��69   6J   �� 5J      -   5        $ lbl_1h��5J      $��Center=�6,   ��6I   �� *64HistoricalHourlyForecastView.HistoricalHourlyTemp[0]+6�   5K      �� 5L      $ Vertical=�6   .+�5M      �� $��Center=�6   $
��-2h:��69   6J   �� 5N      -   5        $ lbl_2h��5N      $��Center=�6,   ��6I   �� *64HistoricalHourlyForecastView.HistoricalHourlyTemp[1]+6�   5O      �� 5P      $ Vertical=�6   .+�5Q      �� $��Center=�6   $
��-3h:��69   6J   �� 5R      -   5        $ lbl_3h��5R      $��Center=�6,   ��6I   �� *64HistoricalHourlyForecastView.HistoricalHourlyTemp[2]+6�   5S      �� 5T      $ Vertical=�6   .+�5U      �� $��Center=�6   $
��-4h:��69   6J   �� 5V      -   5        $ lbl_4h��5V      $��Center=�6,   ��6I   �� *64HistoricalHourlyForecastView.HistoricalHourlyTemp[3]+6�   5W      �� 5X      $ Vertical=�6   .+�5Y      �� $��Center=�6   $
��-5h:��69   6J   �� 5Z      -   5        $ lbl_5h��5Z      $��Center=�6,   ��6I   �� *64HistoricalHourlyForecastView.HistoricalHourlyTemp[4]+6�   5[      �� 5\      $ Vertical=�6   .+�5]      �� $��Center=�6   $
��-6h:��69   6J   �� 5^      -   5        $ lbl_6h��5^      $��Center=�6,   ��6I   �� *64HistoricalHourlyForecastView.HistoricalHourlyTemp[5]+6�   5_      5`      �� 5b      �� 5d      $
��Left=�6   $
��Bold"�6/   $��Daily Forecast:��6A   6]   �� 5e      $ 
Horizontal=�6   .+�5f      �� $ Vertical=�6   $��5q�64   .+�5g      �� $��Center=�6   $	��1d:��69   6I   �� 5h      $ 
Horizontal=�6!   .+�5i      �� ��6$   �� *DailyForecastView.MinTemp[0]+�� 5j      $��-��6$   �� 5k      ��6$   �� *DailyForecastView.MaxTemp[0]+5l      5m      �� 5n      $ Vertical=�6   $��5q�64   .+�5o      �� $��Center=�6   $	��2d:��69   6I   �� 5p      $ 
Horizontal=�6!   .+�5q      �� ��6$   �� *DailyForecastView.MinTemp[1]+�� 5r      $��-��6$   �� 5s      ��6$   �� *DailyForecastView.MaxTemp[1]+5t      5u      �� 5v      $ Vertical=�6   $��5q�64   .+�5w      �� $��Center=�6   $	��3d:��69   6I   �� 5x      $ 
Horizontal=�6!   .+�5y      �� ��6$   �� *DailyForecastView.MinTemp[2]+�� 5z      $��-��6$   �� 5{      ��6$   �� *DailyForecastView.MaxTemp[2]+5|      5}      �� 5~      $ Vertical=�6   $��5q�64   .+�5      �� $��Center=�6   $	��4d:��69   6I   �� 5�      $ 
Horizontal=�6!   .+�5�      �� ��6$   �� *DailyForecastView.MinTemp[3]+�� 5�      $��-��6$   �� 5�      ��6$   �� *DailyForecastView.MaxTemp[3]+5�      5�      �� 5�      $ Vertical=�6   $��5q�64   .+�5�      �� $��Center=�6   $	��5d:��69   6I   �� 5�      $ 
Horizontal=�6!   .+�5�      �� ��6$   �� *DailyForecastView.MinTemp[4]+�� 5�      $��-��6$   �� 5�      ��6$   �� *DailyForecastView.MaxTemp[4]+5�      5�      5�      �� 5�      �� 5�      $
��Left=�6   $
��Bold"�6/   $��Running Indicies in:��6A   6b   �� 5�      $ 
Horizontal=�6   .+�5�      �� $ Vertical=�6   .+�5�      �� $��Center=�6   $	��1d:��69   6I   �� 5�      -   5        $ lblRun1d��5�      $��Center=�6.   ��6K   �� *'%RunningIndiciesView.RunningIndices[0]+6�   5�      �� 5�      $ Vertical=�6   .+�5�      �� $��Center=�6   $	��2d:��69   6I   �� 5�      -   5        $ lblRun2d��5�      $��Center=�6.   ��6K   �� *'%RunningIndiciesView.RunningIndices[1]+6�   5�      �� 5�      $ Vertical=�6   .+�5�      �� $��Center=�6   $	��3d:��69   6I   �� 5�      -   5        $ lblRun3d��5�      $��Center=�6.   ��6K   �� *'%RunningIndiciesView.RunningIndices[2]+6�   5�      �� 5�      $ Vertical=�6   .+�5�      �� $��Center=�6   $	��4d:��69   6I   �� 5�      -   5        $ lblRun4d��5�      $��Center=�6.   ��6K   �� *'%RunningIndiciesView.RunningIndices[3]+6�   5�      �� 5�      $ Vertical=�6   .+�5�      �� $��Center=�6   $	��5d:��69   6I   �� 5�      -   5        $ lblRun5d��5�      $��Center=�6.   ��6K   �� *'%RunningIndiciesView.RunningIndices[4]+6�   5�      5�      �� 5�      �� 5�      $
��Left=�6   $
��Bold"�6/   $��Location Details:��6A   6_   �� 5�      $ 
Horizontal=�6   .+�5�      �� $
��Left=�6   $��Location Name:��67   6R   �� 5�      -   5        $ lblLocationName��5�      $
��Left=�65   ��6P   �� *" LocationDetailsView.LocationName+6�   5�      �� 5�      $ 
Horizontal=�6   .+�5�      �� $
��Left=�6   $��Region Name:��63   6L   �� 5�      -   5        $ lblRegionName��5�      $
��Left=�6/   ��6J   �� * LocationDetailsView.RegionName+6   5�      �� 5�      $ 
Horizontal=�6   .+�5�      �� $
��Left=�6   $��Administrative Area Name:��63   6Y   �� 5�      -   5        $ lblAdministrativeAreaName��5�      $
��Left=�6;   ��6V   �� *,*LocationDetailsView.AdministrativeAreaName+6�   5�      �� 5�      $ 
Horizontal=�6   .+�5�      �� $
��Left=�6   $��
Time Zone:��63   6J   �� 5�      $ 
Horizontal=�6   .+�5�      �� $��Center=�6   $	��GMT��69   6I   �� 5�      -   5        $ lblTimeZone��5�      $
��Left=�61   ��6L   �� *" LocationDetailsView.TimeZoneName+6�   5�      5�      �� 5�      �� 5�      $
��Left=�6   $
��Bold"�6/   $��Location Neighbours:��6A   6b   �� 5�      -   5        $��neightboursData��5�      $
��Auto=�5�      $	��100��5�      ��5�      �� *+)LocationHeighboursView.LocationNeighbours+5�      5�      5�      5�      