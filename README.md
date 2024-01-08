# Clima - Weather App

Clima is a user-friendly weather application that provides real-time weather information based on the device's location or a manually entered city. Whether you want to check the current temperature, humidity, or weather conditions in a specific location, Clima has got you covered.

## Features

- **Automatic Location Detection:** Clima automatically detects the device's location and provides weather information for that area.

- **Manual Location Entry:** Users can also manually enter a city name to get the weather information for a different location.

- **Temperature and Humidity:** Get accurate and up-to-date information on temperature and humidity levels.

## Screenshots
<img src="https://github.com/dshreddy/clima-flutter/assets/127737097/e7e5d9e8-7f58-4f0a-a3d5-bfb7df125d1c" width="400" height = "800"/>
<img src="https://github.com/dshreddy/clima-flutter/assets/127737097/2149cebe-0518-4292-8191-4f6fc5b154e5" width="400" height = "800"/>
<img src="https://github.com/dshreddy/clima-flutter/assets/127737097/f28e8edb-136e-499f-a297-c42b3a10ccf9" width="400" height = "800"/>

## Installation

To use Clima, follow these simple steps:

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/dshreddy/clima-flutter.git
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

## Configuration

Before running the app, make sure to set up your API key from OpenWeatherMap. Replace the placeholder `YOUR_API_KEY` in the `Constants.swift` file with your actual API key.

```swift
struct Constants {
    static let apiKey = "YOUR_API_KEY"
}
```
