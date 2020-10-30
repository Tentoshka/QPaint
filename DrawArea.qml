import QtQuick 2.14
import QtQuick.Window 2.14

Rectangle {
    id: drawArea
    width: parent.width - 40
    height: parent.height
    MouseArea {
        id: mArea
        anchors.fill: parent
        onClicked: setColor()
        onPositionChanged: {
            var pixel = Qt.createComponent("Pixel.qml")
            if(pixel.status === Component.Ready) {
                var childRec = pixel.createObject(drawArea)
                
                childRec.x = mArea.mouseX - childRec.width/2
                childRec.y = mArea.mouseY - childRec.width/2

                childRec.color = brushColor
            }
        }
    }
}
