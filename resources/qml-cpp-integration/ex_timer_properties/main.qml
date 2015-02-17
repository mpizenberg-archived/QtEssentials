import QtQuick 2.0
import CustomComponents 1.0

Rectangle {
    width: 500
    height: 360

    Timer {
        id: timer
        interval: 3000
    }

    Text {
        text: qsTr( "Timer is running" )
        font.pixelSize: 24
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 60
    }
}
