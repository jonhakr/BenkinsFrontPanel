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

        Loader {
            /* Customized controls used in item views have to be wrapped in
                 * Loader to prevent known bug:
                 * https://bugreports.qt.io/browse/QTBUG-50992 */
            sourceComponent: ImageButton {
                id: buttonClose
                source: "qrc:/files/icons/close.png"
                rounded: true
                onClicked: {
                    Qt.quit()
                }
            }
            width: optionColumn.width * 0.5
            height: width
            anchors.horizontalCenter: optionColumn.horizontalCenter
        }
    }
}