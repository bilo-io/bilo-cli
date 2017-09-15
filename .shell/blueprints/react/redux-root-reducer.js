import { combineReducers } from 'redux';
// Pages
import myComponentReducer from './pages/my-component/reducer';
import myContainerReducer from './pages/my-container/reducer';
// Containers
const rootReducer = combineReducers({
    // Pages
    myComponent: myComponentReducer,
    // Containers
    myContainer: myContainerReducer
})

export default rootReducer;