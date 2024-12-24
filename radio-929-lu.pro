QT += \
    quick \
    quickcontrols2

QTPLUGIN *= qtaudio_coreaudio
QTPLUGIN *= qtmedia_audioengine
QTPLUGIN *= qavfcamera
QTPLUGIN *= qavfmediaplayer

CONFIG += c++17

RESOURCES += \
    qml/qml.qrc

SOURCES += \
    src/main.cpp
