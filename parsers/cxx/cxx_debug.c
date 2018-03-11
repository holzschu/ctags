/*
*   Copyright (c) 2016, Szymon Tomasz Stefanek
*
*   This source code is released for free distribution under the terms of the
*   GNU General Public License version 2 or (at your option) any later version.
*
*   This module contains functions for parsing and scanning C++ source files
*/

#include "cxx_debug.h"

#ifdef CXX_DO_DEBUGGING

#include "trashbox.h"
#include "cxx_parser_internal.h"
#include "cxx_scope.h"

static void cxxDebugDumpToken0 (CXXToken *pToken,
								struct circularRefChecker *pTokenChecker,
								struct circularRefChecker *pChainChecker,
								bool top_level);

static void cxxDebugDumpChain0 (CXXTokenChain *pChain,
								struct circularRefChecker *pTokenChecker,
								struct circularRefChecker *pChainChecker,
								bool top_level)
{
	int backref;

	if (top_level)
	{
		debugIndent ();
		fprintf (thread_stderr, "<chain ");
	}
	else if (pChain == NULL)
	{
		fprintf (thread_stderr, "NULL\n");
		return;
	}
	else
	{
		fprintf (thread_stderr, "<");
	}

	backref = circularRefCheckerCheck (pChainChecker, pChain);
	if (backref)
	{
		fprintf (thread_stderr, "*C#%d>\n", backref);
		return;
	}

	backref = circularRefCheckerGetCurrent (pChainChecker);

	fprintf (thread_stderr, "[%d %p&C#%d]\n", pChain->iCount, pChain, backref);

	debugInc();
	debugIndent ();
	cxxDebugDumpToken0 (pChain->pHead, pTokenChecker, pChainChecker, false);
	debugDec();

	debugIndent ();
	fprintf (thread_stderr, ">\n");
}

static void cxxDebugDumpToken0 (CXXToken *pToken,
								struct circularRefChecker *pTokenChecker,
								struct circularRefChecker *pChainChecker,
								bool top_level)
{
	int backref;

	if (top_level)
	{
		debugIndent ();
		fprintf (thread_stderr, "<token ");
	}
	else if (pToken == NULL)
	{
		fprintf (thread_stderr, "NULL\n");
		return;
	}
	else
	{
		fprintf (thread_stderr, "<");
	}

	backref = circularRefCheckerCheck (pTokenChecker, pToken);
	if (backref)
	{
		fprintf (thread_stderr, "*T#%d>\n", backref);
		return;
	}

	backref = circularRefCheckerGetCurrent (pTokenChecker);

	fprintf (thread_stderr, "\"%s\": [%s %p &T#%d]\n",
			 vStringValue (pToken->pszWord),
			 cxxDebugTypeDecode (pToken->eType), pToken, backref);

	debugIndent ();
	fprintf (thread_stderr, "  chain: ");
	debugInc();
	cxxDebugDumpChain0 (pToken->pChain, pTokenChecker, pTokenChecker, false);
	debugDec();

	debugIndent ();
	fprintf (thread_stderr, "  next: ");
	debugInc();
	cxxDebugDumpToken0 (pToken->pNext, pTokenChecker, pTokenChecker, false);
	debugDec();

	debugIndent ();
	fprintf (thread_stderr, "  prev: ");
	debugInc();
	cxxDebugDumpToken0 (pToken->pPrev, pTokenChecker, pTokenChecker, false);
	debugDec();

	debugIndent ();
	fprintf (thread_stderr, ">\n");
}

typedef void (* cxxDebugDumpCommonFunc)(void *,
										struct circularRefChecker *,
										struct circularRefChecker *,
										bool);
void cxxDebugDumpCommon (void *data,
						 void (* func)(void *,
									   struct circularRefChecker *,
									   struct circularRefChecker *,
									   bool))
{
	static struct circularRefChecker *pTokenChecker;
	static struct circularRefChecker *pChainChecker;

	if (!pTokenChecker)
	{
		pTokenChecker = circularRefCheckerNew();
		DEFAULT_TRASH_BOX(pTokenChecker, (TrashBoxDestroyItemProc)circularRefCheckerDestroy);
	}

	if (!pChainChecker)
	{
		pChainChecker = circularRefCheckerNew();
		DEFAULT_TRASH_BOX(pChainChecker, (TrashBoxDestroyItemProc)circularRefCheckerDestroy);
	}

	func(data, pTokenChecker, pChainChecker, true);

	circularRefCheckClear (pTokenChecker);
	circularRefCheckClear (pChainChecker);
}

void cxxDebugDumpToken (CXXToken *pToken)
{
	cxxDebugDumpCommon (pToken, (cxxDebugDumpCommonFunc)cxxDebugDumpToken0);
}

void cxxDebugDumpChain (CXXTokenChain *pChain)
{
	cxxDebugDumpCommon (pChain, (cxxDebugDumpCommonFunc)cxxDebugDumpChain0);
}

const char* cxxDebugScopeDecode(enum CXXScopeType scope)
{
	const char * table[] = {
		[CXXScopeTypeFunction]  = "function",
		[CXXScopeTypeNamespace] = "namespace",
		[CXXScopeTypeClass] = "class",
		[CXXScopeTypeEnum] = "enum",
		[CXXScopeTypeUnion] = "union",
		[CXXScopeTypeStruct] = "structg",
	};
	if (sizeof(table) > scope)
		return table[scope];
	else
		return NULL;
}

#endif
