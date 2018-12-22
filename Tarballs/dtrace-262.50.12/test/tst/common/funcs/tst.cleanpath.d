/*
 * CDDL HEADER START
 *
 * The contents of this file are subject to the terms of the
 * Common Development and Distribution License (the "License").
 * You may not use this file except in compliance with the License.
 *
 * You can obtain a copy of the license at usr/src/OPENSOLARIS.LICENSE
 * or http://www.opensolaris.org/os/licensing.
 * See the License for the specific language governing permissions
 * and limitations under the License.
 *
 * When distributing Covered Code, include this CDDL HEADER in each
 * file and include the License file at usr/src/OPENSOLARIS.LICENSE.
 * If applicable, add the following below this CDDL HEADER, with the
 * fields enclosed by brackets "[]" replaced with your own identifying
 * information: Portions Copyright [yyyy] [name of copyright owner]
 *
 * CDDL HEADER END
 */

/*
 * Copyright 2006 Sun Microsystems, Inc.  All rights reserved.
 * Use is subject to license terms.
 */

#pragma ident	"@(#)tst.cleanpath.d	1.1	06/08/28 SMI"

#pragma D option quiet

BEGIN
{
	path[i++] = "/foo/bar/baz";
	path[i++] = "/foo/bar///baz/";
	path[i++] = "/foo/bar/baz/";
	path[i++] = "/foo/bar/baz//";
	path[i++] = "/foo/bar/baz/.";
	path[i++] = "/foo/bar/baz/./";
	path[i++] = "/foo/bar/../../baz/.//";
	path[i++] = "foo/bar/./././././baz/";
	path[i++] = "/foo/bar/baz/../../../../../../";
	path[i++] = "/../../../../../../";
	path[i++] = "/./";
	path[i++] = "/foo/bar/baz/../../bop/bang/../../bar/baz/";
	path[i++] = "./";
	path[i++] = "//";
	path[i++] = "/.";
	path[i++] = "/./";
	path[i++] = "/./.";
	path[i++] = "/.//";
	path[i++] = ".";
	path[i++] = "/////";
	path[i++] = "";

	end = i;
	i = 0;
}

/* Avoid race to collect buffers on SMP. */
tick-1ms
{
	printf("cleanpath(\"%s\") = \"%s\"\n", path[i], cleanpath(path[i]));
	i++;
	printf("cleanpath(\"%s\") = \"%s\"\n", path[i], cleanpath(path[i]));
	i++;
	printf("cleanpath(\"%s\") = \"%s\"\n", path[i], cleanpath(path[i]));
	i++;
	printf("cleanpath(\"%s\") = \"%s\"\n", path[i], cleanpath(path[i]));
	i++;
	printf("cleanpath(\"%s\") = \"%s\"\n", path[i], cleanpath(path[i]));
	i++;
	printf("cleanpath(\"%s\") = \"%s\"\n", path[i], cleanpath(path[i]));
	i++;
	printf("cleanpath(\"%s\") = \"%s\"\n", path[i], cleanpath(path[i]));
	i++;
	printf("cleanpath(\"%s\") = \"%s\"\n", path[i], cleanpath(path[i]));
	i++;
	printf("cleanpath(\"%s\") = \"%s\"\n", path[i], cleanpath(path[i]));
	i++;
	printf("cleanpath(\"%s\") = \"%s\"\n", path[i], cleanpath(path[i]));
	i++;
	printf("cleanpath(\"%s\") = \"%s\"\n", path[i], cleanpath(path[i]));
	i++;
	printf("cleanpath(\"%s\") = \"%s\"\n", path[i], cleanpath(path[i]));
	i++;
	printf("cleanpath(\"%s\") = \"%s\"\n", path[i], cleanpath(path[i]));
	i++;
	printf("cleanpath(\"%s\") = \"%s\"\n", path[i], cleanpath(path[i]));
	i++;
	printf("cleanpath(\"%s\") = \"%s\"\n", path[i], cleanpath(path[i]));
	i++;
	printf("cleanpath(\"%s\") = \"%s\"\n", path[i], cleanpath(path[i]));
	i++;
	printf("cleanpath(\"%s\") = \"%s\"\n", path[i], cleanpath(path[i]));
	i++;
	printf("cleanpath(\"%s\") = \"%s\"\n", path[i], cleanpath(path[i]));
	i++;
	printf("cleanpath(\"%s\") = \"%s\"\n", path[i], cleanpath(path[i]));
	i++;
	printf("cleanpath(\"%s\") = \"%s\"\n", path[i], cleanpath(path[i]));
	i++;
	printf("cleanpath(\"%s\") = \"%s\"\n", path[i], cleanpath(path[i]));
	i++;
	exit(0);
}