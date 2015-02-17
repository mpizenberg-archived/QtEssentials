import QtQuick 2.0

Rectangle {
    width: 400; height: 200; color: "lightblue"

    Rectangle {
        x: 150; y: 50; width: 100; height: 100
        color: mouseArea.containsMouse ? "green" : "white"

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            hoverEnabled: true
        }
    }
}
