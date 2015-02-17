import QtQuick 2.0
import "items"

Rectangle {
    width: 250; height: 100; color: "lightblue"

    NewCheckBox {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        onChecked: checkValue ? parent.color = "red"
                              : parent.color = "lightblue"
    }
}
