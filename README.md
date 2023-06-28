# MergeableLib-Demo

This project shows how to use Mergeable Libraries feature demonstrated in WWDC2023.

You need Xcode 15 Beta to run this project

Clone this repository and open `MergeableLibDemo.xcworkspace` and build the project it builds for `Debug` mode, then go to Edit scheme and change build configuration for Run action to `Release` this would build it for Release scheme.

## Debug Mode
It treats the framework as dynamic framework in Debug mode 
<img width="667" alt="Screenshot 2023-06-27 at 9 40 12 PM" src="https://github.com/sanju-naik/MergeableLib-Demo/assets/66404008/3cf824eb-9b92-44ee-a63d-75671d331461">

## Release Mode
It treats the framework as static library in Release mode 
<img width="667" alt="Screenshot 2023-06-27 at 9 42 47 PM" src="https://github.com/sanju-naik/MergeableLib-Demo/assets/66404008/a557c2cf-fe04-4e6d-b821-ec3ce24f69b4">

So you get to optimize for both build time as well as App launch time. 
