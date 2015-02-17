import QtQuick 2.0

Rectangle {
    width: 400; height: 400
    color: "lightblue"

    Text {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.baseline: parent.verticalCenter
        text: "Qt Quick"; font.pixelSize: 64
        effect: blur
        
        Blur {
            id: blur
            blurRadius: 100
        }

        PropertyAnimation {
            from: 100; to: 0;
            duration: 2500
            target: blur
            properties: "blurRadius"
            running: true
        }
    }
}
