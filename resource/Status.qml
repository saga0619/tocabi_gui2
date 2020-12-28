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
        x: 313
        y: 295
        width: 281
        height: 116

        ProgressBar {
            id: p1
            objectName: "p1"
            x: 30
            y: -2
            width: 180
            value: 0.5
        }

        ProgressBar {
            id: p2
            objectName: "p2"
            x: 30
            y: 16
            width: 180
            value: 0.5
        }

        ProgressBar {
            id: p3
            objectName: "p3"
            x: 30
            y: 34
            width: 180
            value: 0.5
        }

        ProgressBar {
            id: p4
            objectName: "p4"
            x: 30
            y: 52
            width: 180
            value: 0.5
        }

        ProgressBar {
            id: p5
            objectName: "p5"
            x: 30
            y: 70
            width: 180
            value: 0.5
        }

        ProgressBar {
            id: p6
            objectName: "p6"
            x: 30
            y: 88
            width: 180
            value: 0.5
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.rightMargin: 20
            anchors.right: p1.left
            anchors.top: p1.top
            objectName: "safety27"
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.rightMargin: 20
            anchors.right: p2.left
            anchors.top: p2.top
            objectName: "safety28"
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.rightMargin: 20
            anchors.right: p3.left
            anchors.top: p3.top
            objectName: "safety29"
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.rightMargin: 20
            anchors.right: p4.left
            anchors.top: p4.top
            objectName: "safety30"
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.rightMargin: 20
            anchors.right: p5.left
            anchors.top: p5.top
            objectName: "safety31"
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.rightMargin: 20
            anchors.right: p6.left
            anchors.top: p6.top
            objectName: "safety32"
        }



        Text {
            id: t1
            objectName: "t1"
            x: 213
            y: -7
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            font.pixelSize: 12
        }

        Text {
            id: t2
            objectName: "t2"
            x: 214
            y: 11
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            font.pixelSize: 12
        }

        Text {
            id: t3
            objectName: "t3"
            x: 214
            y: 28
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            font.pixelSize: 12
        }

        Text {
            id: t4
            objectName: "t4"
            x: 214
            y: 47
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            font.pixelSize: 12
        }

        Text {
            id: t5
            objectName: "t5"
            x: 214
            y: 65
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            font.pixelSize: 12
        }

        Text {
            id: t6
            objectName: "t6"
            x: 214
            y: 83
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
        x: 11
        y: 295
        width: 281
        height: 116
        ProgressBar {
            id: p7
            x: 30
            y: -2
            width: 180
            objectName: "p7"
            value: 0.5
        }

        ProgressBar {
            id: p8
            x: 30
            y: 16
            width: 180
            objectName: "p8"
            value: 0.5
        }

        ProgressBar {
            id: p9
            x: 30
            y: 34
            width: 180
            objectName: "p9"
            value: 0.5
        }

        ProgressBar {
            id: p10
            x: 30
            y: 52
            width: 180
            objectName: "p10"
            value: 0.5
        }

        ProgressBar {
            id: p11
            x: 30
            y: 70
            width: 180
            objectName: "p11"
            value: 0.5
        }

        ProgressBar {
            id: p12
            x: 30
            y: 88
            width: 180
            objectName: "p12"
            value: 0.5
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.rightMargin: 20
            anchors.right: p7.left
            anchors.top: p7.top
            objectName: "safety21"
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.rightMargin: 20
            anchors.right: p8.left
            anchors.top: p8.top
            objectName: "safety22"
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.rightMargin: 20
            anchors.right: p9.left
            anchors.top: p9.top
            objectName: "safety23"
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.rightMargin: 20
            anchors.right: p10.left
            anchors.top: p10.top
            objectName: "safety24"
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.rightMargin: 20
            anchors.right: p11.left
            anchors.top: p11.top
            objectName: "safety25"
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.rightMargin: 20
            anchors.right: p12.left
            anchors.top: p12.top
            objectName: "safety26"
        }

        Text {
            id: t7
            x: 213
            y: -6
            color: "#000000"
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t7"
            font.pixelSize: 12
        }

        Text {
            id: t8
            x: 214
            y: 12
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t8"
            font.pixelSize: 12
        }

        Text {
            id: t9
            x: 214
            y: 30
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t9"
            font.pixelSize: 12
        }

        Text {
            id: t10
            x: 214
            y: 48
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t10"
            font.pixelSize: 12
        }

        Text {
            id: t11
            x: 214
            y: 66
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t11"
            font.pixelSize: 12
        }

        Text {
            id: t12
            x: 214
            y: 84
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
        x: 11
        y: 19
        width: 281
        height: 162
        ProgressBar {
            id: p13
            x: 30
            y: -1
            width: 180
            objectName: "p24"
            value: 0.5
        }

        ProgressBar {
            id: p14
            x: 30
            y: 18
            width: 180
            objectName: "p25"
            value: 0.5
        }

        ProgressBar {
            id: p15
            x: 30
            y: 37
            width: 180
            objectName: "p26"
            value: 0.5
        }

        ProgressBar {
            id: p16
            x: 30
            y: 56
            width: 180
            objectName: "p27"
            value: 0.5
        }

        ProgressBar {
            id: p17
            x: 30
            y: 75
            width: 180
            objectName: "p28"
            value: 0.5
        }

        ProgressBar {
            id: p18
            x: 30
            y: 94
            width: 180
            objectName: "p29"
            value: 0.5
        }

        ProgressBar {
            id: p27
            x: 30
            y: 113
            width: 180
            objectName: "p30"
            value: 0.5
        }

        ProgressBar {
            id: p28
            x: 30
            y: 132
            width: 180
            objectName: "p31"
            value: 0.5
        }

        Text {
            id: t13
            x: 213
            y: -5
            color: "#000000"
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t24"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: t14
            x: 214
            y: 14
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t25"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: t15
            x: 214
            y: 33
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t26"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: t16
            x: 214
            y: 52
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t27"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: t17
            x: 214
            y: 71
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t28"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: t18
            x: 214
            y: 90
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t29"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: t27
            x: 214
            y: 108
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t30"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: t28
            x: 214
            y: 128
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
            anchors.rightMargin: 20
            anchors.right: p13.left
            anchors.top: p13.top
            objectName: "safety2"
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.rightMargin: 20
            anchors.right: p14.left
            anchors.top: p14.top
            objectName: "safety3"

        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.rightMargin: 20
            anchors.right: p15.left
            anchors.top: p15.top
            objectName: "safety4"

        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.rightMargin: 20
            anchors.right: p16.left
            anchors.top: p16.top
            objectName: "safety5"
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.rightMargin: 20
            anchors.right: p17.left
            anchors.top: p17.top
            objectName: "safety6"

        }
        Rectangle {
            x: 50
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.rightMargin: 20
            anchors.right: p18.left
            anchors.top: p18.top
            objectName: "safety7"
        }
        Rectangle {
            x: 50
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.rightMargin: 20
            anchors.right: p27.left
            anchors.top: p27.top
            objectName: "safety8"
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.rightMargin: 20
            anchors.right: p28.left
            anchors.top: p28.top
            objectName: "safety9"
        }
    }

    Frame {
        id: frame3
        x: 313
        y: 19
        width: 281
        height: 162
        ProgressBar {
            id: p19
            x: 30
            y: -1
            width: 180
            objectName: "p16"
            value: 0.5
        }

        ProgressBar {
            id: p20
            x: 30
            y: 18
            width: 180
            objectName: "p17"
            value: 0.5
        }

        ProgressBar {
            id: p21
            x: 30
            y: 37
            width: 180
            objectName: "p18"
            value: 0.5
        }

        ProgressBar {
            id: p22
            x: 30
            y: 56
            width: 180
            objectName: "p19"
            value: 0.5
        }

        ProgressBar {
            id: p23
            x: 30
            y: 75
            width: 180
            objectName: "p20"
            value: 0.5
        }

        ProgressBar {
            id: p24
            x: 30
            y: 94
            width: 180
            objectName: "p21"
            value: 0.5
        }

        ProgressBar {
            id: p25
            x: 30
            y: 113
            width: 180
            objectName: "p22"
            value: 0.5
        }

        ProgressBar {
            id: p26
            x: 30
            y: 132
            width: 180
            objectName: "p23"
            value: 0.5
        }
        Rectangle {
            y: 2
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.rightMargin: 20
            anchors.right: p19.left
            anchors.top: p19.top
            objectName: "safety10"
        }
        Rectangle {
            y: 2
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.rightMargin: 20
            anchors.right: p20.left
            anchors.top: p20.top
            objectName: "safety11"
        }
        Rectangle {
            y: 2
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.rightMargin: 20
            anchors.right: p21.left
            anchors.top: p21.top
            objectName: "safety12"
        }
        Rectangle {
            y: 2
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.rightMargin: 20
            anchors.right: p22.left
            anchors.top: p22.top
            objectName: "safety13"
        }
        Rectangle {
            y: 2
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.rightMargin: 20
            anchors.right: p23.left
            anchors.top: p23.top
            objectName: "safety14"
        }
        Rectangle {
            y: 2
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.rightMargin: 20
            anchors.right: p24.left
            anchors.top: p24.top
            objectName: "safety15"
        }
        Rectangle {
            y: 2
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.rightMargin: 20
            anchors.right: p25.left
            anchors.top: p25.top
            objectName: "safety16"
        }
        Rectangle {
            y: 2
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.rightMargin: 20
            anchors.right: p26.left
            anchors.top: p26.top
            objectName: "safety17"
        }

        Text {
            id: t19
            x: 213
            y: -5
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t16"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: t20
            x: 214
            y: 14
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t17"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: t21
            x: 214
            y: 33
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t18"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: t22
            x: 214
            y: 51
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t19"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: t23
            x: 214
            y: 72
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t20"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: t24
            x: 214
            y: 91
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t21"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: t25
            x: 214
            y: 109
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t22"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: t26
            x: 214
            y: 128
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
        x: 11
        y: 206
        width: 281
        height: 57
        ProgressBar {
            id: p29
            x: 30
            y: -3
            width: 180
            objectName: "p13"
            value: 0.5
        }

        ProgressBar {
            id: p30
            x: 30
            y: 14
            width: 180
            objectName: "p14"
            value: 0.5
        }

        ProgressBar {
            id: p31
            x: 30
            y: 31
            width: 180
            objectName: "p15"
            value: 0.5
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.rightMargin: 20
            anchors.right: p29.left
            anchors.top: p29.top
            objectName: "safety18"
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.rightMargin: 20
            anchors.right: p30.left
            anchors.top: p30.top
            objectName: "safety19"

        }
        Rectangle {
            width: 20
            height: 6
            color:  "#8AE234"
            anchors.rightMargin: 20
            anchors.right: p31.left
            anchors.top: p31.top
            objectName: "safety20"

        }

        Text {
            id: t29
            x: 213
            y: -6
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t13"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: t30
            x: 214
            y: 10
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t14"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: t31
            x: 214
            y: 26
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t15"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            id: text5
            x: -12
            y: -31
            text: qsTr("Torso")
            font.pixelSize: 16
        }
    }

    Frame {
        x: 313
        y: 206
        width: 281
        height: 57
        ProgressBar {
            objectName: "p51"
            id: p51
            x: 30
            y: 0
            width: 180
            value: 0.5
        }

        ProgressBar {
            objectName: "p52"
            id: p52
            x: 30
            y: 20
            width: 180
            value: 0.5
        }

        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.rightMargin: 20
            anchors.right: p51.left
            anchors.top: p51.top
            objectName: "safety0"
        }
        Rectangle {
            width: 20
            height: 6
            color: "#f61e1e"
            anchors.rightMargin: 20
            anchors.right: p52.left
            anchors.top: p52.top
            objectName: "safety1"
        }


        Text {
            x: 213
            y: -4
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t51"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            x: 214
            y: 16
            text: qsTr("000.000")
            font.pixelSize: 12
            objectName: "t52"
            horizontalAlignment: Text.AlignRight
        }

        Text {
            x: -12
            y: -32
            text: qsTr("Head")
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
        x: 11
        y: 440
        width: 281
        height: 120
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
            y: 19
            width: 180
            objectName: "p35"
            value: 0.5
        }

        ProgressBar {
            id: p34
            x: 20
            y: 38
            width: 180
            objectName: "p36"
            value: 0.5
        }

        ProgressBar {
            id: p35
            x: 20
            y: 57
            width: 180
            objectName: "p37"
            value: 0.5
        }

        ProgressBar {
            id: p36
            x: 20
            y: 76
            width: 180
            objectName: "p38"
            value: 0.5
        }

        ProgressBar {
            id: p37
            x: 20
            y: 95
            width: 180
            objectName: "p39"
            value: 0.5
        }
        //        Rectangle {
        //            width: 20
        //            height: 6
        //            color: "#f61e1e"
        //            anchors.right: p32.left
        //            anchors.top: p32.top
        //        }
        //        Rectangle {
        //            width: 20
        //            height: 6
        //            color: "#f61e1e"
        //            anchors.right: p33.left
        //            anchors.top: p33.top
        //        }
        //        Rectangle {
        //            width: 20
        //            height: 6
        //            color: "#f61e1e"
        //            anchors.right: p34.left
        //            anchors.top: p34.top
        //        }
        //        Rectangle {
        //            width: 20
        //            height: 6
        //            color: "#f61e1e"
        //            anchors.right: p35.left
        //            anchors.top: p35.top
        //        }
        //        Rectangle {
        //            width: 20
        //            height: 6
        //            color: "#f61e1e"
        //            anchors.right: p36.left
        //            anchors.top: p36.top
        //        }
        //        Rectangle {
        //            width: 20
        //            height: 6
        //            color: "#f61e1e"
        //            anchors.right: p37.left
        //            anchors.top: p37.top
        //        }

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
            y: 14
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t35"
            font.pixelSize: 12
        }

        Text {
            id: t34
            x: 214
            y: 33
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t36"
            font.pixelSize: 12
        }

        Text {
            id: t35
            x: 214
            y: 52
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t37"
            font.pixelSize: 12
        }

        Text {
            id: t36
            x: 214
            y: 71
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t38"
            font.pixelSize: 12
        }

        Text {
            id: t37
            x: 214
            y: 90
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
        x: 313
        y: 440
        width: 281
        height: 120
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
            y: 19
            width: 180
            objectName: "p41"
            value: 0.5
        }

        ProgressBar {
            id: p40
            x: 20
            y: 38
            width: 180
            objectName: "p42"
            value: 0.5
        }

        ProgressBar {
            id: p41
            x: 20
            y: 57
            width: 180
            objectName: "p43"
            value: 0.5
        }

        ProgressBar {
            id: p42
            x: 20
            y: 76
            width: 180
            objectName: "p44"
            value: 0.5
        }

        ProgressBar {
            id: p43
            x: 20
            y: 95
            width: 180
            objectName: "p45"
            value: 0.5
        }
//        Rectangle {
//            width: 20
//            height: 6
//            color: "#f61e1e"
//            anchors.right: p38.left
//            anchors.top: p38.top
//        }
//        Rectangle {
//            width: 20
//            height: 6
//            color: "#f61e1e"
//            anchors.right: p39.left
//            anchors.top: p39.top
//        }
//        Rectangle {
//            width: 20
//            height: 6
//            color: "#f61e1e"
//            anchors.right: p40.left
//            anchors.top: p40.top
//        }
//        Rectangle {
//            width: 20
//            height: 6
//            color: "#f61e1e"
//            anchors.right: p41.left
//            anchors.top: p41.top
//        }
//        Rectangle {
//            width: 20
//            height: 6
//            color: "#f61e1e"
//            anchors.right: p42.left
//            anchors.top: p42.top
//        }
//        Rectangle {
//            width: 20
//            height: 6
//            color: "#f61e1e"
//            anchors.right: p43.left
//            anchors.top: p43.top
//        }

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
            y: 15
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t41"
            font.pixelSize: 12
        }

        Text {
            id: t40
            x: 214
            y: 34
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t42"
            font.pixelSize: 12
        }

        Text {
            id: t41
            x: 214
            y: 53
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t43"
            font.pixelSize: 12
        }

        Text {
            id: t42
            x: 214
            y: 72
            text: qsTr("000.000")
            horizontalAlignment: Text.AlignRight
            objectName: "t44"
            font.pixelSize: 12
        }

        Text {
            id: t43
            x: 214
            y: 90
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
        x: 246
        y: 2
        text: qsTr("DEG")
        font.pixelSize: 14
    }

    Text {
        id: text12
        objectName: "deg2"
        x: 547
        y: 2
        text: qsTr("DEG")
        font.pixelSize: 14
    }

}



/*##^##
Designer {
    D{i:0;formeditorZoom:1.3300000429153442}
}
##^##*/
