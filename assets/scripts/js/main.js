function decryptIt() {
  let decodedEmail = atob("bGlua2VkaW5AbWFpbG9udGhlaW50ZXJuZXQuY29t");
  let protectedEmail = document.querySelectorAll('.mailto-me');
      protectedEmail.forEach(function (item) {
        item.href = `mailto:${decodedEmail}`;
  });
}

window.onload = decryptIt;
