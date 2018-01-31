import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3

ImageButton {
    property int index: 0

    Layout.fillWidth: true
    Layout.preferredHeight: width
    Layout.alignment: Qt.AlignVCenter
    Layout.margins: parent.buttonMargins

    selected: navIndex == index
    onClicked: {
        changeIndex(index)
    }
}
