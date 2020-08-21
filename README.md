# Simple_Love_Calculator
It is a simple Love Calculator that we so commonly find across the internet. It basically takes two names and returns a a random percentage between two ranges that are determined by a simple algorithm. One can also use any algorithm of his/her choice. In terms of functionality, it doesn't do much. It is just a simple project to check the use of **[StatelessWidget](https://api.flutter.dev/flutter/widgets/StatelessWidget-class.html)** and **[StatefulWidget](https://api.flutter.dev/flutter/widgets/StatefulWidget-class.html)**. Some of the widgets used in this project are: MaterialApp, Scaffold, AppBar, Image, TextField, IconButton, Ink. <br>

## Steps to run this project:
1. Install flutter and dart plugins. For more instructions, see [this](https://flutter.dev/docs/get-started/editor?tab=androidstudio). IDE used to develop this app is **Android Studio**. It can also be run in other commonly used IDEs like VS Code. Make sure to validate the setup with Flutter Doctor.
2. Open Android Studio. There should be an option to create a new Flutter Project. Create a new project and name it. For more instructions, click [here](https://flutter.dev/docs/get-started/test-drive?tab=androidstudio).
3. Android Studio should open a file called **main.dart**. This is the main file where we will write the code. It comes with some code for a pre-built basic flutter app. Remove the code. Now, clone the project. Copy and Paste the contents of the main.dart file contained in this repository to your main.dart file in your Android Studio project.
4. Create a folder in the project folder named **images**. If we want to include any pictures in our App, we can keep those pictures in this folder and include the path as **'images/<file_name>.<extension>'**. <br>
  Copy and paste the image **heart\.jpg** from the project repositories and paste to the newly created images folder.
5. Navigate to the **pubspec.yaml** file in your project directory. We need to add the assets and dependencies here. Under the heading **assets:** add **- images/**. <br>
  For adding dependencies, look for the heading **dependencies:** and add the dependency **toast: ^0.1.5**. Refer to my pubspec.yaml file for further help. As soon as you edit this .yaml file and save it, there will be an option called **"Packages Get"**. Click on it and wait for the packages to be installed.
6. Connect any android/iOS device(works only on Mac) or use any emulator offered by Android Studio to run the app. <br>
  
  Validation has also been added. If the user leaves any or both of the TextFields empty, the app will show a toast message and prompt the user to fill the names.
