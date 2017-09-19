// ActionTypes
export const MY_ACTION = 'MY_ACTION';
// ActionCreators
export const myAction = (data) => {
    return {
        type: MY_ACTION,
        data
    }
}