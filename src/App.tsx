import React from 'react';

function App() {
    const myVar = (window as any).MY_VAR;
    return (
        <>
            Hello world: {myVar}
        </>
    );
}

export default App;
