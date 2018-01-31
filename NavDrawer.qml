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

        /* Customized controls used in item views have to be wrapped in
         * Loader to prevent known bug:
         * https://bugreports.qt.io/browse/QTBUG-50992 */
        Loader {
            property int index: 0
            sourceComponent: ImageButton {
                id: buttonSkyss
                source: "qrc:/files/icons/skyss.png"
                rounded: true
                borderRadius: width * 0.18
                selected: navIndex == index
                onClicked: {
                    changeIndex(index)
                }
            }
            Layout.fillWidth: true
            Layout.preferredHeight: width
            Layout.alignment: Qt.AlignVCenter
            Layout.margins: buttonLayout.buttonMargins
        }

        Loader {
            property int index: 1
            sourceComponent: ImageButton {
                id: buttonYr
                source: "qrc:/files/icons/yr.png"
                rounded: true
                selected: navIndex == index
                onClicked: {
                    changeIndex(index)
                    pageYr.reloadPage()
                }
            }
            Layout.fillWidth: true
            Layout.preferredHeight: width
            Layout.alignment: Qt.AlignVCenter
            Layout.margins: buttonLayout.buttonMargins
        }

        Loader {
            property int index: 2
            sourceComponent: ImageButton {
                id: buttonTrello
                source: "qrc:/files/icons/trello.png"
                rounded: true
                borderRadius: width * 0.1
                selected: navIndex == index
                onClicked: {
                    changeIndex(index)
                }
            }
            Layout.fillWidth: true
            Layout.preferredHeight: width
            Layout.alignment: Qt.AlignVCenter
            Layout.margins: buttonLayout.buttonMargins
        }

        Loader {
            property int index: 3
            sourceComponent: ImageButton {
                id: buttonNrk
                source: "qrc:/files/icons/nrk.png"
                rounded: true
                selected: navIndex == index
                onClicked: {
                    changeIndex(index)
                }
            }
            Layout.fillWidth: true
            Layout.preferredHeight: width
            Layout.alignment: Qt.AlignVCenter
            Layout.margins: buttonLayout.buttonMargins
        }
    }
}
