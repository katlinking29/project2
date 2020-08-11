module.exports = function (sequelize, DataTypes) {
  const Book = sequelize.define("book", {
    book_name: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    store_url: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    book_img: {
      type: DataTypes.STRING,
      allowNull: false,
    },
  });

  Book.associate = function (models) {

    Book.belongsTo(models.language, {
      foreignKey: {
        allowNull: false
      }
    });
  };

  return Book;
};
