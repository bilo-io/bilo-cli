import React, { Component, PropTypes } from 'react';
import './style.scss';

export default class MyComponent extends Component {
    static propTypes = {
        isActive: PropTypes.bool,
        hello: PropTypes.func.isRequired,
        index: PropTypes.number.isRequired,
        name: PropTypes.string.isRequired
    }
    constructor(props) {
        super(props)
    }
    render() {
        return (
            <div className='page'>
                
            </div>
        )
    }
}

// export const MyComponent = (props) => {
//     return (
//         <div>
//             <h1>MyComponent</h1>
//         </div>
//     )
// }
//
// export default MyComponent;