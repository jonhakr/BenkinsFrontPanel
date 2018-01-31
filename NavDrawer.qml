import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

Drawer {
    modal: false
    interactive: false
    visible: true
    position: 1.0

    property int navIndex: 0

    function changeIndex(newIndex) {
        navIndex = newIndex
    }

    ColumnLayout {
        id: buttonLayout
        anchors.fill: parent
        spacing: 15

        property real buttonMargins: 5

        NavButton {
            index: 0
            source: "qrc:/files/icons/skyss.png"
            rounded: true
            borderRadius: width * 0.18
        }

        NavButton {
            index: 1
            source: "qrc:/files/icons/yr.png"
            rounded: true
        }

        NavButton {
            index: 2
            source: "qrc:/files/icons/trello.png"
            rounded: true
            borderRadius: width * 0.1
        }

        NavButton {
            index: 3
            source: "qrc:/files/icons/nrk.png"
            rounded: true
        }
    }
}
