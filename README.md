# Clima - Weather App

Clima is a user-friendly weather application that provides real-time weather information based on the device's location or a manually entered city. Whether you want to check the current temperature, humidity, or weather conditions in a specific location, Clima has got you covered.

## Features

- **Automatic Location Detection:** Clima automatically detects the device's location and provides weather information for that area.

- **Manual Location Entry:** Users can also manually enter a city name to get the weather information for a different location.

- **Temperature and Humidity:** Get accurate and up-to-date information on temperature and humidity levels.

## Installation

To use Clima, follow these simple steps:

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/your-username/clima.git
   ```

2. Open the Clima project in your preferred code editor.

3. Run the application on your device or simulator.

## Usage

1. Open the Clima app on your device.

2. If you want to check the weather for your current location, simply allow the app to access your location.

3. Alternatively, you can manually enter a city name by tapping on the search icon.

4. Explore the current temperature, humidity, and weather conditions for the selected location.

## Dependencies

Clima utilizes the following libraries and APIs:

- [OpenWeatherMap API](https://openweathermap.org/api): Clima fetches weather data from the OpenWeatherMap API.

- [LocationManager](https://developer.apple.com/documentation/corelocation/locationmanager): For automatic location detection on iOS devices.

## Configuration

Before running the app, make sure to set up your API key from OpenWeatherMap. Replace the placeholder `YOUR_API_KEY` in the `Constants.swift` file with your actual API key.

```swift
struct Constants {
    static let apiKey = "YOUR_API_KEY"
}
```

## Contributing

If you'd like to contribute to Clima, follow these steps:

1. Fork the repository.

2. Create a new branch for your feature or bug fix:

   ```bash
   git checkout -b feature/your-feature-name
   ```

3. Make your changes and commit them:

   ```bash
   git commit -m "Add your commit message here"
   ```

4. Push your changes to your fork:

   ```bash
   git push origin feature/your-feature-name
   ```

5. Create a pull request to the main repository.

## License

Clima is licensed under the [MIT License](LICENSE.md).

Feel free to use, modify, and distribute this app as needed. If you have any questions or suggestions, please open an issue or contact the maintainers. Happy coding!
