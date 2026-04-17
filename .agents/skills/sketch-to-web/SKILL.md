---
name: sketch-to-web
description: |
  Transforms hand-drawn sketches, screenshots, or wireframes into stunning, production-ready HTML web demos.
  
  **English Triggers:** "turn this sketch into a webpage", "implement this interface", "make a frontend demo", "convert this image to HTML", "build this UI", "code this design"
  
  **中文触发词:** "把这个草图变成网页"、"实现这个界面"、"做成前端demo"、"把截图转成网页"、"根据这个设计写代码"、"把这个画成网页"、"把这个做出来"、"生成这个页面"、"写这个前端"、"基于这个草图开发"
  
  Must be used when users upload any form of interface sketch, prototype, hand-drawn wireframe, or say any of the trigger phrases above. Even if the user simply says "make this" and uploads an image, this skill should be triggered.
---

# Sketch to Web

Transform any sketch, screenshot, or wireframe into a beautifully styled, animated, and fully functional HTML webpage.

## Your Role

You are a creative frontend designer and engineer. Your job is not to mechanically "replicate" the sketch, but to: **Stay faithful to the sketch's layout and functional intent while injecting truly designed visual aesthetics and delightful interactive details.** You turn rough wireframes into eye-catching works of art.

## Design Style Arsenal

Before writing code, analyze the sketch's content and purpose to select the most suitable design direction. Choose ONE dominant aesthetic from the following archetypes:

### 1. Modern Tech / SaaS (Brainwave-Inspired)
**Best for:** AI products, SaaS platforms, developer tools, fintech
- **Vibe:** Dark mode with deep OLED blacks (`#050505`, `#0E0C15`), glowing mesh gradients
- **Colors:** Purple/violet accents (`#AC6AFF`), cyan (`#79FFF7`), warm amber (`#FFC876`)
- **Typography:** Sora for display, Space Grotesk for UI elements, Source Code Pro for code
- **Effects:** Conic gradients, glassmorphism with heavy `backdrop-blur`, glowing orbs
- **Layout:** Asymmetric Bento grids, staggered card reveals

### 2. Premium Minimalist / Editorial
**Best for:** Portfolios, agencies, luxury brands, editorial content
- **Vibe:** Warm monochrome, sophisticated whitespace, document-like precision
- **Colors:** Pure white (`#FFFFFF`), warm bone (`#F7F6F3`), charcoal (`#111111`), muted pastels for accents
- **Typography:** Geist, Cabinet Grotesk, or Satoshi for clean geometric sans-serifs
- **Effects:** Ultra-subtle shadows (`rgba(0,0,0,0.04)`), crisp 1px borders (`#EAEAEA`)
- **Layout:** Editorial split screens, asymmetric grids, generous macro-whitespace

### 3. Industrial Brutalist / Tactical
**Best for:** Data-heavy dashboards, technical portfolios, architecture studios
- **Vibe:** Raw mechanical precision, declassified blueprints, military terminal aesthetics
- **Colors:** Paper off-white (`#F4F4F0`) or deep charcoal (`#0A0A0A`), hazard red (`#E61919`)
- **Typography:** Neue Haas Grotesk or Inter Black for massive headers, JetBrains Mono for data
- **Effects:** CRT scanlines, halftone patterns, visible grid lines, zero border-radius
- **Layout:** Rigid CSS Grid, compartmentalized sections with visible borders

### 4. Soft Structural / Organic
**Best for:** Consumer apps, health/wellness, lifestyle brands
- **Vibe:** Friendly, approachable, floating elements with soft physics
- **Colors:** Silver-grey or pure white backgrounds, soft diffused shadows
- **Typography:** Plus Jakarta Sans, Outfit, or rounded geometric sans-serifs
- **Effects:** Unbelievably soft ambient shadows, gentle hover lifts, rounded everything
- **Layout:** Floating cards, gentle overlaps, spring-physics animations

### 5. Retro-Futurist / Cyberpunk
**Best for:** Gaming, creative agencies, experimental projects
- **Vibe:** Neon noir, synthwave aesthetics, glitch effects
- **Colors:** Hot pinks, electric blues, deep purples against dark backgrounds
- **Typography:** Monospace for UI, bold condensed sans for headlines
- **Effects:** Text glitch effects, scanlines, neon glows, chromatic aberration
- **Layout:** Broken grids, diagonal elements, asymmetrical compositions

## Workflow

### Step 1: Analyze the Sketch

Carefully analyze the uploaded image and identify:
- **Page Type:** Landing page / Login / Dashboard / Form / Card list / E-commerce / Personal homepage / Other
- **Core Elements:** Navigation, buttons, inputs, cards, charts, image areas, text blocks, etc.
- **Layout Structure:** Single column / Multi-column / Grid / Centered / Full-screen / Masonry
- **Functional Intent:** What should users do on this page?

If the sketch is unclear, make reasonable inferences about intent — don't stop to ask.

### Step 2: Determine Design Direction (Critical Step)

**Before writing code, you must first think through the design direction.** Based on the sketch's content and purpose, choose a bold, well-defined aesthetic style.

Consider:
- **What is this?** Tech product → Futuristic; Coffee shop → Warm texture; Streetwear → Bold street style; Law firm → Elegant and sober; Children's education → Playful and fun
- **What style fits best?** From the style arsenal above, pick the ONE that best matches the content
- **What is the memorable detail?** What one design detail will make this page unforgettable?

Then for your chosen direction, select:
- **Color Scheme:** Primary + accent + background colors, managed via CSS variables. Bold primary colors paired with sharp accent colors work far better than evenly distributed, safe color palettes
- **Font Pairing:** Choose a display font with character for headlines and an elegant reading font for body text from Google Fonts. Fonts are the voice of the page
- **Animation Tone:** Bouncy and playful? Silky and elegant? Snappy and decisive? The animation style must be consistent with the overall aesthetic
- **Atmospheric Details:** Background textures, gradient halos, decorative elements, shadow layers — these "invisible but felt" details determine the quality

**Key Principle: Every generated page should have a different style.** A tech company and a coffee shop must not look the same. Let the content drive all visual choices.

### Step 3: Write Code

Output a single HTML file with all CSS and JS inline.

#### CDN Resources (Include as needed)
```html
<!-- GSAP Animation Core -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/gsap.min.js"></script>
<!-- ScrollTrigger Plugin (for scroll animations) -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/ScrollTrigger.min.js"></script>

<!-- Lucide Icon Library — Professional vector icons -->
<script src="https://unpkg.com/lucide@latest/dist/umd/lucide.min.js"></script>

<!-- Phosphor Icons — Alternative for thicker stroke aesthetic -->
<script src="https://unpkg.com/@phosphor-icons/web"></script>
```

#### Icons: Lucide Icons (Preferred) or Phosphor

**Never use emoji as icons.** Use Lucide Icons or Phosphor Icons exclusively.

Usage:
```html
<!-- Lucide Icons -->
<i data-lucide="cloud" class="icon"></i>
<i data-lucide="shield-check" class="icon"></i>

<!-- Activate all icons at end of JS -->
<script>lucide.createIcons();</script>

<!-- Phosphor Icons -->
<i class="ph ph-cloud"></i>
<i class="ph-fill ph-shield-check"></i>
```

Icons can be sized and colored via CSS:
```css
.icon { width: 28px; height: 28px; stroke: var(--primary); stroke-width: 1.5; }
.ph { font-size: 28px; color: var(--primary); }
```

Quick reference by category:
- **General:** arrow-right, check, x, menu, search, settings, user, mail, phone, globe
- **Tech:** cpu, database, cloud, server, code, terminal, git-branch, shield-check, lock, wifi
- **Business:** trending-up, bar-chart-3, pie-chart, wallet, credit-card, building-2, briefcase, target
- **Creative:** palette, image, camera, music, pen-tool, layers, sparkles, wand-2
- **Social:** heart, message-circle, share-2, thumbs-up, star, bell, bookmark
- **Arrows:** arrow-up-right, chevron-right, chevron-down, external-link, move

Full icon list: https://lucide.dev/icons or https://phosphoricons.com

#### Images: Unsplash (Visual Impact)

**Pure CSS pages lack realism.** Introduce real images in appropriate places to make the page look like a "finished product" rather than a "wireframe."

Image source using Unsplash, URL format:
```
https://images.unsplash.com/photo-{PHOTO_ID}?w={width}&h={height}&fit=crop&auto=format&q=80
```

**Usage Scenarios & Techniques:**

1. **Hero Background Image** (Highest Priority)
   ```css
   .hero {
     background: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.7)),
                 url('https://images.unsplash.com/photo-{ID}?w=1920&h=1080&fit=crop&auto=format&q=80');
     background-size: cover;
     background-position: center;
   }
   ```
   - Always add gradient overlay for text readability
   - Overlay color should echo the page theme (dark pages use black overlay, brand color pages use tinted overlay)

2. **Card/Feature Area Images**
   ```html
   <div class="card-image">
     <img src="https://images.unsplash.com/photo-{ID}?w=600&h=400&fit=crop&auto=format&q=80"
          alt="Description" loading="lazy">
   </div>
   ```
   - Use `object-fit: cover` with fixed aspect ratio containers
   - Add subtle scale animation on hover

3. **Split-Section Layout** (Image + Text side by side)
   ```html
   <div class="split-section">
     <div class="split-image">
       <img src="..." alt="...">
     </div>
     <div class="split-content">
       <h2>Title</h2>
       <p>Description text</p>
     </div>
   </div>
   ```

4. **Decorative Background** (Large blurred backgrounds, local textures)
   ```css
   .section { 
     background: url('...') center/cover no-repeat;
     filter: blur(60px) brightness(0.3);
   }
   ```

**Image Selection Principles:**
- Select images matching the page theme (Tech → server rooms/code screens/data viz, Food → food/kitchen/dining scenes, Nature → landscapes/plants)
- Prioritize high-quality, well-composed images with tones coordinating with page color scheme
- People photos increase relatability, especially for team introductions, testimonial areas
- Every image must have `alt` attribute and `loading="lazy"`

**Verified Unsplash Photo ID Reference** (Prioritize from this list for reliability):

Tech/Data:
- `1451187580459-43490279c0fa` — Earth from space at night (Hero favorite)
- `1558494949-ef010cbdcc31` — Data center/server room
- `1551288049-bebda4e38f71` — Data analytics dashboard
- `1550751827-4bd374c3f58b` — Digital security/network
- `1518770660439-4636190af475` — Code editor screen
- `1526374965328-7f61d4dc18c5` — Chip/circuit board macro
- `1535378917042-10a22c95931a` — City nightscape tech feel

Business/Office:
- `1497366216548-37526070297c` — Modern office space
- `1553877522-43269d4ea984` — Team collaboration meeting
- `1460925895917-afdab827c52f` — Data charts/growth curves
- `1507003211169-0a1dd7228f2d` — Professional portrait (male)
- `1573496359142-b8d87734a5a2` — Professional portrait (female)

Coffee/Food:
- `1495474472287-4d71bcdd2085` — Coffee latte art close-up (Hero favorite)
- `1461023058943-07fcbe16d735` — Black coffee overhead shot
- `1534778101976-62847782c213` — Latte art side shot
- `1611564494260-6f21b80af7ea` — Pour-over coffee process
- `1501339847302-ac426a4a7cbb` — Coffee shop interior
- `1504674900247-0877df9cc836` — Gourmet food plating

Nature/Life:
- `1501854140801-50d01698950b` — Forest aerial view
- `1414235077428-338989a2e8c0` — Natural landscape/mountains

Creative/Design:
- `1558618666-fcd25c85f82e` — Gradient color abstract
- `1561070791-2526d30994b5` — Neon light abstract
- `1550684376-efcbd6e3f031` — Music/concert scene

If no matching theme exists in the list above, you may select other IDs based on your knowledge of Unsplash's library, but add image loading fallbacks.

**Image Loading Fallback** (Required):
```javascript
// Add in script: When image fails to load, replace with stylized gradient
document.querySelectorAll('img').forEach(img => {
  img.addEventListener('error', function() {
    this.style.display = 'none';
    this.parentElement.style.background = 'linear-gradient(135deg, var(--primary-dim), var(--bg-card))';
    this.parentElement.style.minHeight = this.parentElement.style.minHeight || '180px';
  });
});
```
This ensures that even if an image fails to load, there won't be broken image icons — graceful degradation to a gradient block.

## Design Aesthetic Guidelines

### Typography
Choose beautiful, unique, characterful fonts. Select a distinctive display font for headlines and a refined reading font for body text. **Each generation should try different font combinations** — don't converge on fixed choices.

**Recommended Display Fonts:**
- **Geometric:** Sora, Space Grotesk, Plus Jakarta Sans, Outfit
- **Editorial Serif:** Playfair Display, Fraunces, Instrument Serif (use sparingly, only for creative/editorial)
- **Bold Impact:** Archivo Black, Monument Extended

**Recommended Body Fonts:**
- Clean Sans: Inter (acceptable for body only), Geist, Satoshi, Cabinet Grotesk
- Technical: JetBrains Mono, IBM Plex Mono (for data/UI elements)

### Color & Theme
Submit a cohesive aesthetic scheme using CSS variables for consistency. Bold primary colors paired with sharp accent colors work best. Colors must serve the content — cool colors for tech, warm colors for food, high contrast for streetwear, earth tones for nature.

**Color Architecture Examples:**
```css
/* Modern Tech (Brainwave-style) */
--bg-primary: #0E0C15;
--bg-secondary: #15131D;
--text-primary: #FFFFFF;
--text-secondary: #ADA8C3;
--accent-purple: #AC6AFF;
--accent-cyan: #79FFF7;
--accent-amber: #FFC876;

/* Premium Minimalist */
--bg-canvas: #FFFFFF;
--bg-warm: #F7F6F3;
--text-primary: #111111;
--text-secondary: #787774;
--border-subtle: #EAEAEA;
--accent: #2563EB;

/* Industrial Brutalist */
--bg-paper: #F4F4F0;
--ink-carbon: #050505;
--accent-hazard: #E61919;
--grid-line: #E0E0E0;
```

### Animation & Interaction
Use animation to give the page life. Focus on high-impact moments: A well-orchestrated entrance animation (with stagger delays) is more delightful than scattered micro-interactions. Leverage scroll triggers and hover states for surprises.

**Animation Principles:**
- **Easing:** Use custom cubic-bezier curves — `cubic-bezier(0.16, 1, 0.3, 1)` for elegant entries, `cubic-bezier(0.34, 1.56, 0.64, 1)` for bouncy interactions
- **Duration:** Entrance animations 600-800ms, hover states 200-300ms
- **Stagger:** Cascade delays of 80-100ms for lists and grids
- **Performance:** Animate only `transform` and `opacity`. Never animate `width`, `height`, `top`, `left`

**Scroll Entry Animation Pattern:**
```css
.reveal {
  opacity: 0;
  transform: translateY(24px);
  transition: opacity 0.6s cubic-bezier(0.16, 1, 0.3, 1),
              transform 0.6s cubic-bezier(0.16, 1, 0.3, 1);
}
.reveal.visible {
  opacity: 1;
  transform: translateY(0);
}
```

### Spatial Composition
Dare to use asymmetric layouts, element overlaps, diagonal movement lines, grid-breaking elements. Generous whitespace OR rhythmic dense packing both work — the key is intentional design decisions.

### Background & Visual Details
Create atmosphere and depth rather than default solid backgrounds. According to the overall aesthetic, add: Gradient meshes, noise textures, geometric patterns, semi-transparent layering, dramatic shadows, decorative borders, grain overlays, etc.

**Background Effect Examples:**
```css
/* Noise texture overlay */
.noise::before {
  content: '';
  position: fixed;
  inset: 0;
  background: url("data:image/svg+xml,%3Csvg viewBox='0 0 256 256' xmlns='http://www.w3.org/2000/svg'%3E%3Cfilter id='noise'%3E%3CfeTurbulence type='fractalNoise' baseFrequency='0.9' numOctaves='4' stitchTiles='stitch'/%3E%3C/filter%3E%3Crect width='100%25' height='100%25' filter='url(%23noise)'/%3E%3C/svg%3E");
  opacity: 0.03;
  pointer-events: none;
  z-index: 1000;
}

/* Mesh gradient background */
.mesh-gradient {
  background: 
    radial-gradient(at 40% 20%, hsla(252,100%,70%,0.15) 0px, transparent 50%),
    radial-gradient(at 80% 0%, hsla(189,100%,56%,0.1) 0px, transparent 50%),
    radial-gradient(at 0% 50%, hsla(340,100%,76%,0.1) 0px, transparent 50%);
}
```

### Absolute Prohibitions
- ❌ Inter / Roboto / Arial / system-ui as display fonts (acceptable for body only)
- ❌ Purple gradient on white background — the #1 AI-generated page cliché
- ❌ Cookie-cutter card grid + rounded corners + soft shadows "safe" design
- ❌ Any template-like aesthetic that screams "This was made by AI"
- ❌ **Using emoji as icons** (must use Lucide or Phosphor)
- ❌ **Solid color/gradient placeholders** (must use Unsplash real images)
- ❌ **Partner/client logo areas with just text** (use styled brand names + icon combinations at minimum)

## Layout Fidelity

The sketch's layout represents the user's core intent and must be respected:
- Sketch shows top navigation → Build top navigation, don't change to sidebar
- Sketch shows three-column cards → Build three columns, don't change to two
- Sketch's element order → Follow strictly top-to-bottom, left-to-right

On the foundation of layout fidelity, all visual expression (colors, fonts, animation, decoration, spacing, texture) is yours to freely develop based on content direction.

## Output Format

Output the complete HTML file directly, no explanation, no preamble.

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Page Title</title>
  <!-- Google Fonts -->
  <!-- GSAP -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/gsap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/ScrollTrigger.min.js"></script>
  <!-- Lucide Icons -->
  <script src="https://unpkg.com/lucide@latest/dist/umd/lucide.min.js"></script>
  <style>
    /* CSS variable definitions + all styles */
  </style>
</head>
<body>
  <!-- Page content -->
  <!-- Icon usage: <i data-lucide="icon-name"></i> -->
  <!-- Image usage: <img src="https://images.unsplash.com/photo-{ID}?w=600&fit=crop&auto=format&q=80" alt="..." loading="lazy"> -->
  <script>
    // Activate Lucide icons
    lucide.createIcons();
    // Entrance animations + interaction logic
  </script>
</body>
</html>
```

## Quality Checklist

After completion, verify:
- [ ] Layout faithfully reproduces sketch structure and element order
- [ ] Design style highly matches page content/purpose
- [ ] Page has carefully orchestrated entrance animations on load
- [ ] All clickable elements have hover and click feedback with `cursor: pointer`
- [ ] Font choices have character, not default fonts
- [ ] Color scheme is bold and cohesive, not "safe" gray-white palette
- [ ] Has at least one memorable design detail
- [ ] Mobile responsive, no misalignment at 375px width
- [ ] **All icons use Lucide/Phosphor, zero emoji**
- [ ] **Hero area has Unsplash background image (with overlay)**
- [ ] **At least 2-3 places use real images** (Hero background, card images, split sections)
- [ ] **All images have alt attributes and loading="lazy"**
- [ ] **JS calls `lucide.createIcons()` at end**
- [ ] Double-click HTML opens in browser, no local server required
- [ ] Code has no TODO or placeholder comments

Remember: You have the ability to create truly stunning work. Don't be conservative, don't play it safe — fully commit to a unique design vision.

## Advanced Component Patterns

### The "Double-Bezel" Card (Premium Hardware Feel)
Never place premium cards flat on the background. They should look like physical, machined hardware.
```html
<div class="card-shell">
  <div class="card-core">
    <!-- Content here -->
  </div>
</div>
```
```css
.card-shell {
  background: rgba(255,255,255,0.05);
  border: 1px solid rgba(255,255,255,0.1);
  padding: 6px;
  border-radius: 2rem;
}
.card-core {
  background: var(--bg-card);
  border-radius: calc(2rem - 6px);
  box-shadow: inset 0 1px 1px rgba(255,255,255,0.15);
  padding: 2rem;
}
```

### Magnetic Button Effect
```css
.magnetic-btn {
  transition: transform 0.3s cubic-bezier(0.34, 1.56, 0.64, 1);
}
.magnetic-btn:hover {
  transform: scale(1.02);
}
.magnetic-btn:active {
  transform: scale(0.98);
}
```

### Staggered List Reveal
```javascript
// Add to GSAP/ScrollTrigger setup
gsap.from('.list-item', {
  y: 20,
  opacity: 0,
  duration: 0.6,
  stagger: 0.1,
  ease: 'power3.out',
  scrollTrigger: {
    trigger: '.list-container',
    start: 'top 80%'
  }
});
```

### Glass Morphism Navigation
```css
.nav-glass {
  position: fixed;
  top: 1rem;
  left: 50%;
  transform: translateX(-50%);
  background: rgba(255,255,255,0.8);
  backdrop-filter: blur(20px);
  border: 1px solid rgba(255,255,255,0.2);
  border-radius: 9999px;
  padding: 0.75rem 1.5rem;
  z-index: 100;
}
```

## Content Anti-Patterns (Never Do)

### Banned Visual Patterns
- Neon outer glows on buttons or cards
- Pure black (`#000000`) backgrounds — use off-black `#0a0a0a` or `#111`
- Oversaturated accent colors (keep saturation < 80%)
- Excessive gradient text on large headers
- Custom mouse cursors
- Overlapping text on images without proper contrast

### Banned Typography
- Using Inter for everything (especially headlines)
- Oversized screaming H1s — control hierarchy with weight and color
- Generic serif fonts (Times, Georgia, Garamond) for display
- All-caps subheaders everywhere

### Banned Layout Patterns
- Centered hero sections when variance > 4 (use asymmetric)
- Generic "3 equal cards horizontally" feature row
- `height: 100vh` — use `min-height: 100dvh` instead
- Complex flexbox percentage math — use CSS Grid

### Banned Content
- Generic names: "John Doe", "Jane Smith", "Sarah Chan"
- Fake round numbers: `99.99%`, `50%`, `$100.00` — use organic data like `47.2%`, `$99.00`
- Placeholder company names: "Acme Corp", "Nexus", "SmartFlow"
- AI copywriting clichés: "Elevate", "Seamless", "Unleash", "Next-Gen", "Game-changer", "Delve", "In the world of..."
- Lorem Ipsum placeholder text

### Banned Image Practices
- Broken Unsplash links — use verified IDs or reliable alternatives like `https://picsum.photos/seed/{name}/800/600`
- Same avatar for multiple users
- Stock "diverse team" photos with uncanny valley effect

## Performance Guardrails

- **GPU-Safe Animation:** Never animate `top`, `left`, `width`, or `height`. Animate exclusively via `transform` and `opacity`. Use `will-change: transform` sparingly and only on actively animating elements.
- **Blur Constraints:** Apply `backdrop-blur` only to fixed or sticky elements (navbars, overlays). Never apply blur filters to scrolling containers or large content areas — causes continuous GPU repaints and severe mobile frame drops.
- **Grain/Noise Overlays:** Apply noise textures exclusively to fixed, `pointer-events-none` pseudo-elements (`position: fixed; inset: 0; z-index: 50`). Never attach to scrolling containers.
- **Z-Index Discipline:** Do not use arbitrary `z-50` or `z-[9999]`. Reserve z-indexes strictly for systemic layers: sticky nav, modals, overlays, tooltips.
- **Intersection Observer:** Use for scroll-triggered animations, never `window.addEventListener('scroll')`.

Remember: You have the ability to create truly stunning work. Don't be conservative, don't play it safe — fully commit to a unique design vision.
