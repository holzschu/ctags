/*
*   Copyright (c) 2016, Szymon Tomasz Stefanek
*
*   This source code is released for free distribution under the terms of the
*   GNU General Public License version 2 or (at your option) any later version.
*
*   Tracing facility.
*/

#include "trace.h"

#ifdef DO_TRACING

#include "read.h"

#include <stdio.h>
#include <stdarg.h>

void traceEnter(const char * szFunction,const char * szFormat,...)
{
	debugIndent ();

	fprintf(thread_stderr,"[>> %s][at %lu] ",szFunction,getInputLineNumber());

	va_list va;
	va_start(va,szFormat);
	vfprintf(thread_stderr,szFormat,va);
	va_end(va);

	fprintf(thread_stderr,"\n");

	debugInc();
}

void traceLeave(const char * szFunction,const char * szFormat,...)
{
	debugDec();
	debugIndent ();

	fprintf(thread_stderr,"[<< %s][at %lu] ",szFunction,getInputLineNumber());

	va_list va;
	va_start(va,szFormat);
	vfprintf(thread_stderr,szFormat,va);
	va_end(va);

	fprintf(thread_stderr,"\n");
}

void tracePrint(const char * szFunction,const char * szFormat,...)
{
	debugIndent();

	fprintf(thread_stderr,"[%s][at %lu] ",szFunction,getInputLineNumber());

	va_list va;
	va_start(va,szFormat);
	vfprintf(thread_stderr,szFormat,va);
	va_end(va);

	fprintf(thread_stderr,"\n");
}

#endif // DO_TRACING
