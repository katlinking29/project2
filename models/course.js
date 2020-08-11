module.exports = function (sequelize, DataTypes) {
  const Course = sequelize.define("course", {
    course_name: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    course_path: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    company_name: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    course_link: {
      type: DataTypes.STRING,
      allowNull: false,
    },
  });

  Course.associate = function (models) {

    Course.belongsTo(models.language, {
      foreignKey: {
        allowNull: false
      }
    });
  };

  return Course;
};
