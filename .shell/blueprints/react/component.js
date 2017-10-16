import React, { Component, PropTypes } from 'react';
import './style.scss';

export default class MyComponent extends Component {
    static propTypes = {
        isActive: PropTypes.bool,
        hello: PropTypes.func.isRequired,
        index: PropTypes.number.isRequired,
        name: PropTypes.string.isRequired
    }
    //#region Lifecycle
    // https://reactjs.org/docs/react-component.html#componentwillreceiveprops
    // mounting
    constructor(props) {
        super(props)
    }
    componentWillMount() {}
    componentDidMount() {}
    // updates
    componentWillReceiveProps(nextProps) {}
    shouldComponentUpdate(nextProps, nextState) {}
    componentDidWillUpdate(nextProps, nextState) {}
    componentDidUpdate(prevProps, prevState) {}
    // unmounting & error handling
    componentWillUnMount() {}
    componentDidCatch(error, info) {}
    //#endregion
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