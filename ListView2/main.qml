import QtQuick 2.9
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.3

ApplicationWindow {
    id: mainWindow
    visible: true
    width: 640
    height: 480
    title: qsTr("List View")

    Component.onCompleted: {
        for ( var ix = 0 ; ix < 10; ix++){
            myList.model.append( { valorText: 'Número ' + ix } );
        }
    }

    Component {
        id: componet
        Item {
            width: 180; height: 40
            Row {
                Text { text: "Valor: " }
                Text { text: valorText }
            }
        }
    }

    ColumnLayout {
        anchors.fill: parent
        spacing: 5
        Repeater {
            anchors.fill: parent
            id: myList
            model: ListModel {}
            delegate: componet
        }
    }
}
