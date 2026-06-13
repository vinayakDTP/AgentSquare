---
name: AgentSquare AI
colors:
  surface: '#f8f9ff'
  surface-dim: '#cbdbf5'
  surface-bright: '#f8f9ff'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#eff4ff'
  surface-container: '#e5eeff'
  surface-container-high: '#dce9ff'
  surface-container-highest: '#d3e4fe'
  on-surface: '#0b1c30'
  on-surface-variant: '#3f4949'
  inverse-surface: '#213145'
  inverse-on-surface: '#eaf1ff'
  outline: '#6f7979'
  outline-variant: '#bec8c9'
  surface-tint: '#0c696d'
  primary: '#004f53'
  on-primary: '#ffffff'
  primary-container: '#0c696d'
  on-primary-container: '#9ae6ea'
  inverse-primary: '#87d3d7'
  secondary: '#516161'
  on-secondary: '#ffffff'
  secondary-container: '#d4e6e5'
  on-secondary-container: '#576867'
  tertiary: '#7f2a0d'
  on-tertiary: '#ffffff'
  tertiary-container: '#9f4122'
  on-tertiary-container: '#ffcebf'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#a3eff4'
  primary-fixed-dim: '#87d3d7'
  on-primary-fixed: '#002021'
  on-primary-fixed-variant: '#004f52'
  secondary-fixed: '#d4e6e5'
  secondary-fixed-dim: '#b8cac9'
  on-secondary-fixed: '#0e1e1e'
  on-secondary-fixed-variant: '#3a4a49'
  tertiary-fixed: '#ffdbd0'
  tertiary-fixed-dim: '#ffb59e'
  on-tertiary-fixed: '#3a0b00'
  on-tertiary-fixed-variant: '#7f2a0d'
  background: '#f8f9ff'
  on-background: '#0b1c30'
  surface-variant: '#d3e4fe'
typography:
  display-lg:
    fontFamily: Plus Jakarta Sans
    fontSize: 48px
    fontWeight: '700'
    lineHeight: 56px
    letterSpacing: -0.02em
  headline-lg:
    fontFamily: Plus Jakarta Sans
    fontSize: 32px
    fontWeight: '700'
    lineHeight: 40px
    letterSpacing: -0.01em
  headline-lg-mobile:
    fontFamily: Plus Jakarta Sans
    fontSize: 28px
    fontWeight: '700'
    lineHeight: 36px
  headline-md:
    fontFamily: Plus Jakarta Sans
    fontSize: 24px
    fontWeight: '600'
    lineHeight: 32px
  body-lg:
    fontFamily: Inter
    fontSize: 18px
    fontWeight: '400'
    lineHeight: 28px
  body-md:
    fontFamily: Inter
    fontSize: 16px
    fontWeight: '400'
    lineHeight: 24px
  body-sm:
    fontFamily: Inter
    fontSize: 14px
    fontWeight: '400'
    lineHeight: 20px
  label-md:
    fontFamily: Inter
    fontSize: 14px
    fontWeight: '600'
    lineHeight: 16px
    letterSpacing: 0.01em
  label-sm:
    fontFamily: Inter
    fontSize: 12px
    fontWeight: '500'
    lineHeight: 16px
rounded:
  sm: 0.5rem
  DEFAULT: 1rem
  md: 1.5rem
  lg: 2rem
  xl: 3rem
  full: 9999px
spacing:
  base: 8px
  xs: 4px
  sm: 12px
  md: 24px
  lg: 48px
  xl: 80px
  gutter: 24px
  margin-mobile: 16px
  margin-desktop: 64px
---

## Brand & Style
The design system for this platform focuses on clarity, efficiency, and a calm professional intelligence. The target audience includes real estate professionals and property seekers who require complex data delivered through a conversational, human-centric interface.

The visual style is **Corporate Modern** with a lean toward **Minimalism**. It prioritizes high legibility and a generous sense of space to reduce the cognitive load of real estate transactions. The UI should evoke a sense of "quiet capability"—it is precise and data-driven yet remains warm and approachable through soft geometry and a refined color palette.

## Colors
The palette is anchored by a deep **Primary Teal**, chosen for its associations with stability, growth, and professional trust. This is supported by a very light secondary teal for tonal backgrounds and highlights.

- **Primary:** Used for main actions, brand identifiers, and active states.
- **Secondary:** Used for subtle backgrounds, hover states on large surfaces, and accents.
- **Tertiary:** A soft coral used sparingly for notification pips or high-priority attention items.
- **Neutral:** A range of slate grays for body text and iconographic details.
- **Background:** A cool-toned white-lilac ensures the white cards pop with subtle contrast.

## Typography
The typographic hierarchy leverages **Plus Jakarta Sans** for headlines to provide a friendly, modern, and slightly rounded character. **Inter** is used for all functional text to ensure maximum legibility at smaller sizes and within data-heavy tables.

Headlines should use tighter letter spacing and bold weights to command attention, while body text maintains a generous line height to support long-form reading and conversational AI outputs.

## Layout & Spacing
This design system utilizes a **Fixed Grid** model for desktop to maintain a professional, editorial feel, while transitioning to a **Fluid Grid** for mobile.

- **Desktop (1440px):** 12-column grid, 1120px max-width, 24px gutters.
- **Tablet (768px):** 8-column grid, fluid width, 24px margins.
- **Mobile (375px):** 4-column grid, fluid width, 16px margins.

Spacing follows a strict 8px linear scale. Use `lg` and `xl` spacing primarily for vertical section separation to emphasize the minimalist aesthetic and give the AI-generated content room to breathe.

## Elevation & Depth
Depth is achieved through **Tonal Layers** and extremely soft **Ambient Shadows**. 

The main background is `#F9F9FF`, while all interactive modules and content containers sit on a white `#FFFFFF` surface. Elevation is suggested by a single, highly diffused shadow style (0px 4px 20px rgba(12, 105, 109, 0.05)) which uses a slight tint of the primary teal to keep the shadow feeling integrated and clean rather than muddy. 

Borders are used sparingly and should be low-contrast (1px solid #E2E8F0) to define boundaries without adding visual noise.

## Shapes
The shape language is defined by a significant **Pill-shaped** and rounded philosophy. This choice softens the "corporate" edge of the real estate industry, making the AI feel like a helpful assistant rather than a rigid tool.

Containers and large cards must use the `rounded-xl` (1.5rem) token. Buttons and input fields should follow suit with highly rounded corners (min 1rem) to maintain consistency with the large radius of the cards.

## Components

### Buttons
Primary buttons use a solid Teal fill with white text. They should have a minimum height of 48px to feel "tactile" and accessible. Secondary buttons use the Teal color for text and a light Teal (`#E0F2F1`) for the background.

### Cards
Cards are the primary container for information. They feature a white background, 1.5rem corner radius, and the signature ambient teal shadow. Padding within cards should be a minimum of `md` (24px).

### Input Fields
Inputs should be large and clear, with a 1px neutral-gray border that transforms to a 2px Teal border on focus. Labels sit outside the field in the `label-md` style.

### Conversational UI
AI chat bubbles for the user should be Teal with white text, while AI responses should sit on a subtle gray or secondary teal background. All bubbles follow the `rounded-xl` radius, though the corner closest to the sender's avatar can be sharpened (4px) to indicate directionality.

### Chips & Badges
Use for property status (e.g., "Available", "Pending"). These should be fully pill-shaped with `label-sm` text, using low-saturation versions of the status colors (green, amber, red).