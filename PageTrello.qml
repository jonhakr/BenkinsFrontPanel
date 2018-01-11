import QtQuick 2.9
import QtQuick.Controls 2.2
import QtWebEngine 1.0

Page {
    title: "Handleliste"

    WebEngineView {
        anchors.fill: parent
        url: "https://trello.com/b/FYw2hMrL/handleliste.html"
        focus: false
    }

}
