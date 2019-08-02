import 'material-design-inspired-color-picker'

class ColorPicker {
  constructor(element) {
    console.log('\tColorPicker');
    this.element = element;
    this.setupPicker();
    this.picker = document.getElementById('picker');
    this.picker.addEventListener('change', colorChanged);
  }

  colorChanged (event) {
    let color = event.detail[0];
    console.log('Selected Color:' + color);
    this.picker.value = color;
  }
}

