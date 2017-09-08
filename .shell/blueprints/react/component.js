import React from 'react';

class MyComponent extends React.Component {
    render() {
        return (
            <div className='myComponent'></div>
        )
    }
}

const MyComponent = ({someProp}) => {
    if(someProp) {
        return (
            <div>
                <h1>MyComponent</h1>
            </div>
        )
    }
}

export default MyComponent;