# My Flutter Project

![Release workflow](https://github.com/vhdrjb/pokemon_challenge/actions/workflows/release.yaml/badge.svg)

![Test workflow](https://github.com/vhdrjb/pokemon_challenge/actions/workflows/ci.yaml/badge.svg)

This project is a Flutter application that builds both an APK for Android and a web version that can be served using Docker with Nginx.

## Prerequisites

- Docker: [Install Docker](https://docs.docker.com/get-docker/)
- An Android device or emulator: [Install Android Emulator](https://developer.android.com/studio/run/emulator) or use a physical device

## Using the APK

To use the APK from the latest release:

1. Go to the [Releases](https://github.com/vhdrjb/pokemon_challenge/releases) page.
2. Download the `app-release.apk` file from the latest release.
3. Install the APK on your Android device or emulator:
    ```sh
    adb install path/to/app-release.apk
    ```

## Using the Docker Image for Web

To use the Docker image for the web version from the latest release:

1. Go to the [Releases](https://github.com/vhdrjb/pokemon_challenge/releases) page.
2. Download the `web_release.zip` file from the latest release.
3. Unzip the `web_release.zip` file:
    ```sh
    unzip path/to/web_release.zip -d web_release
    ```
4. Navigate to the `web_release` directory:
    ```sh
    cd web_release
    ```
5. Build the Docker image:
    ```sh
    docker build -t flutter-web-app .
    ```
6. Run the Docker container:
    ```sh
    docker run -d -p 80:80 flutter-web-app
    ```
7. Open your browser and navigate to `http://localhost` to see the web app.

## GitHub Actions

This repository uses GitHub Actions to automate the build and release process for both the APK and web versions. The workflow is triggered on every push to tags that match the pattern `v*`.

### Workflow Badge

![Build and Release](https://github.com/vhdrjb/pokemon_challenge/actions/workflows/release.yml/badge.svg)

### Workflow Details

- **Location:** `.github/workflows/release.yml`
- **Triggers:** Push to tags matching `v*`
- **Jobs:**
    - Checkout code
    - Set up JDK 17
    - Install Flutter
    - Build APK
    - Build web version
    - Create Dockerfile and Nginx configuration
    - Package web release files
    - Upload artifacts
    - Create GitHub release

## Contributing

Contributions are welcome! Please open an issue or submit a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
