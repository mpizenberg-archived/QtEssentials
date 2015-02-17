#include "timer.h"
#include "IntervalSettings.h"

#include <QDateTime>
#include <QGuiApplication>
#include <QQuickView>
#include <qqml.h> // for qmlRegisterType

int main(int argc, char *argv[])
{
    QGuiApplication app( argc, argv );

    qsrand( QDateTime::currentMSecsSinceEpoch() );

    // Expose the Timer class
    qmlRegisterType<Timer>( "CustomComponents", 1, 0, "Timer" );
    qmlRegisterType<IntervalSettings>( "CustomComponents", 1, 0, "IntervalSettings");

    QQuickView viewer;
    viewer.setSource( QUrl( "qrc:///main.qml" ) );
    viewer.show();

    return app.exec();
}
