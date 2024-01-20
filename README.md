
**This is a Demo for VIPER Architechture using SwiftUI**

**VIPER** is a backronym for **View**, **Interactor**, **Presenter**, **Entity**, and **Router**.

This architecture is based on **Single Responsibility Principle** which leads to a clean architecture.

**View**: The responsibility of the view is to send the user actions to the presenter and shows whatever the presenter tells it.

**Interactor**: This is the backbone of an application as it contains the business logic.

**Presenter**: Its responsibility is to get the data from the interactor on user actions and after getting data from the interactor, it sends it to the view to show it. It also asks the router/wireframe for navigation.

**Entity**: It contains basic model objects used by the Interactor.

**Router**: It has all navigation logic for describing which screens are to be shown when. It is normally written as a wireframe.
