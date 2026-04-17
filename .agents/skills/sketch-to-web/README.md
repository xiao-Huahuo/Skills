# Sketch to Web

Transform any sketch, screenshot, or wireframe into a beautifully styled, animated, and fully functional HTML webpage.

## Introduction

Sketch to Web is a creative frontend design skill focused on converting rough hand-drawn sketches, interface screenshots, or wireframes into stunning, real-world web pages.

**Core Philosophy**: Stay faithful to the sketch's layout and functional intent while injecting truly designed visual aesthetics and delightful interactive details.

## Design Style Arsenal

This skill provides 5 distinct design archetypes to match your content:

### 1. Modern Tech / SaaS (Brainwave-Inspired)
Dark mode with OLED blacks, glowing mesh gradients, purple/violet accents, glassmorphism effects

### 2. Premium Minimalist / Editorial  
Warm monochrome palette, sophisticated whitespace, document-like precision, crisp 1px borders

### 3. Industrial Brutalist / Tactical
Raw mechanical precision, CRT scanlines, visible grid systems, zero border-radius

### 4. Soft Structural / Organic
Friendly floating elements, soft diffused shadows, spring-physics animations

### 5. Retro-Futurist / Cyberpunk
Neon noir aesthetics, glitch effects, synthwave colors, broken grids

## Workflow

1. **Analyze the Sketch** - Identify page type, core elements, layout structure
2. **Determine Design Direction** - Select matching aesthetic style, color scheme, font pairing
3. **Write Code** - Output single HTML file with inline CSS and JS

## Tech Stack

- **Animation**: GSAP + ScrollTrigger
- **Icons**: Lucide Icons, Phosphor Icons
- **Images**: Unsplash
- **Fonts**: Google Fonts

## Design Guidelines

### ✅ Must Do
- Use Lucide or Phosphor Icons (no emoji)
- Hero section with Unsplash background image
- Orchestrated entrance animations
- Responsive design
- Bold, cohesive color schemes
- Real images (not solid placeholders)
- Custom cubic-bezier animations

### ❌ Never Do
- Use emoji as icons
- Inter/Roboto as display fonts
- Purple gradient on white backgrounds
- Cookie-cutter card grids
- Generic "John Doe" placeholder names
- AI copywriting clichés ("Elevate", "Seamless", "Unleash")
- Pure black (`#000000`) backgrounds
- Neon outer glows

## File Structure

```
sketch-to-web/
├── README.md          # Project documentation
├── SKILL.md           # Complete skill documentation
├── LICENSE            # MIT License
└── .gitignore         # Git ignore rules
```

## Usage

1. Upload sketch/screenshot/wireframe
2. AI analyzes and determines design direction from the style arsenal
3. Complete HTML file is generated
4. Double-click to view in browser

## Output Format

Generated HTML file includes:
- Inline CSS (using CSS variables for theming)
- Inline JavaScript (GSAP animations + interaction logic)
- CDN dependencies (GSAP, Lucide/Phosphor)
- Unsplash images with verified IDs

## Key Features

### Advanced Component Patterns
- **Double-Bezel Cards**: Premium hardware-like nested containers
- **Magnetic Buttons**: Physics-based hover/active feedback
- **Staggered Reveals**: Cascading entrance animations
- **Glass Morphism**: Backdrop blur navigation

### Animation System
- Custom cubic-bezier easing curves
- Spring physics for interactions
- Scroll-triggered reveals with Intersection Observer
- GPU-safe transforms only

### Quality Assurance
- 14-point quality checklist
- Content anti-patterns reference
- Performance guardrails
- Mobile-first responsive design

## License

MIT License

## Contributing

Issues and PRs welcome!
