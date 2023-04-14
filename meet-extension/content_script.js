// Put all the javascript code here, that you want to execute after page load.

function notifyExtension(e) {
    browser.runtime.sendMessage('Message');
}

function toggleMute() {
    console.log('mute');
    const micButton = document.querySelector('button[aria-label*="micro"]');
    if (micButton) {
        micButton.click();
    }
}

function toggleCamera() {
    console.log('camera');
    const cameraButton = document.querySelector('button[aria-label*="caméra"]');
    if (cameraButton) {
        cameraButton.click();
    }
}

function toggleRaisedHand() {
    console.log('hand');
    const handButton = document.querySelector('button[aria-label*="Lever la main"]');
    if (handButton) {
        handButton.click();
    }
}

function hangUp() {
    console.log('hand');
    const hangUpButton = document.querySelector('button[aria-label*="Quitter"]');
    if (hangUpButton) {
        hangUpButton.click();
    }
}

console.log('loaded');

setTimeout(() => {
    notifyExtension();
}, 10000);
