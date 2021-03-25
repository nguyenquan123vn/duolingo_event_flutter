class Event {
  final int attendeeLimit;
  final String attendeeProficiency;
  final String description;
  final int duration;
  final String eventId;
  final int hostId;
  final String language;
  final String recurrencePattern;
  final int reservationCount;
  final String startDate;
  final String timeZone;
  final String title;

  DateTime date;
  Event({
    this.attendeeLimit,
    this.attendeeProficiency,
    this.description,
    this.duration,
    this.eventId,
    this.hostId,
    this.language,
    this.recurrencePattern,
    this.reservationCount,
    this.startDate,
    this.timeZone,
    this.title,
  }) {
    date = DateTime.parse(startDate);
  }
}
