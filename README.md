# Shadow
A jailbreak detection bypass for modern iOS jailbreaks.

## Supported Systems
Shadow is compiled for all devices on at least iOS 7.0. The best bypass performance is experienced on at least iOS 11, due to modern jailbreak design keeping the application sandbox intact. It is also iOS 15+ rootless-ready for Procursus-based bootstraps (untested).

## Installation
Add my repo (`https://ios.jjolano.me`) to your package manager and install the Shadow (`me.jjolano.shadow`) package. Alternatively, download the [latest release](https://github.com/jjolano/shadow/releases) directly from GitHub and open the file with your package manager.

## Usage
After installation, settings are available in the Settings app. You may configure global defaults, or add an app-specific configuration.

## Contributing
Pull requests are welcome. Please describe any changes and improvements to the code, and any tweak behaviours that may be affected.

## Bypass not working?
Some apps may require app-specific bypasses. Please note that Shadow was never intended to tailor towards any specific app. In an ideal world, Shadow would bypass any and all detections that developers can hope to (legally) use. However, there are also limitations mainly from the code injection/substitution platform - these are likely to be difficult to bypass without using something app-specific to effectively skip the checks entirely rather than pass them.

## All apps crashing even if enabled on a non-detecting app?
Please submit a new GitHub Issue with the app's name, your iOS version, and code injection/substitution platform (libhooker, Substitute, Substrate).

## License
Shadow is licensed under the BSD 3-clause license. Please ensure credit is given if Shadow's codebase has assisted your project.
