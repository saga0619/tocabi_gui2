import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import QtQuick.Dialogs 1.2
import QtQml 2.2

Window {
    visible: true
    width: 1280
    height: 720
    title: qsTr("UI")


    Frame {
        id: frame5
        x: 650
        y: 396
        width: 600
        height: 300
        padding: 0

        Canvas{
            id: leftfoot
            objectName: "can1"
            x: 0
            y: 0
            width: 500
            height: 500
            onPaint: {
                var ctx=getContext("2d");
                ctx.fillStyle=Qt.rgba(1,0,0,1);
                ctx.fillRect(ros.tt,0,50,50);

            }

            Image {
                id: image
                x: 8
                y: 118
                width: 100
                height: 100
            }

        }


        Rectangle {
            id: rectangle
            objectName: "rec1"
            x: 286
            y: 63
            width: 28
            height: 26
            color: "#dcac9e"
            radius: 8
            z: 3
        }

        Rectangle {
            id: rectangle1
            objectName: "rec2"
            x: 286
            y: 167
            width: 28
            height: 26
            color: "#dcac9e"
            radius: 8
            z: 1
        }

        Rectangle {
            id: rectangle2
            objectName: "rec3"
            x: 279
            y: 155
            width: 130
            height: 50
            color: "#cbcbcb"
        }

        Rectangle {
            id: rectangle3
            objectName: "rec4"
            x: 279
            y: 51
            width: 130
            height: 50
            color: "#cbcbcb"
        }

        Rectangle {
            id: com1
            objectName: "com1"
            x: 183
            y: 40
            width: 16
            height: 16
            color: "#fd2121"
            radius: 8
            rotation: 0
            z: 4
        }


    }


    Timer{
        id:timer1
        interval: 16
        repeat:true
        running: true
        triggeredOnStart: true

        onTriggered: {
            ros.update();


        }
    }


    Frame {
        id: frame
        x: 21
        y: 376
        width: 281
        height: 130

        ProgressBar {
            id: p1
            objectName: "p1"
            x: 0
            y: 0
            value: 0.5
        }

        ProgressBar {
            id: p2
            objectName: "p2"
            x: 0
            y: 20
            value: 0.5
        }

        ProgressBar {
            id: p3
            objectName: "p3"
            x: 0
            y: 40
            value: 0.5
        }

        ProgressBar {
            id: p4
            objectName: "p4"
            x: 0
            y: 60
            value: 0.5
        }

        ProgressBar {
            id: p5
            objectName: "p5"
            x: 0
            y: 80
            value: 0.5
        }

        ProgressBar {
            id: p6
            objectName: "p6"
            x: 0
            y: 100
            value: 0.5
        }

        Text {
            id: t1
            objectName: "t1"
            x: 213
            y: -4
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            font.pixelSize: 12
        }

        Text {
            id: t2
            objectName: "t2"
            x: 214
            y: 16
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            font.pixelSize: 12
        }

        Text {
            id: t3
            objectName: "t3"
            x: 214
            y: 36
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            font.pixelSize: 12
        }

        Text {
            id: t4
            objectName: "t4"
            x: 214
            y: 56
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            font.pixelSize: 12
        }

        Text {
            id: t5
            objectName: "t5"
            x: 214
            y: 76
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            font.pixelSize: 12
        }

        Text {
            id: t6
            objectName: "t6"
            x: 214
            y: 96
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            font.pixelSize: 12
        }

        Text {
            id: text1
            x: -12
            y: -32
            text: qsTr("LeftLeg")
            font.pixelSize: 16
        }
    }

    Frame {
        id: frame1
        x: 341
        y: 376
        width: 281
        height: 130
        ProgressBar {
            id: p7
            x: 0
            y: 0
            objectName: "p7"
            value: 0.5
        }

        ProgressBar {
            id: p8
            x: 0
            y: 20
            objectName: "p8"
            value: 0.5
        }

        ProgressBar {
            id: p9
            x: 0
            y: 40
            objectName: "p9"
            value: 0.5
        }

        ProgressBar {
            id: p10
            x: 0
            y: 60
            objectName: "p10"
            value: 0.5
        }

        ProgressBar {
            id: p11
            x: 0
            y: 80
            objectName: "p11"
            value: 0.5
        }

        ProgressBar {
            id: p12
            x: 0
            y: 100
            objectName: "p12"
            value: 0.5
        }

        Text {
            id: t7
            x: 213
            y: -4
            color: "#000000"
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t7"
            font.pixelSize: 12
        }

        Text {
            id: t8
            x: 214
            y: 16
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t8"
            font.pixelSize: 12
        }

        Text {
            id: t9
            x: 214
            y: 36
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t9"
            font.pixelSize: 12
        }

        Text {
            id: t10
            x: 214
            y: 56
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t10"
            font.pixelSize: 12
        }

        Text {
            id: t11
            x: 214
            y: 76
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t11"
            font.pixelSize: 12
        }

        Text {
            id: t12
            x: 214
            y: 96
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t12"
            font.pixelSize: 12
        }

        Text {
            id: text2
            x: -12
            y: -32
            text: qsTr("RightLeg")

            font.pixelSize: 16
        }
    }

    Frame {
        id: frame2
        x: 21
        y: 46
        width: 281
        height: 183

        ProgressBar {
            id: p16
            x: 0
            y: 4
            objectName: "p16"
            value: 0.5
        }

        ProgressBar {
            id: p17
            x: 0
            y: 25
            objectName: "p17"
            value: 0.5
        }

        ProgressBar {
            id: p18
            x: 0
            y: 44
            objectName: "p18"
            value: 0.5
        }






        ProgressBar {
            id: p19
            x: 0
            y: 65
            value: 0.5
            objectName: "p19"
        }

        ProgressBar {
            id: p20
            x: 0
            y: 85
            value: 0.5
            objectName: "p20"
        }

        ProgressBar {
            id: p21
            x: 0
            y: 105
            value: 0.5
            objectName: "p21"
        }

        ProgressBar {
            id: p22
            x: 0
            y: 126
            value: 0.5
            objectName: "p22"
        }

        ProgressBar {
            id: p23
            x: 0
            y: 146
            value: 0.5
            objectName: "p23"
        }

        Text {
            id: t16
            x: 214
            y: 0
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t16"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: t17
            x: 214
            y: 20
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t17"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: t18
            x: 214
            y: 40
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t18"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: t19
            x: 213
            y: 61
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t19"
            font.pixelSize: 12
        }

        Text {
            id: t20
            x: 214
            y: 81
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t20"
            font.pixelSize: 12
        }

        Text {
            id: t21
            x: 214
            y: 101
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t21"
            font.pixelSize: 12
        }

        Text {
            id: t22
            x: 214
            y: 122
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t22"
            font.pixelSize: 12
        }

        Text {
            id: t23
            x: 214
            y: 142
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t23"
            font.pixelSize: 12
        }

        Text {
            id: text3
            x: -12
            y: -31
            text: qsTr("LeftArm")
            font.pixelSize: 16
        }
    }

    Frame {
        id: frame3
        x: 341
        y: 46
        width: 281
        height: 183

        ProgressBar {
            id: p26
            x: -1
            y: 4
            objectName: "p26"
            value: 0.5
        }

        ProgressBar {
            id: p27
            x: -1
            y: 24
            objectName: "p27"
            value: 0.5
        }

        ProgressBar {
            id: p28
            x: -1
            y: 44
            objectName: "p28"
            value: 0.5
        }

        Text {
            id: t26
            x: 213
            y: 0
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t26"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: t27
            x: 213
            y: 20
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t27"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: t28
            x: 213
            y: 40
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t28"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: text4
            x: -12
            y: -32
            text: qsTr("RightArm")
            font.pixelSize: 16
        }

        ProgressBar {
            id: p29
            x: -1
            y: 64
            value: 0.5
            objectName: "p29"
        }

        ProgressBar {
            id: p30
            x: -1
            y: 84
            value: 0.5
            objectName: "p30"
        }

        Text {
            id: t29
            x: 213
            y: 60
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t29"
            font.pixelSize: 12
        }

        Text {
            id: t30
            x: 213
            y: 80
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t30"
            font.pixelSize: 12
        }

        Text {
            id: t33
            x: 213
            y: 141
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t33"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: t32
            x: 213
            y: 121
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t32"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: t31
            x: 212
            y: 101
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t31"
            horizontalAlignment: Text.AlignRight
        }

        ProgressBar {
            id: p33
            x: -1
            y: 145
            objectName: "p33"
            value: 0.5
        }

        ProgressBar {
            id: p32
            x: -1
            y: 125
            objectName: "p32"
            value: 0.5
        }

        ProgressBar {
            id: p31
            x: -1
            y: 105
            objectName: "p31"
            value: 0.5
        }





    }

    Frame {
        id: frame4
        x: 21
        y: 261
        width: 281
        height: 72

        Text {
            id: text5
            x: -12
            y: -31
            text: qsTr("Torso")
            font.pixelSize: 16
        }

        ProgressBar {
            id: p13
            x: 1
            y: -1
            value: 0.5
            objectName: "p13"
        }

        ProgressBar {
            id: p14
            x: 1
            y: 19
            value: 0.5
            objectName: "p14"
        }

        ProgressBar {
            id: p15
            x: 1
            y: 39
            value: 0.5
            objectName: "p15"
        }

        Text {
            id: t13
            x: 214
            y: -5
            color: "#000000"
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t13"
            font.pixelSize: 12
        }

        Text {
            id: t14
            x: 215
            y: 15
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t14"
            font.pixelSize: 12
        }

        Text {
            id: t15
            x: 215
            y: 35
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t15"
            font.pixelSize: 12
        }
    }

    Text {
        id: text6
        x: 393
        y: 319
        text: qsTr("TIME")
        font.pixelSize: 18
    }

    Text {
        id: text7
        objectName: "time_text"
        x: 447
        y: 319
        text: qsTr("00:00:00")
        font.pixelSize: 18
    }

    Frame {
        id: frame6
        x: 21
        y: 553
        width: 281
        height: 130

        ProgressBar {
            id: p34
            x: 0
            y: 0
            objectName: "p34"
            value: 0.5
        }

        ProgressBar {
            id: p35
            x: 0
            y: 20
            objectName: "p35"
            value: 0.5
        }

        ProgressBar {
            id: p36
            x: 0
            y: 40
            objectName: "p36"
            value: 0.5
        }

        ProgressBar {
            id: p37
            x: 0
            y: 60
            objectName: "p37"
            value: 0.5
        }

        Text {
            id: t34
            x: 214
            y: -4
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t34"
            font.pixelSize: 12
        }

        Text {
            id: t35
            x: 214
            y: 16
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t35"
            font.pixelSize: 12
        }

        Text {
            id: t36
            x: 214
            y: 36
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t36"
            font.pixelSize: 12
        }

        Text {
            id: t37
            x: 214
            y: 56
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t37"
            font.pixelSize: 12
        }

        Text {
            id: text8
            x: -12
            y: -32
            text: qsTr("Left FT")
            font.pixelSize: 16
        }

        ProgressBar {
            id: p38
            x: 0
            y: 79
            value: 0.5
            objectName: "p38"
        }

        ProgressBar {
            id: p39
            x: 0
            y: 99
            value: 0.5
            objectName: "p39"
        }

        Text {
            id: t38
            x: 215
            y: 77
            color: "#000000"
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t38"
            font.pixelSize: 12
        }

        Text {
            id: t39
            x: 214
            y: 95
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t39"
            font.pixelSize: 12
        }
    }

    Frame {
        id: frame7
        x: 341
        y: 553
        width: 281
        height: 130

        ProgressBar {
            id: p40
            x: -1
            y: -1
            objectName: "p40"
            value: 0.5
        }

        ProgressBar {
            id: p41
            x: -1
            y: 19
            objectName: "p41"
            value: 0.5
        }

        ProgressBar {
            id: p42
            x: -1
            y: 39
            objectName: "p42"
            value: 0.5
        }

        ProgressBar {
            id: p43
            x: -1
            y: 59
            objectName: "p43"
            value: 0.5
        }

        Text {
            id: t40
            x: 213
            y: -5
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t40"
            font.pixelSize: 12
        }

        Text {
            id: t41
            x: 213
            y: 15
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t41"
            font.pixelSize: 12
        }

        Text {
            id: t42
            x: 213
            y: 35
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t42"
            font.pixelSize: 12
        }

        Text {
            id: t43
            x: 213
            y: 55
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t43"
            font.pixelSize: 12
        }

        Text {
            id: text9
            x: -12
            y: -32
            text: qsTr("Right FT")
            font.pixelSize: 16
        }

        ProgressBar {
            id: p44
            x: -1
            y: 80
            value: 0.5
            objectName: "p44"
        }

        ProgressBar {
            id: p45
            x: -1
            y: 100
            value: 0.5
            objectName: "p45"
        }

        Text {
            id: t44
            x: 212
            y: 76
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t44"
            font.pixelSize: 12
        }

        Text {
            id: t45
            x: 213
            y: 96
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t45"
            font.pixelSize: 12
        }
    }

    Button {
        id: button
        x: 679
        y: 46
        text: qsTr("Torque/Position")
        objectName: "tp_button"
        onClicked: {
            ros.sub_change();
        }
    }

    Button {
        id: button1
        x: 679
        y: 118
        text: qsTr("Task")
        onClicked: {

            ros.button_ros(1,"task");
        }
    }


    Text {
        id: text10
        x: 650
        y: 376
        text: qsTr("floor status")
        font.pixelSize: 12
    }



    SwipeView {
        id: swipeView
        x: 986
        y: 98
        width: 240
        height: 215
        currentIndex: tabBar.currentIndex

        Test1 {
        }

        Test2 {

        }
    }

    TabBar {
        id: tabBar
        x: 986
        y: 57
        width: 240
        currentIndex: swipeView.currentIndex

        TabButton {
            text: 'test 1 '
        }

        TabButton {
            text: 'test 2 '
        }
    }

    Frame {
        id: frame8
        x: 341
        y: 261
        width: 281
        height: 52

        Text {
            id: text11
            x: -12
            y: -32
            text: qsTr("Head")
            font.pixelSize: 16
        }

        ProgressBar {
            id: p24
            x: 0
            y: 0
            value: 0.5
            objectName: "p24"
        }

        ProgressBar {
            id: p25
            x: 0
            y: 20
            value: 0.5
            objectName: "p25"
        }

        Text {
            id: t24
            x: 213
            y: -4
            color: "#000000"
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t24"
            font.pixelSize: 12
        }

        Text {
            id: t25
            x: 214
            y: 16
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t25"
            font.pixelSize: 12
        }
    }


}
