import QtQuick 2.0

Rectangle {
    width: 300; height: 100
    color: "lightblue"

    Text {
        y: 34
        text: "Right-aligned text"; color: "green"
        font.family: "Helvetica"; font.pixelSize: 32
        anchors.right: parent.right
    }
}
