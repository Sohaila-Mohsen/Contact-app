class Call {
  var statue;
  var duration;
  var date;
  var time;
  Call({statue, date, time, duration}) {
    (statue == null) ? (this.statue = "") : this.statue = statue;
    (date == null) ? (this.date = "") : this.date = date;
    (time == null) ? (this.time = "") : this.time = time;
    (duration == null) ? (this.duration = "") : this.duration = duration;
  }
}
