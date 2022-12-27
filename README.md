# 📝 Assignment 3 Part 2

## :smile: Student details

>##### Name: Iman Zulhakim bin Mohamad Dzain
>##### Matric Number: 1918335
>##### Mobile Application Development Sem 1 2022/2023
>##### Kulliyyah of ICT, International Islamic University Malaysia

## :pen: About the assignment

Modify the current app (from part 1) to now have tabs with the implementation of _tabController_ widget.

## :bulb: What have been done?

> #### 1) main.dart

1. A (.dart) file named _main.dart_ has been created by default. **StatefulWidget** is used.
2. Create the custom **TabController** by declaring one controller variable named _tabController_, and creating a void function for initializing the own created version of TabController. The length is set to 4.
3. Create two **Container** widgets; one for **TabBar** and another one for **TabBarView**.
4. In **TabBar,** the declared _tabController_ variable is stored in parameter "controller". Parameter "tabs" is a list that contains 4 widgets in it.
5. In **TabBarView,** the declared _tabController_ variable is stored in parameter "controller". Parameter "children" is used to display the layout by calling the class constructors.

> #### 2) gridLivRoom.dart

1. A (.dart) file named _gridLivRoom.dart_ is created and **StatefulWidget** is used. Constructor's name was <ins>LivingRoom</ins>.
2. The widget **GridView.count** is used, with 2D array of widgets with a fixed number of tiles in the cross axis.
3. Create four **Container** widgets for Wi-Fi, TV, power plug, and air conditioner. Mainly, the widget **ToggleButtons** is used with the corresponding selection state of each toggle button and the callback that is called when a button is tapped.

> #### 3) gridOutdoor.dart

1. A (.dart) file named _gridOutdoor.dart_ is created and **StatefulWidget** is used. Constructor's name was <ins>Outdoor</ins>.
2. Similarly **GridView.count** widget is used, with 2D array of widgets with a fixed number of tiles in the cross axis.
3. Create a **Container** for gate lamp.
4. The widget **ToggleButtons** is used with the corresponding selection state of each toggle button and the callback that is called when a button is tapped.

> #### 4) gridBedRoom.dart

1. A (.dart) file named _gridBedRoom.dart_ is created and **StatefulWidget** is used. Constructor's name was <ins>BedRoom</ins>.
2. Similarly use **GridView.count** widget with 2D array of widgets with a fixed number of tiles in the cross axis.
3. Two **Container** widgets for power plug and air conditioner are created.
4. Similarly, the widget **ToggleButtons** is used with the corresponding selection state of each toggle button and the callback that is called when a button is tapped.

## :copyright: References

- [Icons class](https://api.flutter.dev/flutter/material/Icons-class.html)
- [Work with tabs](https://docs.flutter.dev/cookbook/design/tabs)
- [Flutter Tutorial - Create Tabbed AppBar [2021] Tabs, TabBar, TabBarView](https://www.youtube.com/watch?v=8x2Ssf5OxQ4)
- [Flutter TabBar and TabBarView Without Scaffold & AppBar | Custom Indicator & TabBarController](https://www.youtube.com/watch?v=m_MXkSKz_F8)
- [Thiana19 GitHub](https://github.com/Thiana19/FLutter-Layout-Assignment-Part-2)