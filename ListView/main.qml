import QtQuick 2.9
import QtQuick.Controls 2.1

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("List View")

    Component.onCompleted: {
        for (var ix = 0; ix < 10; ix++) {
            myListView.model.append({valorText:'Numero'  + ix});
        }
    }

    ListView {
        anchors.fill: parent
        id: myListView
        model: ListModel{}
        //spacing: 5
        delegate: Text {
            //anchors.fill: parent
            text: valorText
        }
    }
}
