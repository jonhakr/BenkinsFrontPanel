import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.2

Button {
    id: control
    property alias source: img.source
    property bool rounded: false
    property real borderWidth: 8
    property real borderRadius: Math.min(width, height)*0.5
    property bool selected: false
    property string color: Material.background
    property string colorPressed: Material.foreground
    property string colorHovered: Material.accent

    implicitHeight: img.implicitHeight + borderWidth
    implicitWidth: img.implicitWidth + borderWidth

    background: Rectangle {
        id: bg
        anchors.centerIn: parent
        width: parent.width
        height: parent.height

        Image {
            id: img
            anchors.centerIn: parent
            width: parent.width - borderWidth
            height: parent.height - borderWidth
            antialiasing: true
            fillMode: Image.PreserveAspectFit
            clip: true
        }

        color: "transparent"
        radius: rounded ? borderRadius : 0
        border.width: borderWidth
        border.color: control.color
        states: [
            State {
                name: "pressed"; when: control.pressed
                PropertyChanges {
                    target: bg.border;
                    color: colorPressed
                }
            },
            State {
                name: "hovered"; when: control.hovered | control.selected
                PropertyChanges {
                    target: bg.border;
                    color: colorHovered
                }
            }
        ]
    }
}
