module.exports = function (sequelize, DataTypes) {
  const Video = sequelize.define("Video", {
    video_name: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    video_channel: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    video_link: {
      type: DataTypes.STRING,
      allowNull: false,
    },
  });

  Video.associate = function (models) {

    Video.belongsTo(models.Language, {
      foreignKey: {
        allowNull: false
      }
    });
  };

  return Video;
};
