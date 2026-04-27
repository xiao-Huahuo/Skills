# Knowledge Base Workspace Design

**Date:** 2026-04-17
**Source:** `exca/Obsidian的页面.md`

## Goal

Create a single-file HTML demo that turns the Excalidraw wireframe into a knowledge base management workspace. The page should feel like an Obsidian-inspired desktop app for browsing folders, scanning knowledge cards, reading a document, and inspecting metadata.

## Layout

The layout follows the sketch exactly in broad structure:

- A narrow icon rail on the far left
- A file tree sidebar next to it
- A main content stage with active tabs, knowledge cards, and a large document content area
- A right-side inspector containing file type summary and document properties
- A bottom action strip aligned to the content area

## Visual Direction

Use a premium light editorial workspace rather than a generic SaaS dashboard:

- Warm paper-like canvas with deep ink typography
- Teal and amber accents for status, taxonomy, and actions
- Distinct display typography for headings and a readable UI font for dense content
- Subtle animation on load and hover, but no noisy effects

## Content Model

The demo represents a knowledge base manager for documents, notes, and policies:

- Left rail: global navigation
- File tree: nested folders and note counts
- Main cards: recently active note, collection summaries, and content thumbnails
- Document content: a selected knowledge article with sections, callouts, references, and checklist items
- Right panel: file type, metadata, linked items, and review state
- Bottom actions: share, export, pin, move, and automate

## Success Criteria

- Opens directly in the browser as a standalone HTML file
- Respects the sketch's layout order and panel relationships
- Looks intentional and polished rather than like a generic admin template
- Works at desktop width and reorganizes cleanly on narrow screens
