import QtQuick 2.0

Item {
    width: 600; height: 300

    Rectangle {
        width: parent.width; height: 220
        gradient: Gradient {
            GradientStop { position: 0.0; color: Qt.rgba(0.4,0.5,1.0,1) }
            GradientStop { position: 0.8; color: Qt.rgba(0.2,0.3,0.7,1) }
            GradientStop { position: 1.0; color: Qt.rgba(0.1,0.3,0.4,1) }
        }
    }

    Rectangle {
        y: 220
        width: parent.width; height: 80
        gradient: Gradient {
            GradientStop { position: 1.0; color: Qt.rgba(0.7,0.9,0.7,1) }
            GradientStop { position: 0.0; color: Qt.rgba(0.3,0.5,0.3,1) }
        }
    }

    Image {
        id: ball
        source: "images/ball.png"
        x: 20; y: 200
        smooth: true

        MouseArea {
            anchors.fill: parent
            onClicked: ballAnimation.running = true
        }

        ParallelAnimation {
            id: ballAnimation

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

            SequentialAnimation {
                RotationAnimation {
                    target: ball
                    property: "rotation"
                    from: 0; to: 360
                    direction: RotationAnimation.Clockwise
                    duration: 1000
                }
                RotationAnimation {
                    target: ball
                    property: "rotation"
                    from: 360; to: 380
                    direction: RotationAnimation.Clockwise
                    duration: 250
                }
            }
        }
    }
}
