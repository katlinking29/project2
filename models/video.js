module.exports = function (sequelize, DataTypes) {
  const Video = sequelize.define("video", {
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

    Video.belongsTo(models.language, {
      foreignKey: {
        allowNull: false
      }
    });
  };

  return Video;
};
