### GNOME Weather Location fix
Well If you're here, it probably means GNOME Weather isn't showing your location, or even your country is missing. It's a known issue, but sadly, GNOME devs are lazy af to fix it.

- Here's a workaround to add your location on the weather app:
```
wget https://gitlab.com/julianfairfax/scripts/-/raw/main/add-location-to-gnome-weather.sh
chmod +x add-location-to-gnome-weather.sh
./add-location-to-gnome-weather.sh
```
Thanks to [@julianfairfax](https://gitlab.com/julianfairfax) for the script.
