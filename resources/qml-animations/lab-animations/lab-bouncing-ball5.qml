import QtQuick 2.0

Item {
    width: 600; height: 300

    Image {
        id: ball
        source: "images/ball.png"

        ParallelAnimation {
            NumberAnimation {
                target: ball
                property: "x"
                from: 20; to: 500
                easing.type: "OutQuad"
                duration: 1250
            }

            SequentialAnimation {
                NumberAnimation {
                    target: ball
                    property: "y"
                    from: 200; to: 20
                    easing.type: "OutQuad"
                    duration: 250
                }
                NumberAnimation {
                    target: ball
                    property: "y"
                    from: 20; to: 200
                    easing.type: "OutBounce"
                    duration: 1000
                }
            }

            RotationAnimation {
                target: ball
                property: "rotation"
                from: 0; to: 360
                direction: RotationAnimation.Clockwise
                duration: 1000
            }

            running: true
        }
    }
}
