const { environment } = require('@rails/webpacker')

module.exports = environment

<<<<<<< HEAD
const webpack = require("webpack")

environment.plugins.append("Provide", new webpack.ProvidePlugin({
  $: 'jquery',
  jQuery: 'jquery',
  Popper: ['popper.js', 'default']
}))
=======
const { environment } = require('@rails/webpacker')

const { environment } = require('@rails/webpacker')

const webpack = require("webpack")

environment.plugins.append("Provide", new webpack.ProvidePlugin({

$: 'jquery',

jQuery: 'jquery',

Popper: ['popper.js', 'default']

}))

module.exports = environment
>>>>>>> 608f87b
