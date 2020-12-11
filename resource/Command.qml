import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    width: 1024
    height: 600


    Frame {
        id: frame1
        width: 799
        height: 400
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: 8
        anchors.topMargin: 8

        Row {
            id: mover
            x: 133
            spacing: 250
            anchors.top: parent.top
            anchors.topMargin: 0

            Text {
                text: qsTr("Arm mover")
                font.pixelSize: 12
            }
            Text {
                text: qsTr("COM mover         ")
                font.pixelSize: 12
            }

        }



        Column{
            spacing: 10
            id: cl3
            x: 12
            y: 25
            width: 48
            anchors.right: cl7.left
            anchors.rightMargin: 5


            Text {
                id:larm
                height: 20
                text: qsTr("Left Arm")
                font.pixelSize: 12

            }

            Text {
                height: 20
                text: qsTr("x")
                font.pixelSize: 12

            }
            Text {
                height: 20
                text: qsTr("y")
                font.pixelSize: 12

            }
            Text {
                height: 20
                text: qsTr("z")
                font.pixelSize: 12

            }
            Text {
                height: 20
                text: qsTr("roll")
                font.pixelSize: 12

            }
            Text {
                height: 20
                text: qsTr("pitch")
                font.pixelSize: 12

            }
            Text {
                height: 20
                text: qsTr("yaw")
                font.pixelSize: 12

            }
        }


        Column {
            id: cl7
            x: 72
            y: 25
            width: 80
            anchors.bottom: cl3.bottom
            anchors.bottomMargin: 0
            spacing: 10


            Text {
                text: qsTr("    ")
            }


            Button {
                objectName: "text_l_x"
                height: 20
                width: parent.width
                text: pad.l_x
                onClicked: {
                    if(pad.visible == false) {
                        pad.visible = true
                        numPad.digits = ""
                    }
                    else pad.visible = false
                    pad.target_ = "l_x"
                    pad.x = cl7.x + 100
                    pad.y = cl7.y
                }
            }

            Button {
                objectName: "text_l_y"
                height: 20
                width: parent.width
                text: pad.l_y
                onClicked: {
                    if(pad.visible == false) {
                        pad.visible = true
                        numPad.digits = ""
                    }
                    else pad.visible = false
                    pad.target_ = "l_y"
                    pad.x = cl7.x + 100
                    pad.y = cl7.y
                }
            }

            Button {
                objectName: "text_l_z"
                height: 20
                width: parent.width
                text: pad.l_z
                onClicked: {
                    if(pad.visible == false) {
                        pad.visible = true
                        numPad.digits = ""
                    }
                    else pad.visible = false
                    pad.target_ = "l_z"
                    pad.x = cl7.x + 100
                    pad.y = cl7.y
                }
            }

            Button {
                objectName: "text_l_roll"
                height: 20
                width: parent.width
                text: pad.l_roll
                onClicked: {
                    if(pad.visible == false) {
                        pad.visible = true
                        numPad.digits = ""
                    }
                    else pad.visible = false
                    pad.target_ = "l_roll"
                    pad.x = cl7.x + 100
                    pad.y = cl7.y
                }
            }
            Button {
                objectName: "text_l_pitch"
                height: 20
                width: parent.width
                text: pad.l_pitch
                onClicked: {
                    if(pad.visible == false) {
                        pad.visible = true
                        numPad.digits = ""
                    }
                    else pad.visible = false
                    pad.target_ = "l_pitch"
                    pad.x = cl7.x + 100
                    pad.y = cl7.y
                }
            }
            Button {
                objectName: "text_l_yaw"
                height: 20
                width: parent.width
                text: pad.l_yaw
                onClicked: {
                    if(pad.visible == false) {
                        pad.visible = true
                        numPad.digits = ""
                    }
                    else pad.visible = false
                    pad.target_ = "l_yaw"
                    pad.x = cl7.x + 100
                    pad.y = cl7.y
                }
            }


        }


        Column{
            spacing: 10
            id: cl4
            width: 27
            anchors.bottom: cl3.bottom
            anchors.rightMargin: 10
            anchors.bottomMargin: 0
            anchors.right: cl5.left


            Text {
                height: 20
                text: qsTr("x")
                font.pixelSize: 12

            }
            Text {
                height: 20
                text: qsTr("y")
                font.pixelSize: 12

            }
            Text {
                height: 20
                text: qsTr("z")
                font.pixelSize: 12

            }
            Text {
                height: 20
                text: qsTr("roll")
                font.pixelSize: 12

            }
            Text {
                height: 20
                text: qsTr("pitch")
                font.pixelSize: 12

            }
            Text {
                height: 20
                text: qsTr("yaw")
                font.pixelSize: 12
            }


        }

        Column{
            id: cl5
            x: 236
            y: 25
            width: 80
            spacing: 10
            anchors.bottom: cl3.bottom
            anchors.bottomMargin: 0

            Text {

                text: qsTr("Right Arm")
                font.pixelSize: 12
            }


            Button {
                objectName: "text_r_x"
                height: 20
                width: parent.width
                text: pad.r_x
                onClicked: {
                    if(pad.visible == false) {
                        pad.visible = true
                        numPad.digits = ""
                    }
                    else pad.visible = false
                    pad.target_ = "r_x"
                    pad.x = cl5.x + 100
                    pad.y = cl5.y
                }
            }


            Button {
                objectName: "text_r_y"
                height: 20
                width: parent.width
                text: pad.r_y
                onClicked: {
                    if(pad.visible == false) {
                        pad.visible = true
                        numPad.digits = ""
                    }
                    else pad.visible = false
                    pad.target_ = "r_y"
                    pad.x = cl5.x + 100
                    pad.y = cl5.y
                }
            }

            Button {
                objectName: "text_r_z"
                height: 20
                width: parent.width
                text: pad.r_z
                onClicked: {
                    if(pad.visible == false) {
                        pad.visible = true
                        numPad.digits = ""
                    }
                    else pad.visible = false
                    pad.target_ = "r_z"
                    pad.x = cl5.x + 100
                    pad.y = cl5.y
                }
            }
            Button {
                objectName: "text_r_roll"
                height: 20
                width: parent.width
                text: pad.r_roll
                onClicked: {
                    if(pad.visible == false) {
                        pad.visible = true
                        numPad.digits = ""
                    }
                    else pad.visible = false
                    pad.target_ = "r_roll"
                    pad.x = cl5.x + 100
                    pad.y = cl5.y
                }
            }
            Button {
                objectName: "text_r_pitch"
                height: 20
                width: parent.width
                text: pad.r_pitch
                onClicked: {
                    if(pad.visible == false) {
                        pad.visible = true
                        numPad.digits = ""
                    }
                    else pad.visible = false
                    pad.target_ = "r_pitch"
                    pad.x = cl5.x + 100
                    pad.y = cl5.y
                }
            }
            Button {
                objectName: "text_r_yaw"
                height: 20
                width: parent.width
                text: pad.r_yaw
                onClicked: {
                    if(pad.visible == false) {
                        pad.visible = true
                        numPad.digits = ""
                    }
                    else pad.visible = false
                    pad.target_ = "r_yaw"
                    pad.x = cl5.x + 100
                    pad.y = cl5.y
                }
            }

        }


        Row {
            id: com
            x: 293
            y: 23
            width: 192
            height: 167
            spacing: 10
            anchors.right: mover.right
            anchors.bottom: cl3.bottom
            anchors.rightMargin: -80



            Column{
                id:cl
                spacing: 10
                anchors.bottom: parent.bottom


                Text {
                    height: 20
                    text: qsTr("COM pos")
                    font.pixelSize: 12

                }
                Text {
                    height: 20
                    text: qsTr("Height")
                    font.pixelSize: 12

                }
                Text {
                    height: 20
                    text: qsTr("pelv pitch")
                    font.pixelSize: 12

                }
                Text {
                    height: 20
                    text: qsTr("roll")
                    font.pixelSize: 12

                }
                Text {
                    height: 20
                    text: qsTr("pitch")
                    font.pixelSize: 12

                }
                Text {
                    height: 20
                    text: qsTr("yaw")
                    font.pixelSize: 12
                }
            }

            Column{
                id: cl9
                width: 80
                spacing: 10
                anchors.bottom: parent.bottom

                Text {
                    text: qsTr(" ")
                }

                Button {
                    objectName: "com_pos"
                    height: 20
                    width: parent.width
                    text: pad.com_pos
                    onClicked: {
                        if(pad.visible == false) {
                            pad.visible = true
                            numPad.digits = ""
                        }
                        else pad.visible = false

                        pad.x = com.x + 200
                        pad.y = com.y
                        pad.target_ = "com_pos"
                    }
                }

                Button {
                    objectName: "com_height"
                    height: 20
                    width: parent.width
                    text: pad.com_height
                    onClicked: {
                        if(pad.visible == false) {
                            pad.visible = true
                            numPad.digits = ""
                        }
                        else pad.visible = false
                        pad.target_ = "com_height"
                        pad.x = com.x + 200
                        pad.y = com.y
                    }
                }
                Button {
                    objectName: "pelv_pitch"
                    height: 20
                    width: parent.width
                    text: pad.pelv_pitch
                    onClicked: {
                        if(pad.visible == false) {
                            pad.visible = true
                            numPad.digits = ""
                        }
                        else pad.visible = false
                        pad.target_ = "pelv_pitch"
                        pad.x = com.x + 200
                        pad.y = com.y
                    }
                }
                Button {
                    objectName: "com_roll"
                    height: 20
                    width: parent.width
                    text: pad.com_roll
                    onClicked: {
                        if(pad.visible == false) {
                            pad.visible = true
                            numPad.digits = ""
                        }
                        else pad.visible = false
                        pad.target_ = "com_roll"
                        pad.x = com.x + 200
                        pad.y = com.y
                    }
                }
                Button {
                    objectName: "com_pitch"
                    height: 20
                    width: parent.width
                    text: pad.com_pitch
                    onClicked: {
                        if(pad.visible == false) {
                            pad.visible = true
                            numPad.digits = ""
                        }
                        else pad.visible = false
                        pad.target_ = "com_pitch"
                        pad.x = com.x + 200
                        pad.y = com.y
                    }
                }
                Button {
                    objectName: "com_yaw"
                    height: 20
                    width: parent.width
                    text: pad.com_yaw
                    onClicked: {
                        if(pad.visible == false) {
                            pad.visible = true
                            numPad.digits = ""
                        }
                        else pad.visible = false
                        pad.target_ = "com_yaw"
                        pad.x = com.x + 200
                        pad.y = com.y
                    }
                }
            }
        }

        Row {
            id:checkBoxs
            spacing: 25
            anchors.top: cl3.bottom
            anchors.topMargin: 42
            anchors.left: cl3.left

            CheckBox {
                id:cb_lf
                objectName: "cb_lf"
                height: 20
                text: qsTr("l foot")
                font.pixelSize: 12
                padding: 0


            }
            CheckBox {
                id:cb_rf
                objectName: "cb_rf"
                height: 20
                text: qsTr("r foot")
                font.pixelSize: 12
                padding: 0

            }
            CheckBox {
                id:cb_lh
                objectName: "cb_lh"
                height: 20
                text: qsTr("l hand")
                font.pixelSize: 12
                padding: 0

            }
            CheckBox {
                id:cb_rh
                objectName: "cb_rh"
                height: 20
                text: qsTr("r hand")
                font.pixelSize: 12
                padding: 0

            }
        }

        Column {
            id: custaskgain
            x: 468
            width: 128
            height: 146
            anchors.top: parent.top
            anchors.rightMargin: 0
            anchors.topMargin: 0
            anchors.right: parent.right
            spacing: 1

            CheckBox {
                id: customtaskgain
                text: qsTr("Custom Task gain")
                objectName: "customtaskgain"
                font.pixelSize: 12
                padding: 0
            }


            Row {
                spacing: 10
                enabled: customtaskgain.checked

                Column {
                    spacing: 10
                    id: cl6


                    Text {
                        text: qsTr("pos p")
                        font.pixelSize: 12
                    }
                    Text {
                        text: qsTr("pos d")
                        font.pixelSize: 12
                    }
                    Text {
                        text: qsTr("ang p")
                        font.pixelSize: 12
                    }
                    Text {
                        text: qsTr("ang d")
                        font.pixelSize: 12
                    }Text {
                        text: qsTr("acc p")
                        font.pixelSize: 12
                    }
                }

                Column {
                    spacing: 10
                    width: 80
                    anchors.bottom: cl6.bottom

                    Text {
                        text: qsTr("   ")
                    }


                    Button {
                        objectName: "pospgain"
                        height: 15
                        width: parent.width
                        text: pad.pospgain
                        onClicked: {
                            if(pad.visible == false) {
                                pad.visible = true
                                numPad.digits = ""
                            }
                            else pad.visible = false
                            pad.target_ = "pospgain"
                            pad.x = custaskgain.x
                            pad.y = custaskgain.y + 150
                        }
                    }
                    Button {
                        objectName: "posdgain"
                        height: 15
                        width: parent.width
                        text: pad.posdgain
                        onClicked: {
                            if(pad.visible == false) {
                                pad.visible = true
                                numPad.digits = ""
                            }
                            else pad.visible = false
                            pad.target_ = "posdgain"
                            pad.x = custaskgain.x
                            pad.y = custaskgain.y + 150
                        }
                    }
                    Button {
                        objectName: "angpgain"
                        height: 15
                        width: parent.width
                        text: pad.angpgain
                        onClicked: {
                            if(pad.visible == false) {
                                pad.visible = true
                                numPad.digits = ""
                            }
                            else pad.visible = false
                            pad.target_ = "angpgain"
                            pad.x = custaskgain.x
                            pad.y = custaskgain.y + 150
                        }
                    }
                    Button {
                        objectName: "angdgain"
                        height: 15
                        width: parent.width
                        text: pad.angdgain
                        onClicked: {
                            if(pad.visible == false) {
                                pad.visible = true
                                numPad.digits = ""
                            }
                            else pad.visible = false
                            pad.target_ = "angdgain"
                            pad.x = custaskgain.x
                            pad.y = custaskgain.y + 150
                        }
                    }
                    Button {
                        objectName: "accgain"
                        height: 15
                        width: parent.width
                        text: pad.accgain
                        onClicked: {
                            if(pad.visible == false) {
                                pad.visible = true
                                numPad.digits = ""
                            }
                            else pad.visible = false
                            pad.target_ = "accgain"
                            pad.x = custaskgain.x
                            pad.y = custaskgain.y + 150
                        }
                    }

                }
            }

        }

//        Column {
//            spacing: 1
//            anchors.bottom: column3.bottom
//            anchors.left: column3.right
//            anchors.leftMargin: 10

//            Slider {
//                id: horizontalSlider_1
//                objectName: "horizontalSlider_1"
//                width: 300
//                height: 20
//                stepSize: 1
//                to: 99
//                from: 0
//                value: 50
//                onValueChanged: ros.slidervelcommand(valueAt(position), valueAt(horizontalSlider_2.position), valueAt(horizontalSlider_3.position), horizontalSlider_4.valueAt(horizontalSlider_4.position))
//                onPressedChanged: value = 50

//            }

//            Slider {
//                id: horizontalSlider_2
//                objectName: "horizontalSlider_2"
//                width: 300
//                height: 20
//                stepSize: 1
//                to: 99
//                from: 0
//                value: 50
//                onValueChanged: ros.slidervelcommand(valueAt(horizontalSlider_1.position), valueAt(position), valueAt(horizontalSlider_3.position), horizontalSlider_4.valueAt(horizontalSlider_4.position))
//                onPressedChanged: value = 50

//            }

//            Slider {
//                id: horizontalSlider_3
//                objectName: "horizontalSlider_3"
//                width: 300
//                height: 20
//                stepSize: 1
//                to: 99
//                from: 0
//                value: 50
//                onValueChanged: ros.slidervelcommand(valueAt(horizontalSlider_1.position), valueAt(horizontalSlider_2.position), valueAt(position), horizontalSlider_4.valueAt(horizontalSlider_4.position))
//                onPressedChanged: value = 50


//            }
//        }

//        Column {
//            spacing: 1
//            id: column3
//            anchors.left: parent.left
//            anchors.top: checkBoxs.bottom
//            anchors.topMargin: 20


//            Text {
//                id: text2
//                text: qsTr("deg")
//                font.pixelSize: 12
//            }

//            ComboBox {
//                id: comboBox
//                width: 150
//                height: 30
//                font.pixelSize: 12
//                model: ["COM pos", "Pelv Rot", "UpperBody Rotation",
//                    "Right Hand pos", "Right Hand rot", "Left Hand pos", "Left Hand rot"]
//                objectName: "comboBox"
//            }

//            Slider {
//                id: horizontalSlider_4
//                width: 150
//                height: 20
//                stepSize: 1
//                to: 20
//                from: 1
//                value: 1
//                objectName: "horizontalSlider_4"
//            }
//        }

        Column {
            id: torquesolver
            spacing: 1
            anchors.top: custaskgain.bottom
            anchors.topMargin: 5
            anchors.right: custaskgain.right


            Text {
                text: qsTr("Torque Solver")
                font.pixelSize: 12
            }

            ComboBox {
                id: solver_mode
                objectName: "solver_mode"
                width: 140
                height: 30
                font.pixelSize: 12
                model: ["Original", "QP1", "QP2", "QP2_junhee", "QP3"]
            }

            Text {
                text: qsTr("Contact redistribution")
                font.pixelSize: 12
            }

            ComboBox {
                id: cr_mode
                objectName: "cr_mode"
                width: 140
                height: 30
                font.pixelSize: 12
                model: ["Yslee", "QP", "off"]
                enabled: solver_mode.currentIndex == 0
            }

            CheckBox {
                id: checkBox
                objectName: "checkBox"
                height: 20
                text: qsTr("Maintain LC")
                font.pixelSize: 12
            }

        }

        Column {
            id: send
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            spacing: 5


            Row {
                spacing: 10
                anchors.right: parent.right

                Text {
                    id: text3
                    text: qsTr("Traj Time")
                    font.pixelSize: 12
                }

                Button {
                    objectName: "text_traj_time"
                    height: 20
                    width: 200
                    text: pad.traj_time
                    onClicked: {
                        if(pad.visible == false) {
                            pad.visible = true
                            numPad.digits = ""
                        }
                        else pad.visible = false
                        pad.target_ = "traj_time"
                        pad.x = send.x + 100
                        pad.y = send.y + 20

                    }
                }

//                TextField {
//                    height: 15
//                    width: 200
//                    text: qsTr("3.5")
//                    objectName: "text_traj_time"

//                    font.pixelSize: 12
//                    horizontalAlignment: TextInput.AlignHCenter
//                    topPadding: 0
//                    bottomPadding: 0
//                }
            }

            Row {
                spacing: 10
                anchors.right: parent.right

                Text {
                    id: text4
                    text: qsTr("Mode")
                    font.pixelSize: 12
                }

                ComboBox {
                    id: task_mode
                    objectName: "task_mode"
                    width: 200
                    height: 30
                    font.pixelSize: 12
                    model: ["0. COM pos", "1. COM pos + rot", "2. COM ,Upper", "3. Pelv,Upper",
                        "4. left single", "5. right single", "6. --", "7. multi contact", "8. --",
                        "9. --", "10. CustomController 1", "11. CustomController 2" ,"12. CustomController 3",
                        "13. CustomController 4", "14. CustomController 5"]

                }
            }

            Button {
                id: button
                width: 200
                text: qsTr("SEND")
                anchors.right: parent.right
                font.pixelSize: 20
                anchors.rightMargin: 0
                onClicked: ros.tasksendcb()
            }
        }


        Row {
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            spacing: 3



            Text {
                text: qsTr("que name")
                font.pixelSize: 12
            }

            TextField {
                id: queName
                height: 15
                font.pixelSize: 12
                horizontalAlignment: TextInput.AlignHCenter
                topPadding: 0
                bottomPadding: 0
            }

            Button {
                height: 30
                text: qsTr("Add Que")
                font.pixelSize: 12
                onClicked: mymodel.append({"task_num": mymodel.count, "name": queName.text}) + ros.que_addquebtn()
            }
        }

    }



    Frame {
        id: frame3
        anchors.left: frame1.left
        anchors.right: frame1.right
        anchors.bottomMargin: 11
        anchors.top: frame1.bottom
        anchors.topMargin: 3
        width: 610
        height: 130

        Text {
            anchors.left: parent.left
            anchors.top: parent.top
            text: qsTr("Walking Control")
            font.pixelSize: 12
            anchors.leftMargin: -8
            anchors.topMargin: -8
        }

        Row {
            id: row
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            spacing: 10

            Column {
                spacing: 5
                anchors.bottom: parent.bottom

                Text {
                    id: text5
                    text: qsTr("x")
                    font.pixelSize: 12
                }

                Text {
                    id: text9
                    text: qsTr("y")
                    font.pixelSize: 12
                }

                Text {
                    id: text8
                    text: qsTr("z")
                    font.pixelSize: 12
                }

                Text {
                    id: text7
                    text: qsTr("height")
                    font.pixelSize: 12
                }

                Text {
                    id: text6
                    text: qsTr("theta")
                    font.pixelSize: 12
                }



            }

            Column {
                spacing: 5
                anchors.bottom: parent.bottom
                width: 80

                Text {
                    text: qsTr("    ")
                }
                Button {
                    objectName: "text_walking_x"
                    height: 15
                    width: parent.width
                    text: pad.walking_x
                    onClicked: {
                        if(pad.visible == false) {
                            pad.visible = true
                            numPad.digits = ""
                        }
                        else pad.visible = false
                        pad.target_ = "walking_x"
                        pad.x = frame3.x + 150
                        pad.y = frame3.y - 150
                    }
                }
                Button {
                    objectName: "text_walking_y"
                    height: 15
                    width: parent.width
                    text: pad.walking_y
                    onClicked: {
                        if(pad.visible == false) {
                            pad.visible = true
                            numPad.digits = ""
                        }
                        else pad.visible = false
                        pad.target_ = "walking_y"
                        pad.x = frame3.x + 150
                        pad.y = frame3.y - 150
                    }
                }
                Button {
                    objectName: "text_walking_z"
                    height: 15
                    width: parent.width
                    text: pad.walking_z
                    onClicked: {
                        if(pad.visible == false) {
                            pad.visible = true
                            numPad.digits = ""
                        }
                        else pad.visible = false
                        pad.target_ = "walking_z"
                        pad.x = frame3.x + 150
                        pad.y = frame3.y - 150
                    }
                }
                Button {
                    objectName: "text_walking_height"
                    height: 15
                    width: parent.width
                    text: pad.walking_height
                    onClicked: {
                        if(pad.visible == false) {
                            pad.visible = true
                            numPad.digits = ""
                        }
                        else pad.visible = false
                        pad.target_ = "walking_height"
                        pad.x = frame3.x + 150
                        pad.y = frame3.y - 150
                    }
                }
                Button {
                    objectName: "text_walking_theta"
                    height: 15
                    width: parent.width
                    text: pad.walking_theta
                    onClicked: {
                        if(pad.visible == false) {
                            pad.visible = true
                            numPad.digits = ""
                        }
                        else pad.visible = false
                        pad.target_ = "walking_theta"
                        pad.x = frame3.x + 150
                        pad.y = frame3.y - 150
                    }
                }
            }
        }

        Row {
            id: row2
            anchors.top: row.top
            anchors.left: row.right
            anchors.leftMargin: 20
            spacing: 10

            Column {
                spacing: 5
                Text {
                    text: qsTr("    ")
                }

                Text {
                    text: qsTr("step_length_x")
                    font.pixelSize: 12
                }

                Text {
                    text: qsTr("step_length_y")
                    font.pixelSize: 12
                }

            }

            Column {
                id: column
                spacing: 5
                width: 80

                Text {
                    text: qsTr("    ")
                }
                Button {
                    objectName: "text_walking_steplengthx"
                    height: 15
                    width: parent.width
                    text: pad.walking_steplengthx
                    onClicked: {
                        if(pad.visible == false) {
                            pad.visible = true
                            numPad.digits = ""
                        }
                        else pad.visible = false
                        pad.target_ = "walking_steplengthx"
                        pad.x = frame3.x + 300
                        pad.y = frame3.y - 150
                    }
                }
                Button {
                    objectName: "text_walking_steplengthy"
                    height: 15
                    width: parent.width
                    text: pad.walking_steplengthy
                    onClicked: {
                        if(pad.visible == false) {
                            pad.visible = true
                            numPad.digits = ""
                        }
                        else pad.visible = false
                        pad.target_ = "walking_steplengthy"
                        pad.x = frame3.x + 300
                        pad.y = frame3.y - 150
                    }
                }

            }

        }

        Column {
            id: column2
            anchors.left: row2.right
            anchors.leftMargin: 10
            anchors.bottom: parent.bottom
            anchors.bottomMargin: -10
            spacing: -5

            ComboBox {
                id: walking_pattern
                objectName: "walking_pattern"
                width: 140
                height: 30
                font.pixelSize: 12
                model: ["DCM", "Previewcontrol", "MPC"]

            }

            ComboBox {
                id: walking_pattern_2
                objectName: "walking_pattern_2"
                width: 140
                height: 30
                font.pixelSize: 12
                model: ["PELVIS", "COM"]

            }

            ComboBox {
                id: ik_mode
                objectName: "ik_mode"
                width: 140
                height: 30
                font.pixelSize: 12
                model: ["IK", "COMJacobian", "Torque"]

            }

            ComboBox {
                id: controlmode
                objectName: "controlmode"
                width: 140
                height: 30
                font.pixelSize: 12
                model: ["None", "COM Damping", "PELV_CLIK"]

            }

            ComboBox {
                id: step_mode
                objectName: "step_mode"
                width: 140
                height: 30
                font.pixelSize: 12
                model: ["RIGHT", "LEFT"]

            }




        }

        Row {
            id: checkBoxs2
            anchors.top: row2.bottom
            anchors.topMargin: 10
            anchors.right: row2.right
            spacing: 10

            CheckBox {
                id: checkBox_dob
                objectName: "checkBox_dob"
                height: 20
                text: qsTr("DOB")
                font.pixelSize: 12
            }

            CheckBox {
                id: checkBox_IMU
                objectName: "checkBox_IMU"
                height: 20
                text: qsTr("IMU")
                font.pixelSize: 12

            }

        }

        CheckBox {
            id: checkBox_mom
            objectName: "checkBox_mom"
            anchors.top: checkBoxs2.bottom
            anchors.left: checkBoxs2.left

            height: 20
            text: qsTr("mom")
            font.pixelSize: 12
        }

        Column {
            anchors.right: parent.right
            anchors.top: parent.top
            spacing: 5


            Button {
                width: 160
                text: qsTr("walking init")
                onClicked: ros.walkinginitbtncb()
            }

            Button {
                width: 160
                text: qsTr("walking start")
                onClicked: ros.walkingstartbtncb()
            }
        }
    }


    Frame{
        id:frame4
        height: 332
        anchors.right: parent.right
        anchors.rightMargin: 8
        anchors.left: frame1.right
        anchors.leftMargin: 3
        anchors.top: parent.top
        anchors.topMargin: 8

        ListView {
            id:listView
            x: 831
            y: 49
            anchors.fill: parent


            delegate: ItemDelegate {

                text: qsTr("task " + task_num + " :" + name )
                width: parent.width
                highlighted:  ListView.isCurrentItem
                onClicked: listView.currentIndex = index

            }

            model: ListModel{ id: mymodel }
            ScrollIndicator.vertical: ScrollIndicator { }
            clip: true
        }
    }

    Row {
        anchors.top: frame4.bottom
        anchors.topMargin: 10
        anchors.left: frame4.left
        spacing: 5

        Button {
            width: 65
            height: 48
            text: qsTr("delete")
            font.pixelSize: 12
            onClicked: mymodel.remove(listView.currentIndex)
        }

        Button {
            width: 65
            height: 48
            text: qsTr("reset")
            font.pixelSize: 12
            onClicked: mymodel.clear() + ros.que_resetbtn()
        }

        Button {
            width: 65
            height: 48
            text: qsTr("Send")
            font.pixelSize: 12
            onClicked: ros.que_sendbtn()
        }
    }

    Item {
        id: pad
        width: 400
        height: 300
        visible: false



        property string l_x: "0"
        property string l_y: "0"
        property string l_z: "0"
        property string l_roll: "0"
        property string l_pitch: "0"
        property string l_yaw: "0"
        property string r_x: "0"
        property string r_y: "0"
        property string r_z: "0"
        property string r_roll: "0"
        property string r_pitch: "0"
        property string r_yaw: "0"
        property string com_roll: "0"
        property string com_pos: "0"
        property string com_pitch: "0"
        property string com_yaw: "0"
        property string com_height: "0"
        property string pelv_pitch: "0"
        property string pospgain: "0"
        property string posdgain: "0"
        property string angpgain: "0"
        property string angdgain: "0"
        property string accgain: "0"
        property string walking_x: "0"
        property string walking_y: "0"
        property string walking_z: "0"
        property string walking_height: "0"
        property string walking_theta: "0"
        property string traj_time: "0"
        property string walking_steplengthx: "0"
        property string walking_steplengthy: "0"



        property string target_: ""
        x: 345
        y: 137




        function appendDigit(digit)
        {
            if(target_ == "l_x")
                l_x = digit;
            if(target_ == "l_y")
                l_y = digit;
            if(target_ == "l_z")
                l_z = digit;
            if(target_ == "l_roll")
                l_roll = digit;
            if(target_ == "l_pitch")
                l_pitch = digit;
            if(target_ == "l_yaw")
                l_yaw = digit;
            if(target_ == "r_x")
                r_x = digit;
            if(target_ == "r_y")
                r_y = digit;
            if(target_ == "r_z")
                r_z = digit;
            if(target_ == "r_roll")
                r_roll = digit;
            if(target_ == "r_pitch")
                r_pitch = digit;
            if(target_ == "r_yaw")
                r_yaw = digit;
            if(target_ == "com_pos")
                com_pos = digit;
            if(target_ == "com_height")
                com_height = digit;
            if(target_ == "pelv_pitch")
                pelv_pitch = digit;
            if(target_ == "com_roll")
                com_roll = digit;
            if(target_ == "com_pitch")
                com_pitch = digit;
            if(target_ == "com_yaw")
                 com_yaw = digit;
            if(target_ == "pospgain")
                 pospgain = digit;
            if(target_ == "posdgain")
                 posdgain = digit;
            if(target_ == "angpgain")
                 angpgain = digit;
            if(target_ == "angdgain")
                 angdgain = digit;
            if(target_ == "accgain")
                 accgain = digit;
            if(target_ == "accgain")
                 accgain = digit;
            if(target_ == "walking_x")
                 walking_x = digit;
            if(target_ == "walking_y")
                 walking_y = digit;
            if(target_ == "walking_z")
                 walking_z = digit;
            if(target_ == "walking_height")
                 walking_height = digit;
            if(target_ == "walking_theta")
                 walking_theta = digit;
            if(target_ == "traj_time")
                 traj_time = digit;
            if(target_ == "walking_steplengthx")
                 walking_steplengthx = digit;
            if(target_ == "walking_steplengthy")
                 walking_steplengthy = digit;


        }

        function clear()
        {
            if(target_ == "l_x")
                l_x = 0;
            if(target_ == "l_y")
                l_y = 0;
            if(target_ == "l_z")
                l_z = 0;
            if(target_ == "l_roll")
                l_roll = 0;
            if(target_ == "l_pitch")
                l_pitch = 0;
            if(target_ == "l_yaw")
                l_yaw = 0;
            if(target_ == "r_x")
                r_x = 0;
            if(target_ == "r_y")
                r_y = 0;
            if(target_ == "r_y")
                r_z = 0;
            if(target_ == "r_roll")
                r_roll = 0;
            if(target_ == "r_pitch")
                r_pitch = 0;
            if(target_ == "r_yaw")
                r_yaw = 0;
            if(target_ == "com_pos")
                com_pos = 0;
            if(target_ == "com_height")
                com_height = 0;
            if(target_ == "pelv_pitch")
                pelv_pitch = 0;
            if(target_ == "com_roll")
                com_roll = 0;
            if(target_ == "com_pitch")
                com_pitch = 0;
            if(target_ == "com_yaw")
                 com_yaw = 0;
            if(target_ == "pospgain")
                 pospgain = 0;
            if(target_ == "posdgain")
                 posdgain = 0;
            if(target_ == "angpgain")
                 angpgain = 0;
            if(target_ == "angdgain")
                 angdgain = 0;
            if(target_ == "accgain")
                 accgain = 0;
            if(target_ == "accgain")
                 accgain = 0;
            if(target_ == "walking_x")
                 walking_x = 0;
            if(target_ == "walking_y")
                 walking_y = 0;
            if(target_ == "walking_z")
                 walking_z = 0;
            if(target_ == "walking_height")
                 walking_height = 0;
            if(target_ == "walking_theta")
                 walking_theta = 0;
            if(target_ == "traj_time")
                 traj_time = 0;
            if(target_ == "walking_steplengthx")
                 walking_steplengthx = 0;
            if(target_ == "walking_steplengthy")
                 walking_steplengthy = 0;
        }

        NumberPad { id: numPad; anchors.horizontalCenter: parent.horizontalCenter; anchors.verticalCenter: parent.verticalCenter; visible: true}
    }
}
















