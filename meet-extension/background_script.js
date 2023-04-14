// Put all the javascript code here, that you want to execute in background.

browser.runtime.onMessage.addListener(notify);

function notify(...args) {
    console.log(...args);
    // browser.notifications.create({
    //     type: 'basic',
    //     iconUrl: browser.extension.getURL('link.png'),
    //     title: 'You clicked a link!',
    //     message: 'Yo'
    // });
}

console.log('background');
