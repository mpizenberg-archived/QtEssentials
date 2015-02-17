import QtQuick 2.0

Item {
    width: 600; height: 300

    Image {
        source: "images/ball.png"

        NumberAnimation on x {
            from: 20; to: 500
            easing.type: "OutQuad"
            duration: 1250
        }

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
