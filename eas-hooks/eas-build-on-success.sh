if [ "$EAS_BUILD_PROFILE" = "preview" ] && [ "$EAS_BUILD_PLATFORM" = "android" ]; then
    curl https://get.flashlight.dev/ | bash
    export PATH="$HOME/.flashlight/bin:$PATH"

    flashlight cloud --testName "Start app" --app android/app/build/outputs/apk/release/app-release.apk --test e2e/start.yml --apiKey $FLASHLIGHT_API_KEY --duration 30000
fi