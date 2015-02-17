import QtQuick 2.0
import "items" as Items

Rectangle {
    width: 250; height: 100; color: "lightblue"

    Items.CheckBox {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
    }
}
