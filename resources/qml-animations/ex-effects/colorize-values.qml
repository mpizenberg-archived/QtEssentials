import QtQuick 2.0

Item {
    width: 1000
    height: 250

    Rectangle {
        x: 0; y: 0; width: 300; height: 250
        color: "black"
        Image {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 20
            source: "../images/rocket.svg"
        }

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.verticalCenter
            anchors.topMargin: 35
            text: "original"; font.pixelSize: 32
            color: "white"
        }
    }

    Rectangle {
        x: 350; y: 0; width: 300; height: 250
        color: "black"
        Image {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 20
            source: "../images/rocket.svg"
            effect: Colorize { color: "blue"
                               strength: 0.3 }
        }

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.verticalCenter
            anchors.topMargin: 35
            text: 'color: "blue"\nstrength: 0.3'; font.pixelSize: 32
            color: "white"
        }
    }

    Rectangle {
        x: 700; y: 0; width: 300; height: 250
        color: "black"
        Image {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 20
            source: "../images/rocket.svg"
            effect: Colorize { color: "blue" }
        }

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.verticalCenter
            anchors.topMargin: 35
            text: 'color: "blue"\nstrength: 1.0'; font.pixelSize: 32
            color: "white"
        }
    }
}
