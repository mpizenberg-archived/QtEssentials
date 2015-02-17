#include "timer.h"

#include <QDebug>
#include <QTimer>

Timer::Timer( QObject* parent )
    : QObject( parent ),
      m_timer( new QTimer( this ) )
{
    connect( m_timer, SIGNAL( timeout() ), this, SIGNAL( timeout() ) );
}

void Timer::setInterval( int msec )
{
    if ( m_timer->interval() == msec )
        return;
    m_timer->setInterval( msec );
    emit intervalChanged();
}

int Timer::interval()
{
    return m_timer->interval();
}

bool Timer::isActive()
{
    return m_timer->isActive();
}

void Timer::start()
{
    if ( m_timer->isActive() )
        return;
    m_timer->start();
    emit activeChanged();
}

void Timer::stop()
{
    if ( !m_timer->isActive() )
        return;
    m_timer->stop();
    emit activeChanged();
}
