module.exports = function(sequelize, DataTypes) {
  const Language = sequelize.define("language", {
    language_name: DataTypes.STRING
  });

  Language.associate = function (models) {

    Language.hasMany(models.video, {
      onDelete: "cascade"
    });
  };

  return Language;
};
