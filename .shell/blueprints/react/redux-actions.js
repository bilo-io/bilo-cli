// ActionTypes
// ***********
const SOME_ACTION = 'SOME_ACTION'
// Actions
// *******
export const someAction = (data) => {
    return {
        type: UPDATE_QUERY,
        data
    }
}