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

        MouseArea {
            anchors.fill: parent
            onClicked: root.state == "off" ? root.state = "on"
                                           : root.state = "off"
        }
    }

    Rectangle {
        id: handle
        x: 15
        width: 40; height: 30
        color: "lightgray"
    }

    Rectangle {
        id: light
        x: 70; y: 65
        width: 20; height: 20
        radius: 5
    }

    states: [
        State { name: "off"
                PropertyChanges { target: handle; y: 30 }
                PropertyChanges { target: light; color: "black" } },
        State { name: "on"
                PropertyChanges { target: handle; y: 90 }
                PropertyChanges { target: light; color: "red" } }
    ]

    state: "off"
}
