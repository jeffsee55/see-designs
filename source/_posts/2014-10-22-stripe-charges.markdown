---
title:  "Charges with Stripe"
date:   2014-10-22 17:26:19
categories: code
layout: default
permalink: stripe-api
---

# Learning APIs with Stripe
<!-- When it comes to building an online store - there are a wealth of options. Be it Etsy, eBay, or even
Facebook - you have plenty to choose from. But what about your *brand*, won't that be diluded if all
you're doing is throwing your product in to the same template as all of your competitors? How can
you  -->
Using external APIs is the key to harnessing the power of the modern web. Not only are APIs a great
way to integrate high levels of functionality in to your app, but they are also effective in simplifying
your codebase. Rails makes it incredibly easy to work with APIs. I'm going to show you how you can
integrate one of the most powerful web APIs out there with this tutorial. The Stripe API gives you the ability
to create a PCI-compliant e-commerce app in minutes. Here's what you'll need in order to get started:

- Stripe-Rails Gem

{% highlight ruby %}
class ChargesController < ApplicationController
  def show
    @charge = Charge.find(charge_params[:id])
  end
  def new
    @charge = Charge.new(charge_params)
  end

  private

  def charge_params
    params.require(:charge).permit(:amount, :user_id, :stripe_token)
  end
end
{% endhighlight %}
