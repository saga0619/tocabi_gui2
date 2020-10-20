import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Dialogs 1.2
import QtMultimedia 5.0
Page{

    Label {
        text: qsTr("You are on Page 2.")
        anchors.centerIn: parent
    }


    Rectangle {
        id: rectangle4
        x: 0
        y: 0
        width: 256
        height: 256
        color: "#ffffff"

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


}

