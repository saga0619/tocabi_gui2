import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.2

Page {
    width: 1024
    height: 600

    Text {
        x: 627
        y: 512
        width: 143
        height: 16
        text: qsTr("NOT CONNECTED")
        font.pixelSize: 16
        z: 1
        objectName: "ros_button"
    }

    Button {
        id: button
        x: 605
        y: 445
        width: 176
        height: 40
        text: qsTr("ROS CONNECT")
        onClicked: {
            
            
            ros.init_ros()
        }
    }

    Button {
        id: button1
        x: 947
        y: 13
        width: 49
        height: 44
        text: qsTr("")
        onClicked: ros.shutdown()

        Image {
            id: image
            x: 0
            y: 0
            width: 51
            height: 38
            source: "power.png"
            fillMode: Image.PreserveAspectFit
        }
    }

    Rectangle {
        id: rectangle
        x: 13
        y: 14
        width: 559
        height: 526
        color: "#d7d7d7"
    }

    Column {
        id: column
        x: 588
        y: 15
        width: 176
        height: 525
        Text {
            text: qsTr("Initializer")
            font.pixelSize: 20
        }

        Button {
            id: button5
            width: parent.width
            height: 40
            text: qsTr("IMU EF Reset")
            highlighted: false
            checked: false
            font.pointSize: 16
            onClicked: ros.button_ros(0, "imureset")
        }

        Button {
            id: button4
            width: parent.width
            height: 40
            text: qsTr("FT Calibration")
            highlighted: false
            checked: false
            font.pointSize: 16
            onClicked: ros.button_ros(0, "ftcalib")
        }

        Button {
            id: button3
            width: parent.width
            height: 40
            text: qsTr("Disable Safety")
            highlighted: false
            checked: false
            font.pointSize: 16
            onClicked: ros.button_ros(0, "safetydisable")
        }

        Button {
            id: button2
            width: parent.width
            height: 40
            text: qsTr("Safety Reset")
            highlighted: false
            checked: false
            font.pointSize: 16
            onClicked: ros.button_ros(0, "safetyreset")
        }

        Button {
            id: button7
            width: parent.width
            height: 40
            text: qsTr("Init Low")
            highlighted: false
            checked: false
            font.pointSize: 16
            onClicked: ros.button_ros(0, "ecatinitlower")
        }

        Button {
            id: button8
            width: parent.width
            height: 40
            text: qsTr("Init Up")
            highlighted: false
            checked: false
            font.pointSize: 16
            onClicked: ros.button_ros(0, "ecatinit")
        }
        spacing: 15
    }

    Frame {
        id: frame3
        x: 785
        y: 100
        width: 211
        height: 194
        Column {
            x: 18
            y: 0
            anchors.fill: parent
            Button {
                width: parent.width
                height: 40
                text: qsTr("TORQUE ON")
                objectName: "torqueon_button"
                onClicked: ros.button_ros(0, "torqueon")
                font.pointSize: 18
            }

            Button {
                width: parent.width
                height: 40
                text: qsTr("TORQUE OFF")
                objectName: "torqueoff_button"
                onClicked: ros.button_ros(0, "torqueoff")
                font.pointSize: 18
            }

            Button {
                id: button9
                width: parent.width
                height: 40
                objectName: "emergencyoff_button"
                onClicked: ros.button_ros(0, "emergencyoff")
                contentItem: Text {
                    color: "#ffffff"
                    text: qsTr("EMERGENCY OFF")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 18
                }
                font.pointSize: 18
                background: Rectangle {
                    color: "#f36161"
                }
            }

            spacing: 10
        }
    }

    Rectangle {
        id: rectangle1
        x: 605
        y: 500
        width: 176
        height: 40
        color: "#888a85"
        z: 0
    }

    Button {
        id: button6
        x: 820
        y: 445
        width: 176
        height: 40
        text: qsTr("TOCABI ON")
        objectName: "tocabion"
        onClicked: ros.turnon_tocabi()
    }

    Button {
        id: button10
        x: 820
        y: 500
        width: 176
        height: 40
        text: qsTr("TOCABI OFF")
        objectName: "tocabioff"
        onClicked: ros.button_ros(0, "terminate")
    }

    ScrollView {
        id: logview
        objectName: "logview"
        x: 13
        y: 13
        width: 559
        height: 525

        Layout.fillWidth: true
        Layout.fillHeight: true

        function scrollToBottom(){
            ScrollBar.vertical.position = 1.0 - ScrollBar.vertical.size
        }

        ScrollBar.vertical.policy : ScrollBar.AlwaysOn
        clip: true

        TextArea {
            objectName: "textarea_"
            text: "Tocabi Gui"
        }
    }

    function scrollbtm(){
        logview.scrollToBottom()
    }

}
