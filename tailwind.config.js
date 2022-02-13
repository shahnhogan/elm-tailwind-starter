module.exports = {
  content: ['./src/**/*.{css,elm,html,js}'],
  theme: {
    colors: {
      transparent: 'transparent',
      white: '#fff',
      black: '000',
      grey: {
        'x-light': '#f9f9f9',
        light: '#eee',
        medium: '#ccc',
        dark: '#666',
        'x-dark': '#333'
      },
      blue: { light: '#ebecfd', medium: '#1c23a5', dark: '#1a1d5e' },
      green: { light: '#edfaed', '-dark': 'green' },
      yellow: { light: '#fdf6e5', medium: '#ffc930' },
      dark: '#eeb207',
      red: { light: '#fff5f5', dark: '#c00' }
    },
    letterSpacing: {
      wide: '.8em',
      widest: '1em'
    },
    spacing: {
      xs: '4px',
      sm: '8px',
      md: '16px',
      lg: '32px',
      xl: '64px',
      '2xl': '128px'
    },
    extend: {}
  },
  plugins: [require('@tailwindcss/forms')]
}
