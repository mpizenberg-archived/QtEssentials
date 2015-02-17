#include "timer.h"

#include <QGuiApplication>
#include <QQuickView>
#include <qqml.h> // for qmlRegisterType

int main(int argc, char *argv[])
{
    QGuiApplication app( argc, argv );

    // Expose the Timer class
    qmlRegisterType<Timer>( "CustomComponents", 1, 0, "Timer" );

    QQuickView viewer;
    viewer.setSource( QUrl( "qrc:///main.qml" ) );
    viewer.show();

    return app.exec();
}
