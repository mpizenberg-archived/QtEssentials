import QtQuick 2.0

Rectangle {
    id: root
    width: 1024; height: 600
    color: "steelblue"

    Image {
        source: "qt-logo.jpg"

        PinchArea {
            anchors.fill: parent
            pinch.target: parent

            pinch.minimumScale: 0.5
            pinch.maximumScale: 2.0

            pinch.minimumRotation: -3600
            pinch.maximumRotation: 3600

            pinch.dragAxis: Pinch.XAxis
        }
    }
 }
