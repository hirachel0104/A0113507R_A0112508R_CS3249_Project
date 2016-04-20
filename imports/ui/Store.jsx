import { applyMiddleware, combineReducers, compose, createStore } from 'redux'
import { reducer as searchReducer, reduxSearch } from 'redux-search'

// Configure reducer to store state at state.search
// You can store it elsewhere but you will need to supply your own :searchStateSelector
const rootReducer = combineReducers({
  search: searchReducer
  // Your other reducers go here...
})

// Compose :reduxSearch with other store enhancers
const enhancer = compose(
  applyMiddleware(...yourMiddleware),
  reduxSearch({
    // Configure redux-search by telling it which resources to index for searching
    resourceIndexes: {
      // In this example Books will be searchable by :title and :author
      tasks: ['eventTitle', 'organiser']
    },
    // This selector is responsible for returning each collection of searchable resources
    resourceSelector: (resourceName, state) => {
      // In our example, all resources are stored in the state under a :resources Map
      // For example "books" are stored under state.resources.books
      return state.resources.get(resourceName)
    }
  })
)

// Note: passing enhancer as the last argument to createStore requires redux@>=3.1.0
const store = createStore(reducer, initialState, enhancer)