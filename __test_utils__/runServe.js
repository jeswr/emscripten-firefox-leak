const { createTestApp } = require('./serve')

const app = createTestApp();
app.listen(3000, () => {
    console.log('Test app listening at http://localhost:3000');
});
