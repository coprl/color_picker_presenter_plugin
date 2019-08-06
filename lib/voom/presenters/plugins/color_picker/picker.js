class ColorPicker {
  constructor(component) {
    console.log('\tColorPicker');
    this.component = component;
    this.data = {};
    this.picker = this.component.querySelector('md-color-picker');
    this.picker.addEventListener('change', this.createColorChangeHandler(component));
  }

  createColorChangeHandler(component) {
    return function(event) {
      let color = event.detail[0];
      this.value = color;
      component.querySelector('.v-color-input').value = color;
    }
  }
}
