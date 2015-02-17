#include <QGuiApplication>
#include <QQuickView>
#include <qqml.h> // for qmlRegisterType

#include "ellipseitem.h"
#include "handitem.h"
#include "intervalsettings.h"
#include "timer.h"

int main( int argc, char *argv[] )
{
    QGuiApplication app( argc, argv );

    // UI components
    qmlRegisterType<EllipseItem>( "ClockComponents", 1, 0, "Ellipse" );
    qmlRegisterType<HandItem>( "ClockComponents", 1, 0, "ClockHand" );

    // non-UI components
    qmlRegisterType<Timer>( "ClockComponents", 1, 0, "Timer" );
    qmlRegisterType<IntervalSettings>( "ClockComponents", 1, 0, "IntervalSettings" );

    QQuickView viewer;
    viewer.setSource( QUrl( "qrc:///main.qml" ) );
    viewer.show();

    return app.exec();
}
