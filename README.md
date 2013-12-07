octopress-extlink
=================

octopress-extlink provides "link" tag, used to add `target="_blank"` for external links.

# Installation

1. Copy `plugins/extlink.rb` to your `plugins` directory,

# Usage
Use tag `link` like

    {%link URL LINK %}

If `URL` starts with `http` like

    {%link http://example.com This is an external link. %}

the output becomes

    <a href="http://example.com" target="_blank">This is an external link</a>

Then, this link will be opend in new window.

If `URL` starts with `/` (i.e. your own site) like:

    {%link /mysite This is my site. %}

the output becomes

    <a href="/mysite">This is my site.</a>

so that it doesn't make new window.

You can add any attributes to `a` element by giving attributes before the URL (words starting with `http` or `/`), like

    {%link class="myclass" http://example.com link %}

The outputs becomes

    <a href="http://example.com" class="myclass" target="_blank">link</a>

Multiple attributes can be given.

If you give "target" attribute, it is used instead of above definition.

    {%link class="myclass" target="_self" http://example.com This is opend in the same window. %}

This tag will be:

    <a href="http://example.com" class="myclass" target="_self">This is opend in the same window.</a>

