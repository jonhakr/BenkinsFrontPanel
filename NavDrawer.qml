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

        Loader {
            /* Customized controls used in item views have to be wrapped in
                 * Loader to prevent known bug:
                 * https://bugreports.qt.io/browse/QTBUG-50992 */
            sourceComponent: ImageButton {
                id: buttonSkyss
                source: "qrc:/files/icons/skyss.png"
                rounded: true
                borderRadius: width * 0.18
                selected: navIndex == 0
                onClicked: {
                    changeIndex(0)
                }
            }
            Layout.fillWidth: true
            Layout.preferredHeight: width
            Layout.alignment: Qt.AlignVCenter
            Layout.margins: buttonLayout.buttonMargins
        }

        Loader {
            /* Customized controls used in item views have to be wrapped in
                 * Loader to prevent known bug:
                 * https://bugreports.qt.io/browse/QTBUG-50992 */
            sourceComponent: ImageButton {
                id: buttonYr
                source: "qrc:/files/icons/yr.png"
                rounded: true
                selected: navIndex == 1
                onClicked: {
                    changeIndex(1)
                    pageYr.reloadPage()
                }
            }
            Layout.fillWidth: true
            Layout.preferredHeight: width
            Layout.alignment: Qt.AlignVCenter
            Layout.margins: buttonLayout.buttonMargins
        }

        Loader {
            /* Customized controls used in item views have to be wrapped in
                 * Loader to prevent known bug:
                 * https://bugreports.qt.io/browse/QTBUG-50992 */
            sourceComponent: ImageButton {
                id: buttonTrello
                source: "qrc:/files/icons/trello.png"
                rounded: true
                borderRadius: width * 0.18
                selected: navIndex == 2
                onClicked: {
                    changeIndex(2)
                }
            }
            Layout.fillWidth: true
            Layout.preferredHeight: width
            Layout.alignment: Qt.AlignVCenter
            Layout.margins: buttonLayout.buttonMargins
        }
    }
}
