import QtQuick 2.0

Item {
    id: root
    width: 100; height: 150

    Rectangle {
        id: groove
        x: 10; y: 25
        width: 50; height: 100
        color: "gray"
        border.color: "lightgray"
        border.width: 4
    }

    Rectangle {
        id: handle
        x: 15; y: 30
        width: 40; height: 30
        color: "lightgray"
    }
}
