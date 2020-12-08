import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    width: 1024
    height: 600

    Frame {
        id: frame2
        x: 285
        y: 10
        width: 261
        height: 448

        Column {
            id: column1
            spacing: 18
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter:parent.horizontalCenter
            width: parent.width


            Text {
                id: text1
                text: qsTr("Global Position")
                font.pixelSize: 20
            }

            Button {
                width: parent.width
                height: 50
                font.pointSize: 20
                text: qsTr("Init Yaw")
                onClicked: {
                    ros.button_ros(0,"inityaw")
                }

            }
            Button {
                text: qsTr("qdot Lpf")
                width: parent.width
                height: 50
                font.pointSize: 20
                onClicked: {
                    ros.button_ros(0,"enablelpf")                        }
            }
            Button {
                text: qsTr("State Estimation")
                width: parent.width
                height: 50
                font.pointSize: 20
                onClicked: {
                    ros.button_ros(0,"stateestimation")
                }
            }
            Button {
                text: qsTr("SE by FT")
                width: parent.width
                height: 50
                font.pointSize: 20
                onClicked: {
                    ros.button_ros(0,"sebyft")
                }
            }
            Button {
                text: qsTr("virtual joint(sim)")
                width: parent.width
                height: 50
                font.pointSize: 20
                onClicked: {
                    ros.button_ros(0,"simvirtualjoint")
                }
            }
            Button {
                text: qsTr("Ignore IMU")
                width: parent.width
                height: 50
                font.pointSize: 20
                onClicked: {
                    ros.button_ros(0,"imuignore")
                }
            }


        }
    }

    Frame {
        id: frame
        x: 10
        y: 10
        width: 269
        height: 513

        Column {
            id: column
            x: 324
            y: 231
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter:parent.horizontalCenter
            width: parent.width
            spacing: 18

            Text {
                text: qsTr("Initializer")
                font.pixelSize: 20
            }

            Button {
                id: button6
                width: parent.width
                height: 50
                text: qsTr("DISABLE LOWER")
                highlighted: false
                font.pointSize: 20
                checked: false

                onClicked: {
                    ros.button_ros(0,"disablelower")
                }
            }

            Button {
                id: button5
                width: parent.width
                height: 50
                text: qsTr("IMU EF Reset")
                font.pointSize: 20
                highlighted: false
                checked: false
                onClicked: {
                    ros.button_ros(0, "imureset")
                }
            }

            Button {
                id: button4
                width: parent.width
                height: 50
                text: qsTr("FT Calibration")
                font.pointSize: 20
                highlighted: false
                checked: false
                onClicked: {
                    ros.button_ros(0, "ftcalib")
                }
            }

            Button {
                id: button3
                width: parent.width
                height: 50
                text: qsTr("Disable Safety")
                font.pointSize: 20
                highlighted: false
                checked: false
                onClicked: {
                    ros.button_ros(0, "safetydisable")
                }
            }

            Button {
                id: button2
                width: parent.width
                height: 50
                text: qsTr("Safety Reset")
                font.pointSize: 20
                highlighted: false
                checked: false
                onClicked: {
                    ros.button_ros(0, "safetyreset")
                }
            }

            Button {
                id: button1
                width: parent.width
                height: 50
                text: qsTr("Initialize Lower")
                font.pointSize: 20
                highlighted: false
                checked: false
                onClicked: {
                    ros.button_ros(0, "ecatinitlower")
                }
            }

            Button {
                id: button
                width: parent.width
                height: 50
                text: qsTr("Initialize All")
                highlighted: false
                checked: false
                font.pointSize: 20

                onClicked: {
                    ros.button_ros(0,"ecatinit")
                }
            }
        }
    }

    Frame {
        id: frame1
        x: 560
        y: 10
        width: 242
        height: 316

        Column {
            id: column2
            x: -70
            y: -31
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter:parent.horizontalCenter
            width: parent.width
            spacing: 18


            Text {
                text: qsTr("Robot Control")
                font.pixelSize: 20

            }

            Button {
                text: qsTr("torqueredis")
                width: parent.width
                height: 50
                font.pointSize: 20
                onClicked: {
                    ros.button_ros(0,"torqueredis")
                }
            }

            Button {
                text: qsTr("Position(Grav))")
                width: parent.width
                height: 50
                font.pointSize: 20
                onClicked: {
                    ros.button_ros(0,"positiongravcontrol")
                }
            }

            Button {
                text: qsTr("PositionControl")
                width: parent.width
                height: 50
                font.pointSize: 20
                onClicked: {
                    ros.button_ros(0,"positioncontrol")
                }
            }

            Button {
                text: qsTr("GravityControl")
                width: parent.width
                height: 50
                font.pointSize: 20
                onClicked: {
                    ros.button_ros(0,"gravity")
                }
            }
        }
    }

    Frame {
        id: frame3
        x: 817
        y: 10
        width: 195
        height: 239

        Column {
            id: column3
            x: 33
            y: 12
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter:parent.horizontalCenter
            width: parent.width
            spacing: 18


            Text {
                text: qsTr("Data")
                font.pixelSize: 20
            }

            Button {
                text: qsTr("Show Data")
                width: parent.width
                height: 50
                font.pointSize: 20
                onClicked: {
                    ros.button_ros(0,"showdata")
                }
            }

            Button {
                text: qsTr("Print Data")
                width: parent.width
                height: 50
                font.pointSize: 20
                onClicked: {
                    ros.button_ros(0,"printdata")
                }
            }

            Button {
                text: qsTr("help")
                width: parent.width
                height: 50
                font.pointSize: 20
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.6600000262260437}
}
##^##*/
