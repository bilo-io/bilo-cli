import { SOME_ACTION } from './actions'
import { someAction } from './actions'

const homeReducer = (state = initialState, {
    type,
    ...action
}) => {
    switch (type) {
        case UPDATE_QUERY:
            return {
                ...state,
                data: action.data
            }
        default: return state;
    }
}