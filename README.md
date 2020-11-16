https://www.framboise314.fr/installer-la-derniere-version-de-wiringpi-sur-raspbian-buster/

This is a minimal Docker image with the WiringPi binary gpio to access the GPIO pins of the Raspberry Pi from a Docker container.

``` 
docker run --rm --cap-add SYS_RAWIO --device /dev/mem hypriot/rpi-gpio readall
```
