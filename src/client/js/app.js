app({
  model: {
    lyric: 'Yeezy, Yeezy how you doing huh?',
  },
  update: {
    newLyric: (model, { lyric }) => ({ lyric }),
  },
  effects: {
    fetchLyric: (model, msg) => {
      const req = new XMLHttpRequest();
      req.onreadystatechange = (event) => {
        if (req.readyState === 4 && req.status === 200) {
          msg.newLyric(JSON.parse(req.responseText));
        }
      };
      req.open('get', '/lyric');
      req.send();
    },
  },
  hooks: {
    onAction: (name) => {
      if (name === 'fetchLyric') {
        ga('send', {
          hitType: 'event',
          eventCategory: name,
          eventAction: name,
        });
      }
    }
  },
  view: (model, msg) => {
    return html`
      <div>
        <div id="lyrics-container">
          <img id="background" src="imgs/background.jpg" />
          <span id="lyrics">"${model.lyric}"</span>
        </div>
        <div id="generate-btn">
          <div id="generate-btn-content" onclick=${msg.fetchLyric}>
            Generate
          </div>
        </div>
      </div>
    `;
  },
  root: document.getElementById('container'),
});
