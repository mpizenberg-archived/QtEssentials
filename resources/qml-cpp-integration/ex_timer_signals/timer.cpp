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
    m_timer->stop();
    m_timer->setInterval( msec );
    m_timer->start();
    emit intervalChanged();
    qDebug() << Q_FUNC_INFO << "interval =" << m_timer->interval();
}

int Timer::interval()
{
    return m_timer->interval();
}
