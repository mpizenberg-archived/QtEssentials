import QtQuick 2.0

Item {
    width: 600; height: 300

    Image {
        source: "images/ball.png"
        anchors.horizontalCenter: parent.horizontalCenter

        SequentialAnimation on y {
            NumberAnimation {
                from: 200; to: 20
                easing.type: "OutQuad"
                duration: 250
            }
            NumberAnimation {
                from: 20; to: 200
                easing.type: "OutBounce"
                duration: 1000
            }
        }
    }
}
