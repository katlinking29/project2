module.exports = function(sequelize, DataTypes) {
  const Event = sequelize.define("Event", {
    name: DataTypes.STRING,
    date: DataTypes.DATE,
    city: DataTypes.STRING,
    state: DataTypes.STRING,
    zip: DataTypes.STRING
  });
  return Event;
};
