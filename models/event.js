module.exports = function(sequelize, DataTypes) {
    var Event = sequelize.define("events", {
      event_date: DataTypes.DATE,
      event_time: DataTypes.TIME,
      event_name: DataTypes.STRING,
      event_location: DataTypes.STRING,
      event_description: DataTypes.STRING
    });
    return Event;
  };
  