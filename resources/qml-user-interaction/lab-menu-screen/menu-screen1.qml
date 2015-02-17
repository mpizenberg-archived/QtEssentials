import QtQuick 2.0

Item {
    width: 400; height: 400

    Rectangle {
        id: lightblue_square
        color: focus ? "red" : "lightblue"
        x: 35; y: 35
        width: 150; height: 150

        MouseArea {
            anchors.fill: parent
            onClicked: parent.focus = true
        }
    }

    Rectangle {
        id: green_square
        color: focus ? "red" : "green"
        x: 215; y: 35
        width: 150; height: 150

        MouseArea {
            anchors.fill: parent
        }

        KeyNavigation.left: lightblue_square
    }

    Rectangle {
        id: silver_square
        color: focus ? "red" : "silver"
        x: 35; y: 215
        width: 150; height: 150
    }

    Rectangle {
        color: focus ? "red" : "purple"
        x: 215; y: 215
        width: 150; height: 150
    }
}
