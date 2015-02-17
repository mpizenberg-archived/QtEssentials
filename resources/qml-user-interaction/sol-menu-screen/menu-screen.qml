import QtQuick 2.0

Item {
    width: 400; height: 400

    Rectangle {
        id: lightblue_square
        color: focus ? "red" : "lightblue"
        x: 35; y: 35
        width: 150; height: 150
        focus: true

        MouseArea {
            anchors.fill: parent
            onClicked: parent.focus = true
        }

        KeyNavigation.right: green_square
        KeyNavigation.down: silver_square
    }

    Rectangle {
        id: green_square
        color: focus ? "red" : "green"
        x: 215; y: 35
        width: 150; height: 150

        MouseArea {
            anchors.fill: parent
            onClicked: parent.focus = true
        }

        KeyNavigation.left: lightblue_square
        KeyNavigation.down: purple_square
    }

    Rectangle {
        id: silver_square
        color: focus ? "red" : "silver"
        x: 35; y: 215
        width: 150; height: 150

        MouseArea {
            anchors.fill: parent
            onClicked: parent.focus = true
        }

        KeyNavigation.right: purple_square
        KeyNavigation.up: lightblue_square
    }

    Rectangle {
        id: purple_square
        color: focus ? "red" : "purple"
        x: 215; y: 215
        width: 150; height: 150

        MouseArea {
            anchors.fill: parent
            onClicked: parent.focus = true
        }

        KeyNavigation.left: silver_square
        KeyNavigation.up: green_square
    }
}
