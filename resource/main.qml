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
        objectName: "swipeView"
        enabled: true
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        onCurrentIndexChanged: {
            if (currentIndex == 4 | currentIndex == 1) {
//                Qt.callLater(function() { interactive = false })
            } else {
                Qt.callLater(function() { interactive = true })
            }
        }
        Init{
            id: init

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
            text: qsTr("Robot")
        }

        TabButton {
            text: qsTr("Status")
        }

        TabButton {
            objectName: "tab2"
            text: qsTr("Command")
            enabled: false
        }

        TabButton {
            objectName: "tab3"
            text: qsTr("NewTab")
            enabled: false
        }

        TabButton {
            objectName: "tab4"
            text: qsTr("Joystick Check")
            enabled: false
        }

        TabButton {
            objectName: "tab5"
            text: qsTr("Virtual Joy")
            enabled: false
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.8999999761581421}
}
##^##*/
