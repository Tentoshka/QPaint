import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12

Rectangle {
    id: menu
    width: 40
    height: parent.height
    
    color: "#E0E0E0"

    RadioButton {
        id: black
        checked: true
        x: 6
        y: 9
        width: 28
        height: 28
        onClicked: {
            brushColor = blackColor.color
        }
        Rectangle {
            id: blackColor
            anchors.fill: parent
            color: "#000000"
        }
    }
    
    RadioButton {
        id: red
        x: 6
        y: 43
        width: 28
        height: 28
        onClicked: {
            brushColor = redColor.color
        }
        Rectangle {
            id: redColor
            anchors.fill: parent
            color: "#FF0000"
        }
    }
    
    RadioButton {
        id: green
        x: 6
        y: 79
        width: 28
        height: 28
        onClicked: {
            brushColor = greenColor.color
        }
        Rectangle {
            id: greenColor
            anchors.fill: parent
            color: "#00FF00"
        }
    }
    
    RadioButton {
        id: blue
        x: 6
        y: 113
        width: 28
        height: 28
        onClicked: {
            brushColor = blueColor.color
        }
        Rectangle {
            id: blueColor
            anchors.fill: parent
            color: "#0000FF"
        }
    }
}
