import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

Drawer {
    modal: true

    Column {
        id: optionColumn
        anchors.fill: parent
        spacing: 15
        padding: 15

        ImageButton {
            id: buttonClose
            width: parent.width * 0.75
            height: width
            anchors.horizontalCenter: parent.horizontalCenter

            source: "qrc:/files/icons/close.png"
            rounded: true
            onClicked: {
                Qt.quit()
            }
        }

        ImageButton {
            id: buttonReload
            width: parent.width * 0.8 // somewhat larger scale because of empty border in current icon...
            height: width
            anchors.horizontalCenter: parent.horizontalCenter

            source: "qrc:/files/icons/reload.png"
            rounded: true
            onClicked: {
                if (typeof swipeView.currentItem.reloadPage !== "undefined") {
                    swipeView.currentItem.reloadPage()
                }
            }
        }
    }
}
