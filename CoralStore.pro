QT += qml quick

!osx:qtHaveModule(webengine) {
        QT += webengine
        DEFINES += QT_WEBVIEW_WEBENGINE_BACKEND
}

SOURCES += main.cpp

RESOURCES += qml.qrc
