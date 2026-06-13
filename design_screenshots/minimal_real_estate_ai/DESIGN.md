---
name: Minimal Real Estate AI
colors:
  surface: '#f9f9ff'
  surface-dim: '#d3daea'
  surface-bright: '#f9f9ff'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#f0f3ff'
  surface-container: '#e7eefe'
  surface-container-high: '#e2e8f8'
  surface-container-highest: '#dce2f3'
  on-surface: '#151c27'
  on-surface-variant: '#3f4949'
  inverse-surface: '#2a313d'
  inverse-on-surface: '#ebf1ff'
  outline: '#6f7979'
  outline-variant: '#bec8c9'
  surface-tint: '#0c696d'
  primary: '#0c696d'
  on-primary: '#ffffff'
  primary-container: '#5da9ad'
  on-primary-container: '#003b3e'
  inverse-primary: '#87d3d7'
  secondary: '#576060'
  on-secondary: '#ffffff'
  secondary-container: '#d8e1e0'
  on-secondary-container: '#5b6464'
  tertiary: '#645e4b'
  on-tertiary: '#ffffff'
  tertiary-container: '#a59d87'
  on-tertiary-container: '#3a3523'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#a3eff3'
  primary-fixed-dim: '#87d3d7'
  on-primary-fixed: '#002021'
  on-primary-fixed-variant: '#004f52'
  secondary-fixed: '#dbe4e3'
  secondary-fixed-dim: '#bfc8c7'
  on-secondary-fixed: '#151d1d'
  on-secondary-fixed-variant: '#404848'
  tertiary-fixed: '#ece2c9'
  tertiary-fixed-dim: '#cfc6ae'
  on-tertiary-fixed: '#201b0c'
  on-tertiary-fixed-variant: '#4c4634'
  background: '#f9f9ff'
  on-background: '#151c27'
  surface-variant: '#dce2f3'
typography:
  h1:
    fontFamily: Plus Jakarta Sans
    fontSize: 40px
    fontWeight: '700'
    lineHeight: '1.2'
    letterSpacing: -0.02em
  h2:
    fontFamily: Plus Jakarta Sans
    fontSize: 32px
    fontWeight: '600'
    lineHeight: '1.3'
    letterSpacing: -0.01em
  h3:
    fontFamily: Plus Jakarta Sans
    fontSize: 24px
    fontWeight: '600'
    lineHeight: '1.4'
  body-lg:
    fontFamily: Inter
    fontSize: 18px
    fontWeight: '400'
    lineHeight: '1.6'
  body-md:
    fontFamily: Inter
    fontSize: 16px
    fontWeight: '400'
    lineHeight: '1.5'
  label-sm:
    fontFamily: Inter
    fontSize: 13px
    fontWeight: '600'
    lineHeight: '1'
    letterSpacing: 0.02em
rounded:
  sm: 0.25rem
  DEFAULT: 0.5rem
  md: 0.75rem
  lg: 1rem
  xl: 1.5rem
  full: 9999px
spacing:
  base: 8px
  xs: 4px
  sm: 12px
  md: 24px
  lg: 48px
  xl: 80px
  gutter: 24px
  margin: 32px
---

## Brand & Style

This design system is built on the philosophy of **Empathetic Automation**. In the high-stakes world of real estate, technology should feel like an extension of human service rather than a replacement for it. The visual language balances professional reliability with a soft, approachable aesthetic to reduce the friction of managing AI agents.

The style draws heavily from **Soft Minimalism**. It rejects the cold, sterile nature of traditional enterprise software in favor of "huggable" interfaces—utilizing generous whitespace, muted pastel palettes, and organic shapes. The goal is to create a workspace that feels calm, organized, and inherently trustworthy for both agents and their clients.

## Colors

The palette is anchored by a **Muted Teal** primary color, chosen for its psychological association with stability and clarity. This is supported by a series of warm neutrals and off-whites that prevent the interface from feeling "stark."

- **Primary:** A soft, desaturated teal used for active states, primary actions, and brand identification.
- **Surface & Background:** We utilize an off-white background to reduce eye strain, with pure white surfaces to create subtle "lift" for cards and containers.
- **Accents:** Secondary pastels are used sparingly for categorization (e.g., property types, lead status) to maintain a clean, uncluttered visual hierarchy.

## Typography

This design system uses a dual-font approach to balance personality with utility. **Plus Jakarta Sans** is used for headings to introduce a friendly, modern geometric touch that mirrors the rounded UI elements. **Inter** is reserved for body copy and data-heavy interfaces to ensure maximum legibility and a professional, functional feel.

Line heights are intentionally generous to improve readability in conversational interfaces, such as AI chat logs and property descriptions.

## Layout & Spacing

The layout follows a **Fixed-Fluid hybrid grid**. While the main navigation and sidebar remain fixed, the content area utilizes a 12-column fluid grid. To maintain the "minimal" feel, the system uses a generous 8px base unit.

Margins and gutters are kept wide (min 24px) to create an airy, premium feel. This "breathing room" is essential for a management platform, as it prevents the user from feeling overwhelmed by lead data or AI configurations. Elements should be grouped using proximity rather than heavy lines.

## Elevation & Depth

Depth in this design system is created through **Tonal Layering** and **Soft Ambient Shadows**. We avoid high-contrast shadows or heavy borders.

1.  **Level 0 (Background):** The base layer using the off-white background color.
2.  **Level 1 (Cards/Surface):** Pure white surfaces with a very soft, high-diffusion shadow (Opacity: 4%, Blur: 20px).
3.  **Level 2 (Modals/Popovers):** Slightly more pronounced shadows (Opacity: 8%, Blur: 40px) to indicate high priority.

Transitions between layers should feel fluid. Use "ghost" borders (1px width with 5% opacity of the primary color) to define boundaries without introducing visual noise.

## Shapes

The shape language is defined by **large radii** to evoke a sense of safety and friendliness. 

- **Buttons & Inputs:** Use the base `rounded` (0.5rem) for a standard soft look.
- **Cards & Containers:** Use `rounded-xl` (1.5rem) to create the signature "soft container" look characteristic of this design system.
- **Status Chips:** Should be fully pill-shaped to distinguish them from actionable buttons.

## Components

### Buttons
Primary buttons use the soft teal background with white text. Secondary buttons use a tonal approach (light teal background with dark teal text) rather than a traditional outline. This maintains the "soft" aesthetic.

### AI Conversation Bubbles
Messages from the AI agent should feature a subtle gradient background or a distinct pastel tint (e.g., the secondary mint color) and a larger corner radius on three sides to mimic traditional speech bubbles while remaining professional.

### Property Cards
These are the centerpiece of the system. They should feature edge-to-edge imagery at the top with a `1.5rem` corner radius on the container. Content inside the card should use the `body-md` typography for descriptions and `label-sm` for meta-data (e.g., SQFT, Price).

### Inputs & Search
Search bars and text fields should have a light gray background (`#F3F4F6`) that shifts to the primary teal border color on focus. The focus ring should be soft and diffused, not sharp.

### Status Chips
Use "Low Contrast" chips. For example, a "Pending" status would have a light peach background with a darker orange-brown text. This provides clarity without the "stop-and-go" harshness of standard red/green alerts.