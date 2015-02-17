import QtQuick 2.0

Item {
    width: 100; height: 100

    Image {
        id: ball
        source: "../images/ball.png"
        anchors.centerIn: parent
        smooth: true

        SequentialAnimation on rotation {
            RotationAnimation {
                from: 0; to: 360
                direction: RotationAnimation.Clockwise
                duration: 1000
            }
            RotationAnimation {
                from: 0; to: 45
                direction: RotationAnimation.Counterclockwise
                duration: 1000
            }
            RotationAnimation {
                from: 45; to: 315
                direction: RotationAnimation.Shortest
                duration: 1000
            }
        }
    }
}
