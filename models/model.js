const model = () => {
    console.log("[run model]");

    this.logger = (log) => {
        console.log(`[${log}]`);
    }

    return this;
}

module.exports = () => {
    console.log("[load model]");
    return model;
}