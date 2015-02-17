import QtQuick 2.0

Rectangle {
    property int size: 200
    property TouchPoint point

    width:size; height: size
    x: point.x - size/2
    y: point.y - size/2

    visible: point.pressed
}
