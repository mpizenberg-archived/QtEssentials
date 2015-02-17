import QtQuick 2.0

Column {
    anchors.left: parent.left
    anchors.right: parent.right

    property alias title: label.text
    property alias text: lineEdit.text

    Text {
        id: label
        text: "Title:"
        font.pixelSize: 16
        font.bold: true
    }
    Rectangle {
        color: "white"
        border.color: "gray"
        width: parent.width; height: 24

        TextInput {
            id: lineEdit
            anchors.fill: parent

            text: ""
            font.pixelSize: 20
        }
    }
}
