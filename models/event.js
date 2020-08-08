module.exports = function(sequelize, DataTypes) {
  const Event = sequelize.define("events", {
    event_name: DataTypes.STRING,
    event_date: DataTypes.STRING,
    event_city: DataTypes.STRING,
    event_state: DataTypes.STRING,
    event_zip: DataTypes.STRING
  });
  return Event;
};
