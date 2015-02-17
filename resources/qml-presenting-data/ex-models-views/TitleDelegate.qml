import QtQuick 2.0

Component {
   Item {
      width: parent.width; height: 64

      Rectangle {
         width: Math.max(childrenRect.width + 16, parent.width)
         height: 60; clip: true
         color: "#505060"; border.color: "#8080b0"; radius: 8

         Column { Text { x: 6; color: "white"
                         font.pixelSize: 32; text: title }
                  Text { x: 6; color: "white"
                         font.pixelSize: 16; text: link } }
      }
   }
}
