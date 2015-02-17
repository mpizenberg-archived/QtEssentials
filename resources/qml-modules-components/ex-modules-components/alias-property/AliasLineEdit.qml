import QtQuick 2.0

Rectangle {
    border.color: "green"
    color: "white"
    radius: 4; smooth: true

    TextInput {
        id: textInput
        anchors.fill: parent
        anchors.margins: 2
        text: "Enter text..."
        color: focus ? "black" : "gray"
        font.pixelSize: parent.height - 4
    }

    property alias text: textInput.text
}
