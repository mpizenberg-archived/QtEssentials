import QtQuick 2.0

Rectangle {
    border.color: "blue"
    color: "white"
    radius: 8; smooth: true

    TextInput {
        anchors.fill: parent
        anchors.margins: 4
        text: "Enter text..."
        color: focus ? "black" : "gray"
        font.pixelSize: parent.height - 8
    }
}
