# EyeCareScript

EyeCareScript is a bash command crafted to prioritize eye health during prolonged computer usage on Linux systems. This script enables a gradual adjustment of screen brightness, creating a seamless transition to lower levels. By providing users with control over brightness settings, it strives to enhance the overall comfort of the computing experience, potentially alleviating eye strain and dryness.

## Features

- **Gradual Brightness Adjustment**: Experience a gentle transition to lower and higher brightness levels for a more comfortable screen viewing.
- **Customizable Parameters**: Tailor the brightness transition to your preferences by adjusting parameters such as output, crtc, step, and duration.
- **Easy Integration**: Quickly incorporate this simple yet effective command into your routine to prioritize the well-being of your eyes while using your Linux system.

## Usage

1. Save the script to a file (e.g., `eyecarescript.sh`).
2. Ensure the script has execution permissions (`chmod +x eyecarescript.sh`).
3. Run the script in your terminal to initiate the gradual brightness adjustment.

```bash
./eyecarescript.sh
```

## Automate EyeCareScript with Cron

You can automate the execution of EyeCareScript using cron to ensure regular eye-friendly screen adjustments. Follow the steps below to add the script to your crontab:

1. Open your terminal.

2. Open the crontab file for editing:
    ```bash
    crontab -e
    ```

3. Add the following line to run the script at a specified interval. For example, to run the script every minute, add:
    ```bash
    * * * * * /path/to/eyecarescript.sh
    ```
    Adjust the time and script path according to your preferences.

4. Save and exit the editor.

Now, EyeCareScript will automatically adjust your screen brightness at the scheduled time, contributing to a consistently comfortable viewing experience for your eyes.
