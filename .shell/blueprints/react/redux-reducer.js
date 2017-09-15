import { MY_ACTION } from './actions'

const homeReducer = (state = initialState, {
    type,
    ...action
}) => {
    switch (type) {
        case MY_ACTION:
            return {
                ...state,
                data: action.data
            }
        default: return state;
    }
}