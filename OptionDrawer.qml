import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

Drawer {
    modal: true

    ColumnLayout {
        id: optionLayout
        anchors.fill: parent
        spacing: 15

        property real buttonMargins: 5

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
            Layout.preferredWidth: optionLayout.width * 0.5
            Layout.preferredHeight: width
            Layout.alignment: Qt.AlignVCenter | Qt.AlignHCenter
            Layout.margins: optionLayout.buttonMargins
        }
    }
}
