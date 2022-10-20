unless Bundler.locked_gems.dependencies['solidus_frontend']
  say_status :warning, "Support for frontends other than `solidus_frontend` by `solidus_paypal_commerce_platform` is still in progress.", :yellow
end

unless Bundler.locked_gems.dependencies['solidus_paypal_commerce_platform']
  bundle_command 'add solidus_paypal_commerce_platform'
end

generate 'solidus_paypal_commerce_platform:install'
