#include "timer.h"

#include <QTimer>

Timer::Timer( QObject* parent )
    : QObject( parent ),
      m_timer( new QTimer( this ) )
{
    m_timer->setInterval( 1000 );
    m_timer->start();
}
