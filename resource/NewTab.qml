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
                font.pointSize: 18
                text: qsTr("Init Yaw")
                onClicked: {
                    ros.button_ros(0,"inityaw")
                }

            }
            Button {
                text: qsTr("qdot Lpf")
                width: parent.width
                height: 50
                font.pointSize: 18
                onClicked: {
                    ros.button_ros(0,"enablelpf")                        }
            }
            Button {
                text: qsTr("State Estimation")
                width: parent.width
                height: 50
                font.pointSize: 18
                onClicked: {
                    ros.button_ros(0,"stateestimation")
                }
            }
            Button {
                text: qsTr("SE by FT")
                width: parent.width
                height: 50
                font.pointSize: 18
                onClicked: {
                    ros.button_ros(0,"sebyft")
                }
            }
            Button {
                text: qsTr("virtual joint(sim)")
                width: parent.width
                height: 50
                font.pointSize: 18
                onClicked: {
                    ros.button_ros(0,"simvirtualjoint")
                }
            }
            Button {
                text: qsTr("Ignore IMU")
                width: parent.width
                height: 50
                font.pointSize: 18
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
                font.pointSize: 18
                onClicked: {
                    ros.button_ros(0,"torqueredis")
                }
            }

            Button {
                text: qsTr("Position(Grav))")
                width: parent.width
                height: 50
                font.pointSize: 18
                onClicked: {
                    ros.button_ros(0,"positiongravcontrol")
                }
            }

            Button {
                text: qsTr("PositionControl")
                width: parent.width
                height: 50
                font.pointSize: 18
                onClicked: {
                    ros.button_ros(0,"positioncontrol")
                }
            }

            Button {
                text: qsTr("GravityControl")
                width: parent.width
                height: 50
                font.pointSize: 18
                onClicked: {
                    ros.button_ros(0,"gravity")
                }
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}
}
##^##*/
