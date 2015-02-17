import QtQuick 2.0

Rectangle {
    width: 400; height: 400
    color: "lightblue"

    Item {
        anchors.fill: parent
        width: parent.width; height: parent.height
        effect: Blur {
                    NumberAnimation on blurRadius {
                        from: 100; to: 0;
                        duration: 2500
                    }
                }

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.baseline: parent.verticalCenter
            text: "Qt Quick"; font.pixelSize: 64
            effect: DropShadow {
                        xOffset: 5; yOffset: 5
                    }
        }
    }
}
