import QtQuick 2.9
import QtQuick.Window 2.3
import QtQuick.Controls 2.2
import QtQuick.Dialogs 1.2
import QtQml 2.2
//import QtMultimedia 5.0

ApplicationWindow {
    visible: true
    width: 1024
    height: 600
    title: qsTr("Tocabi Controller")

    //    SwipeView {
    //        id: swipeView2
    //        anchors.fill: parent
    //        currentIndex: tabBar.currentIndex
    

    SwipeView{
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        onCurrentIndexChanged: {
            if (currentIndex == 4 | currentIndex == 1) {
                Qt.callLater(function() { interactive = false })
            } else {
                Qt.callLater(function() { interactive = true })
            }
        }

        Status {
        }

        Command{
        }

        NewTab{
        }

        JoystickCheck {
        }

        VirtualJoy {
        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex


        TabButton {
            text: qsTr("Status")
        }

        TabButton {
            text: qsTr("Command")
        }

        TabButton {
            text: qsTr("NewTab")
        }

        TabButton {
            text: qsTr("Joystick Check")
        }

        TabButton {
            text: qsTr("Virtual Joy")
        }
    }
}
