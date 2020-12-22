import QtQuick 2.9
import QtQuick.Window 2.3
import QtQuick.Controls 2.2
import QtQuick.Dialogs 1.2
import QtQml 2.2

Page {
    width: 1024
    height: 600
    title: qsTr("UI")

    Frame {
        id: frame5
        x: 613
        y: 269
        width: 384
        height: 226
        padding: 0

        Canvas {
            id: leftfoot
            objectName: "can1"
            x: -20
            y: 28
            width: 445
            height: 287
            onPaint: {
                var ctx = getContext("2d")
                ctx.fillStyle = Qt.rgba(1, 0, 0, 1)
                ctx.fillRect(ros.tt, 0, 50, 50)
            }

            Image {
                id: image
                x: 29
                y: 83
                width: 100
                height: 100
                //                source: "qrc:/qtquickplugin/images/template_image.png"
            }
        }

        Rectangle {
            id: rectangle
            objectName: "rec1"
            x: 207
            y: 52
            width: 28
            height: 26
            color: "#dcac9e"
            radius: 8
            z: 3
        }

        Rectangle {
            id: rectangle1
            objectName: "rec2"
            x: 207
            y: 156
            width: 28
            height: 26
            color: "#dcac9e"
            radius: 8
            z: 1
        }

        Rectangle {
            id: rectangle2
            objectName: "rec3"
            x: 200
            y: 144
            width: 130
            height: 50
            color: "#cbcbcb"
        }

        Rectangle {
            id: rectangle3
            objectName: "rec4"
            x: 200
            y: 40
            width: 130
            height: 50
            color: "#cbcbcb"
        }

        Rectangle {
            id: com1
            objectName: "com1"
            x: 104
            y: 29
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
        x: 314
        y: 248
        width: 281
        height: 130

        ProgressBar {
            id: p1
            objectName: "p1"
            x: 20
            y: 0
            width: 180
            value: 0.5
        }

        ProgressBar {
            id: p2
            objectName: "p2"
            x: 20
            y: 20
            width: 180
            value: 0.5
        }

        ProgressBar {
            id: p3
            objectName: "p3"
            x: 20
            y: 40
            width: 180
            value: 0.5
        }

        ProgressBar {
            id: p4
            objectName: "p4"
            x: 20
            y: 60
            width: 180
            value: 0.5
        }

        ProgressBar {
            id: p5
            objectName: "p5"
            x: 20
            y: 80
            width: 180
            value: 0.5
        }

        ProgressBar {
            id: p6
            objectName: "p6"
            x: 20
            y: 100
            width: 180
            value: 0.5
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.right: p1.left
            anchors.top: p1.top
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.right: p2.left
            anchors.top: p2.top
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.right: p3.left
            anchors.top: p3.top
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.right: p4.left
            anchors.top: p4.top
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.right: p5.left
            anchors.top: p5.top
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.right: p6.left
            anchors.top: p6.top
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
            text: qsTr("RightLeg")
            font.pixelSize: 16
        }
    }

    Frame {
        id: frame1
        x: 12
        y: 248
        width: 281
        height: 130
        ProgressBar {
            id: p7
            x: 20
            y: 0
            width: 180
            objectName: "p7"
            value: 0.5
        }

        ProgressBar {
            id: p8
            x: 20
            y: 20
            width: 180
            objectName: "p8"
            value: 0.5
        }

        ProgressBar {
            id: p9
            x: 20
            y: 40
            width: 180
            objectName: "p9"
            value: 0.5
        }

        ProgressBar {
            id: p10
            x: 20
            y: 60
            width: 180
            objectName: "p10"
            value: 0.5
        }

        ProgressBar {
            id: p11
            x: 20
            y: 80
            width: 180
            objectName: "p11"
            value: 0.5
        }

        ProgressBar {
            id: p12
            x: 20
            y: 100
            width: 180
            objectName: "p12"
            value: 0.5
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.right: p7.left
            anchors.top: p7.top
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.right: p8.left
            anchors.top: p8.top
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.right: p9.left
            anchors.top: p9.top
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.right: p10.left
            anchors.top: p10.top
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.right: p11.left
            anchors.top: p11.top
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.right: p12.left
            anchors.top: p12.top
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
            text: qsTr("LeftLeg")

            font.pixelSize: 16
        }
    }

    Frame {
        id: frame2
        x: 12
        y: 42
        width: 281
        height: 169
        ProgressBar {
            id: p13
            x: 20
            y: 0
            width: 180
            objectName: "p24"
            value: 0.5
        }

        ProgressBar {
            id: p14
            x: 20
            y: 20
            width: 180
            objectName: "p29"
            value: 0.5
        }

        ProgressBar {
            id: p15
            x: 20
            y: 40
            width: 180
            objectName: "p26"
            value: 0.5
        }

        ProgressBar {
            id: p16
            x: 20
            y: 60
            width: 180
            objectName: "p27"
            value: 0.5
        }

        ProgressBar {
            id: p17
            x: 20
            y: 80
            width: 180
            objectName: "p28"
            value: 0.5
        }

        ProgressBar {
            id: p18
            x: 20
            y: 100
            width: 180
            objectName: "p29"
            value: 0.5
        }

        ProgressBar {
            id: p27
            x: 20
            y: 120
            width: 180
            objectName: "p30"
            value: 0.5
        }

        ProgressBar {
            id: p28
            x: 20
            y: 140
            width: 180
            objectName: "p31"
            value: 0.5
        }

        Text {
            id: t13
            x: 213
            y: -4
            color: "#000000"
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t24"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: t14
            x: 214
            y: 16
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t25"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: t15
            x: 214
            y: 36
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t26"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: t16
            x: 214
            y: 56
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t27"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: t17
            x: 214
            y: 76
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t28"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: t18
            x: 214
            y: 96
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t29"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: t27
            x: 214
            y: 116
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t30"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: t28
            x: 214
            y: 136
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t31"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: text3
            x: -12
            y: -32
            text: qsTr("LeftArm")
            font.pixelSize: 16
        }

        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.right: p13.left
            anchors.top: p13.top
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.right: p14.left
            anchors.top: p14.top

        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.right: p15.left
            anchors.top: p15.top

        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.right: p16.left
            anchors.top: p16.top
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.right: p17.left
            anchors.top: p17.top

        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.right: p18.left
            anchors.top: p18.top
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.right: p27.left
            anchors.top: p27.top
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.right: p28.left
            anchors.top: p28.top
        }
    }

    Frame {
        id: frame3
        x: 314
        y: 42
        width: 281
        height: 169
        ProgressBar {
            id: p19
            x: 20
            y: 0
            width: 180
            objectName: "p16"
            value: 0.5
        }

        ProgressBar {
            id: p20
            x: 20
            y: 20
            width: 180
            objectName: "p17"
            value: 0.5
        }

        ProgressBar {
            id: p21
            x: 20
            y: 40
            width: 180
            objectName: "p18"
            value: 0.5
        }

        ProgressBar {
            id: p22
            x: 20
            y: 60
            width: 180
            objectName: "p19"
            value: 0.5
        }

        ProgressBar {
            id: p23
            x: 20
            y: 80
            width: 180
            objectName: "p20"
            value: 0.5
        }

        ProgressBar {
            id: p24
            x: 20
            y: 100
            width: 180
            objectName: "p21"
            value: 0.5
        }

        ProgressBar {
            id: p25
            x: 20
            y: 120
            width: 180
            objectName: "p22"
            value: 0.5
        }

        ProgressBar {
            id: p26
            x: 20
            y: 140
            width: 180
            objectName: "p23"
            value: 0.5
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.right: p19.left
            anchors.top: p19.top
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.right: p20.left
            anchors.top: p20.top
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.right: p21.left
            anchors.top: p21.top
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.right: p22.left
            anchors.top: p22.top
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.right: p23.left
            anchors.top: p23.top
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.right: p24.left
            anchors.top: p24.top
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.right: p25.left
            anchors.top: p25.top
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.right: p26.left
            anchors.top: p26.top
        }

        Text {
            id: t19
            x: 213
            y: -4
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t16"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: t20
            x: 214
            y: 16
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t17"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: t21
            x: 214
            y: 36
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t18"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: t22
            x: 214
            y: 56
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t19"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: t23
            x: 214
            y: 76
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t20"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: t24
            x: 214
            y: 96
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t21"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: t25
            x: 214
            y: 116
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t22"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: t26
            x: 214
            y: 136
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t23"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: text4
            x: -12
            y: -32
            text: qsTr("RightArm")
            font.pixelSize: 16
        }
    }

    Frame {
        id: frame4
        x: 730
        y: 134
        width: 281
        height: 72
        ProgressBar {
            id: p29
            x: 20
            y: 0
            width: 180
            objectName: "p13"
            value: 0.5
        }

        ProgressBar {
            id: p30
            x: 20
            y: 20
            width: 180
            objectName: "p14"
            value: 0.5
        }

        ProgressBar {
            id: p31
            x: 20
            y: 40
            width: 180
            objectName: "p15"
            value: 0.5
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.right: p29.left
            anchors.top: p29.top
            objectName: "waist_safety1"
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.right: p30.left
            anchors.top: p30.top
            objectName: "waist_safety2"

        }
        Rectangle {
            width: 20
            height: 6
            color:  "#8AE234"
            anchors.right: p31.left
            anchors.top: p31.top
            objectName: "waist_safety3"

        }

        Text {
            id: t29
            x: 213
            y: -4
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t13"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: t30
            x: 214
            y: 16
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t14"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: t31
            x: 214
            y: 36
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t15"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: text5
            x: 93
            y: -37
            text: qsTr("Torso")
            font.pixelSize: 16
        }
    }

    Text {
        id: text6
        x: 643
        y: 123
        width: 41
        height: 31
        text: qsTr("TIME")
        font.pixelSize: 18
    }

    Text {
        id: text7
        objectName: "time_text"
        x: 629
        y: 157
        width: 70
        height: 24
        text: qsTr("00:00:00")
        font.pixelSize: 18
    }

    Frame {
        id: frame6
        x: 12
        y: 415
        width: 281
        height: 130
        ProgressBar {
            id: p32
            x: 20
            y: 0
            width: 180
            objectName: "p34"
            value: 0.5
        }

        ProgressBar {
            id: p33
            x: 20
            y: 20
            width: 180
            objectName: "p35"
            value: 0.5
        }

        ProgressBar {
            id: p34
            x: 20
            y: 40
            width: 180
            objectName: "p36"
            value: 0.5
        }

        ProgressBar {
            id: p35
            x: 20
            y: 60
            width: 180
            objectName: "p37"
            value: 0.5
        }

        ProgressBar {
            id: p36
            x: 20
            y: 80
            width: 180
            objectName: "p38"
            value: 0.5
        }

        ProgressBar {
            id: p37
            x: 20
            y: 100
            width: 180
            objectName: "p39"
            value: 0.5
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.right: p32.left
            anchors.top: p32.top
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.right: p33.left
            anchors.top: p33.top
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.right: p34.left
            anchors.top: p34.top
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.right: p35.left
            anchors.top: p35.top
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.right: p36.left
            anchors.top: p36.top
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.right: p37.left
            anchors.top: p37.top
        }

        Text {
            id: t32
            x: 213
            y: -4
            color: "#000000"
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t34"
            font.pixelSize: 12
        }

        Text {
            id: t33
            x: 214
            y: 16
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t35"
            font.pixelSize: 12
        }

        Text {
            id: t34
            x: 214
            y: 36
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t36"
            font.pixelSize: 12
        }

        Text {
            id: t35
            x: 214
            y: 56
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t37"
            font.pixelSize: 12
        }

        Text {
            id: t36
            x: 214
            y: 76
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t38"
            font.pixelSize: 12
        }

        Text {
            id: t37
            x: 214
            y: 96
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t39"
            font.pixelSize: 12
        }

        Text {
            id: text8
            x: -12
            y: -32
            text: qsTr("Left FT")
            font.pixelSize: 16
        }
    }

    Frame {
        id: frame7
        x: 314
        y: 415
        width: 281
        height: 130
        ProgressBar {
            id: p38
            x: 20
            y: 0
            width: 180
            objectName: "p40"
            value: 0.5
        }

        ProgressBar {
            id: p39
            x: 20
            y: 20
            width: 180
            objectName: "p41"
            value: 0.5
        }

        ProgressBar {
            id: p40
            x: 20
            y: 40
            width: 180
            objectName: "p42"
            value: 0.5
        }

        ProgressBar {
            id: p41
            x: 20
            y: 60
            width: 180
            objectName: "p43"
            value: 0.5
        }

        ProgressBar {
            id: p42
            x: 20
            y: 80
            width: 180
            objectName: "p44"
            value: 0.5
        }

        ProgressBar {
            id: p43
            x: 20
            y: 100
            width: 180
            objectName: "p45"
            value: 0.5
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.right: p38.left
            anchors.top: p38.top
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.right: p39.left
            anchors.top: p39.top
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.right: p40.left
            anchors.top: p40.top
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.right: p41.left
            anchors.top: p41.top
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.right: p42.left
            anchors.top: p42.top
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.right: p43.left
            anchors.top: p43.top
        }

        Text {
            id: t38
            x: 213
            y: -4
            color: "#000000"
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t40"
            font.pixelSize: 12
        }

        Text {
            id: t39
            x: 214
            y: 16
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t41"
            font.pixelSize: 12
        }

        Text {
            id: t40
            x: 214
            y: 36
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t42"
            font.pixelSize: 12
        }

        Text {
            id: t41
            x: 214
            y: 56
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t43"
            font.pixelSize: 12
        }

        Text {
            id: t42
            x: 214
            y: 76
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t44"
            font.pixelSize: 12
        }

        Text {
            id: t43
            x: 214
            y: 96
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t45"
            font.pixelSize: 12
        }

        Text {
            id: text9
            x: -12
            y: -32
            text: qsTr("Right FT")
            font.pixelSize: 16
        }
    }

//    Button {
//        id: button
//        x: 613
//        y: 42
//        text: qsTr("Gravity")
//        onClicked: {
//            ros.button_ros(0,"gravity");
//        }
//    }

//    Button {
//        id: button1
//        x: 730
//        y: 42
//        text: qsTr("Task")
//        onClicked: {
//            ros.button_ros(1,"task");
//        }
//    }
    
    Text {
        id: text10
        x: 613
        y: 248
        text: qsTr("floor status")
        font.pixelSize: 12
    }

    Button {
        id: button
        x: 614
        y: 42
        text: qsTr("MODE")
        onClicked: ros.modeChange()
    }

    Text {
        id: text11
        objectName: "deg1"
        x: 250
        y: 21
        text: qsTr("DEG")
        font.pixelSize: 14
    }

    Text {
        id: text12
        objectName: "deg2"
        x: 548
        y: 21
        text: qsTr("DEG")
        font.pixelSize: 14
    }

}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}
}
##^##*/
