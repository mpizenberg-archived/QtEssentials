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
            anchors.topMargin: 30
            source: "../images/rocket.svg"
            effect: Opacity { opacity: 0.5 }
        }
        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 27
            text: "opacity: 0.5"; font.pixelSize: 32
            color: "white"
        }
    }

    Rectangle {
        x: 350; y: 0; width: 300; height: 250
        color: "black"
        Image {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 30
            source: "../images/rocket.svg"
            effect: Opacity { }
        }
        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 27
            text: "default (0.7)"; font.pixelSize: 32
            color: "white"
        }
    }

    Rectangle {
        x: 700; y: 0; width: 300; height: 250
        color: "black"
        Image {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 30
            source: "../images/rocket.svg"
            effect: Opacity { opacity: 1.0 }
        }
        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 27
            text: "opacity: 1.0"; font.pixelSize: 32
            color: "white"
        }
    }
}
