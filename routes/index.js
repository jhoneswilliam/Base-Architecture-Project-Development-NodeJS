module.exports = (app) => {
    const Model = app.models.model;

    app.get('/', (req, res) => {
        res.render("index")
    });

    app.get('/index/', (req, res) => {
        let model = Model();
        model.logger("Run function");
        res.render("index");
    });
};