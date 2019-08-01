// Example
let picker = document.getElementById('picker');
function colorChanged (event) {
  let color = event.detail[0];
  console.log('Selected Color:' + color);
  picker.value = color;
}
picker.addEventListener('change', colorChanged);