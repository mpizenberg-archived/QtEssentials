import QtQuick 2.0
import CustomComponents 1.0

Rectangle {
    width: 500
    height: 360

    Text {
        text: timer.active ? qsTr( "Timer is running. Tap to stop." )
                           : qsTr( "Timer is stopped. Tap to start." )
        font.pixelSize: 24
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 60
    }

    Timer {
        id: timer
        interval: 1000

        onTimeout: {
            console.log( "Timer fired!" );
        }
    }

    MouseArea {
        anchors.fill: parent

        onClicked: {
            if ( timer.active == false ) {
                console.log( "Starting timer" );
                timer.start();
            } else {
                console.log( "Stopping timer" );
                timer.stop();
            }
        }
    }
}
