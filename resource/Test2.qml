import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Dialogs 1.2
import QtMultimedia 5.0
Page{
    property var abool: false

    Rectangle {
        id: rectangle4
        x: 0
        y: 0
        width: 256
        height: 256
        color: "#ffffff"
        visible: false

        MediaPlayer {
            id: mediaplayer
            autoPlay: true
            autoLoad: true
            loops:  MediaPlayer.Infinite
            source: "vid.mp4"

        }

        VideoOutput{
            id:videooutput
            source: mediaplayer
            anchors.fill: parent
        }
    }

    Button {
        id: button
        x: 78
        y: 339
        text: qsTr("wanna fun?")
        onClicked:{
            abool = !abool;
            rectangle4.visible = abool;
        } 
    }


}


/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
