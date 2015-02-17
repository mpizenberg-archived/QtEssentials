import QtQuick 2.0

Rectangle {
    width: childrenRect.width + 16

    signal moveUpClicked
    signal removeClicked
    signal moveDownClicked

    Column {
        anchors.left: parent.left
        anchors.leftMargin: 8
        anchors.topMargin: 8
        anchors.top: parent.top
        spacing: 8

        Button {
            color: "#9090c0"
            text: "Move item up"
            onClicked: moveUpClicked()
        }

        Button {
            color: "#c09090"
            text: "Remove item"
            onClicked: removeClicked()
        }

        Button {
            color: "#c0c090"
            text: "Move item down"
            onClicked: moveDownClicked()
        }
    }
}
