import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("QPaint")

    property var brushColor: ""

    DrawArea {
        id: drawArea
        x: 40
    }

    Menu {
        id: menu
    }
}
