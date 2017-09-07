## Current Issue

This CLI requires a different menu style. At the moment it is not very useful or elegant

- `bilo` will still display a similar menu
    - `webapp`
    - `webapi`
    - `react`
    - `ng2 | ng4` (to deprecate??)

But the improvement will be when you go straight into one of these submenu's, e.g.:
### React
- `bilo react` will show the menu
    - `i | init` (with router) create a plain *React application* with suggested folder structure
    - `c | component` create a basic (named) *component* (that is stateless)
    - `p | page` create a redux linked (named) page (that is stateful, i.e. uses redux)
    - `d | data` create (global) data resource that is accessible from all pages

### WebApi
- `bilo webapi` will show the menu
    - `i | init` will create an express.js based webapi with a single test endpoint
    - `r | resource` will create a (named) *controller* with a corresponding *route*, and *model*
    - `c | controller` will create a (named) *controller*
    - `m | model` will create a (named) *model*
    - `r | route` will create a (named) *route*