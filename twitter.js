const button = document.getElementById('refresh')
const container = document.getElementById('container')

const updateTweets = () => {
  container.innerHTML = '';
  fetch(TWITTER_URL_OF_TWEETS)
    .then(response => response.json())
    .then(data => {
      data.forEach(tweet => {
        let div = document.createElement('div');
        div.innerHTML(`<div><p>${tweet.text}</p></div>`)
        container.append(div)
      })
    })
}

button.addEventListner('click', updateTweets)
