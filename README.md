# tco_task

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

//Short docuemtation about project 

Project is made user flutter version 3.3.4
for location tracking user lib location 
for getting current location user lib geolocator 
for displaying map used free lib flutter_map
as state managment tool user mobX
as design pattern for app user MVP
as router in app user AutoRoute

//App work flow 

At first opening app check location permission and if it has been granted app will took current position of user and app moves user to map page, if not user staying in request location page where he should allow location manually by pressing allow location button ,after pressing if location servic is disabled or it is denied forever user will be asked to open app setting and change location status from there(opening setting can be done by pressing open setting button on opened dialog).
In case of location permission granting app will took current position of user and put it in state.
When user moved into map page app will check if we already have downloaded json data about airports from provided endpoint by check sqflite db existance , if not app will download data and insert it in database.
Whene saving off remote data is done app will sort airports data by hist distance from current loction and took first 2 with shortest distance and mark it as nearest airports.
Next app will drow markers for nearest airports and user current position , clicking on airports marker will draw a lines between current position and pressed airport.
Also in map page will be enabled listener to user current positon change , and it will cause a changin of user marker in map.

NOTE: app will draw straign lines instead of polylines because for drawing polylines we 
need a polyline point , which is possible with PolylinePoints lib which requires google api key which is not generated in app.
# TCO-task
