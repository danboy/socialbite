(function($){
  var Twit = function(twitter_id,list_id,count,tweetDelay){
    this.index = 0;
    this.tweetDelay = tweetDelay;
    self = this;
    this.count = count;

    this.tweets = [];
    this.getTweets(twitter_id,list_id);
    this.start();
  }

  Twit.prototype = {
    getTweets: function(twitter_id,list_id){
      var self = this;
      var url = 'http://twitter.com/statuses/'
	    + twitter_id
	    + '/lists/'+ list_id +'/statuses.json?callback=?';

      $.getJSON(url,
      function(data){

        self.index = data.length-1;
        $.each(data,function(i,item){
          self.tweets.push(item);
        });
      });
    },
    start: function(){

      self = this;

      setInterval(function(){self.getTweet()},this.tweetDelay);

    },
    getTweet: function(){
      console.log(this.tweets[this.index].user.name+':\n'+this.replace(this.tweets[this.index].text));
      if( this.index > 0 ){
        this.index--;
      }else{
        this.index=this.tweets.length-1;
      }

    },
    replace: function( input )
    {
      return input
      .replace(/http:\/\/\S+/g,  '<a href="$&" target="_blank">$&</a>')
      .replace(/\s(@)(\w+)/g,    ' @<a href="http://twitter.com/$2" target="_blank">$2</a>')
      .replace(/\s(#)(\w+)/g,    ' #<a href="http://search.twitter.com/search?q=%23$2" target="_blank">$2</a>')
      //replace(/^\w+/,           '<a href="http://twitter.com/$&" target="_blank">$&</a>')
    }

  }
});
