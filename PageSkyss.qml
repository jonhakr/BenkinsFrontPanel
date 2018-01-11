import QtQuick 2.9
import QtQuick.Controls 2.2
import QtWebEngine 1.0

Page {
    title: "Skyss"

    WebEngineView {
        anchors.fill: parent
        url: "https://avgangsvisning.skyss.no/board/#/?stops=12011493,12011492&viewFreq=10000&terminal=true&colors=dark&name=Wergeland"
    }

}
