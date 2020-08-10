module.exports = function(sequelize, DataTypes) {
  const Language = sequelize.define("Language", {
    language_name: DataTypes.STRING
  });

  Language.associate = function (models) {

    Language.hasMany(models.Video, {
      onDelete: "cascade"
    });
  };

  return Language;
};
