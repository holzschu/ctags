/*
*   $Id$
*
*   Copyright (c) 2015, vim-jp
*
*   This source code is released for free distribution under the terms of the
*   GNU General Public License version 2 or (at your option) any later version.
*
*   This module contains functions for checking multibyte character set.
*/

/*
*   INCLUDE FILES
*/
#ifndef __USE_GNU
# define __USE_GNU
#endif
#include "general.h"  /* must always come first */

#ifdef HAVE_ICONV

#include <stdio.h>
#include <string.h>
#include <iconv.h>
#include <errno.h>
#include "options.h"
#include "mbcs.h"
#include "routines.h"

static iconv_t iconv_fd = (iconv_t) -1;
static bool warn = false;

extern bool openConverter (char* inputEncoding, char* outputEncoding)
{
	if (!inputEncoding || !outputEncoding)
	{
		/* --output-encoding is specified but not --input-encoding provided */
		if (!warn && outputEncoding)
		{
			// error (WARNING, "--input-encoding is not specified");
            fprintf (stderr, "%s: %s", getExecutableName (),  "Warning: ");
            fprintf (stderr, "--input-encoding is not specified");
            fputs ("\n", stderr);
            if (Option.fatalWarnings) {
                ctags_cleanup();
                exit (1);
            }
			warn = true;
		}
		return false;
	}
	iconv_fd = iconv_open(outputEncoding, inputEncoding);
	if (iconv_fd == (iconv_t) -1)
	{
		// error (FATAL,
		//			"failed opening encoding from '%s' to '%s'", inputEncoding, outputEncoding);
        fprintf (stderr, "%s: %s", getExecutableName (),  "");
        fprintf (stderr, "failed opening encoding from '%s' to '%s'", inputEncoding, outputEncoding);
        fputs ("\n", stderr);
        ctags_cleanup();
        exit (1);
		return false;
	}
	return true;
}

extern bool isConverting ()
{
	return iconv_fd != (iconv_t) -1;
}

extern bool convertString (vString *const string)
{
	size_t dest_len, src_len;
	char *dest, *dest_ptr, *src;
	if (iconv_fd == (iconv_t) -1)
		return false;
	src_len = vStringLength (string);
	/* Should be longest length of bytes. so maybe utf8. */
	dest_len = src_len * 4;
	dest_ptr = dest = xCalloc (dest_len, char);
	if (!dest)
		return false;
	src = vStringValue (string);
retry:
	if (iconv (iconv_fd, &src, &src_len, &dest_ptr, &dest_len) == (size_t) -1)
	{
		if (errno == EILSEQ)
		{
			*dest_ptr++ = '?';
			dest_len--;
			src++;
			src_len--;
			iOS_verbose ("  Encoding: %s\n", strerror(errno));
			goto retry;
		}
		eFree (dest);
		return false;
	}

	dest_len = dest_ptr - dest;

	vStringClear (string);
	if (vStringSize (string) < dest_len + 1)
		vStringResize (string, dest_len + 1);
	memcpy (vStringValue (string), dest, dest_len + 1);
	vStringLength (string) = dest_len;
	eFree (dest);

	iconv (iconv_fd, NULL, NULL, NULL, NULL);

	return true;
}

extern void closeConverter ()
{
	if (iconv_fd != (iconv_t) -1)
	{
		iconv_close(iconv_fd);
		iconv_fd = (iconv_t) -1;
	}
    warn = false;
}

#endif	/* HAVE_ICONV */
