# Functional specification

**Apple Products Inventory** (**API**) is an **iOS** App to keep track of your **Apple** products inventory.

## Summary
- [Context](#context)
- [Features](#features)
- [Flows](#flows)

## Context

Being a good Apple fanboy / fangirl / fanperson is hard, so many products to keep track of, so many more products to purchase. API is here to help you track all your Apple products and the events associated with them.

## Features

1. Display a splashcreen
1. Display a dashboard
1. Display the user's inventory
1. Display a list of Apple products
1. Sort products
1. Filter products
1. Search for a specific product by name, description, etc.
1. Display the details of an Apple product
1. Display the custom details of an Apple product in the inventory
1. Add a product to user's inventory
1. Persist inventory between sessions
1. Add details on a product of the user's inventory
    1. Purchase date
    1. Purchase price / is gift
    1. Sell date
    1. Comment
    1. **AppleCare+** status 
    1. Under MDM
    1. Serial number
    1. Site
    1. User(s)
1. Remove an Apple product from the user's inventory
1. Create tag
1. Assign tag to Apple product in inventory
1. Remove tag from Apple product in inventory

## Flows

### Display a splashscreen

1. User starts the App
1. User is presented with a splashscreen containing the App's logo and the App's marketing version (and build version for debug mode)

### Display a dashboard (empty inventory)

1. User starts the App
1. User is presented with the dashboard view
1. Tab bars contains entries for the Dashboard, Apple products, Collection, Settings

When the user's inventory is empty, a call to action button will be displayed to help the user add their first Apple product to their inventory.

### Display a dashboard

1. User starts the App
1. User is presented with the dashboard view
1. Tab bars contains entries for the Dashboard, Apple products, Collection, Settings

Dashboard view must contain the following information:

- Number of devices
- Device family repartition
- Device OS repartition
- Soon to be expired **AppleCare+** subscriptions (if any)
- Products that are out of date (deprecated max OS version)

### Display the list of Apple products

1. User starts the App
1. User is presented with the dashboard view
1. User taps on the **Apple products** tab bar item
1. User is presented with the list of Apple products

### Sort Apple products

1. User starts the App
1. User is presented with the dashboard view
1. User taps on the **Apple products** tab bar item
1. User is presented with the list of Apple products
1. User taps on the sort bar button
1. User is presented with a modal containing a list of sort options
1. User can tap on any sort option to set the sort option in ascending mode
1. User can double tap on any sort option to set the sort option in descending mode
1. User can tap on a clear sort option button
1. User can cancel the sort option selection which dismisses the modal
1. User can save the sort option selection which dismisses the modal

### Filter Apple products

1. User starts the App
1. User is presented with the dashboard view
1. User taps on the **Apple products** tab bar item
1. User is presented with the list of Apple products
1. User taps on the filter bar button
1. User is presented with a modal containing a list of filters
1. User can tap on any filter to be presented with a list of available values for the selected filter
1. For each filter, the user can select one or more values
1. User can tap on a clear filters button
1. User can cancel the filter selection which dismisses the modal
1. User can save the filter selection which dismisses the modal

### Search for an Apple product

1. User starts the App
1. User is presented with the dashboard view
1. User taps on the **Apple products** tab bar item
1. User is presented with the list of Apple products
1. User taps on the search field above the list
1. User enters at least 3 characters
1. User is presented with a filtered list of Apple products containing only the products that matches the input of the user (name, description, date, etc.)

### Display the details of an Apple product

1. User starts the App
1. User is presented with the dashboard view
1. User taps on the **Apple products** tab bar item
1. User is presented with a list of Apple products
1. User taps on any Apple product
1. User is presented with a view containing the details about the tapped Apple product

### Add a product to user's inventory

1. User starts the App
1. User is presented with the dashboard view
1. User taps on the **Apple products** tab bar item
1. User is presented with the list of Apple products
1. User taps on any Apple product
1. User is presented with a view containing the details about the tapped Apple product
1. User taps on the **Add to inventory** bar button
1. User is presented with the owned product details view

### Display user's inventory

1. User starts the App
1. User is presented with the dashboard view
1. User taps on the **Inventory** navigation item in the tab bar
1. User is presented with a list of Apple products in their inventory

Similarly to the **Apple**'s product list, the user can sort / filter / search for a specific product in their inventory.

### Display details for an Apple product in user's inventory

1. User starts the App
1. User is presented with the dashboard view
1. User taps on the **Inventory** tab bar item
1. User is presented with a list of Apple products in their inventory
1. User taps on any Apple product cell
1. User is presented with a view containing the details about the tapped Apple product

### Edit details for an Apple product in user's inventory

1. User starts the App
1. User is presented with the dashboard view
1. User taps on the **Inventory** tab bar item
1. User is presented with a list of Apple products in their inventory
1. User taps on any Apple product cell
1. User is presented with a view containing the details about the tapped Apple product
1. User taps on the **Edit** bar button
1. User is presented with a modal form containing multiple fields about the product
1. User taps on the **Save** button to persist the changes
1. User taps on the **Cancel** button to cancel the changes

By default, when entering the edit form, the Back bar button will be displayed.

Similarly, the Save button will be disabled when entering the edit form.

If the user make any change to the edit form, the Back bar button will be changed to a Cancel bar button.

Similarly, the Save button will be enabled if any change is made to the edit form.

A warning will be presented if the user taps on the Cancel bar button.

Tapping on the Save bar button will persist the changes.

### Remove an Apple product from user's inventory

1. User starts the App
1. User is presented with the dashboard view
1. User taps on the **Inventory** tab bar item
1. User is presented with a list of Apple products in their inventory
1. User taps on any Apple product cell
1. User is presented with a view containing the details about the tapped Apple product
1. User taps on the **Remove from inventory** bar button

A warning will be presented if the user taps on the **Remove** bar button.

### Create tag

#### From a product in inventory

1. User starts the App
1. User is presented with the dashboard view
1. User taps on the **Inventory** tab bar item
1. User is presented with a list of Apple products in their inventory
1. User taps on any Apple product cell
1. User is presented with a view containing the details about the tapped Apple product
1. User taps on the **Edit** bar button
1. User is presented with a modal form containing multiple fields about the product
1. User taps on the **Tags** cell
1. User is presented with the list of tags
1. User taps on the **Add tag** bar button item
1. User is presented with a modal form asking for a name and a color for the tag

#### From the settings

1. User starts the App
1. User is presented with the dashboard view
1. User taps on the **Settings** tab bar item
1. User is presented with the settings view
1. User taps on the **Tags** cell
1. User is presented with the list of tags
1. User taps on the **Add tag** bar button item
1. User is presented with a modal form asking for a name and a color for the tag

### Assign tag to Apple product in inventory

1. User starts the App
1. User is presented with the dashboard view
1. User taps on the **Inventory** tab bar item
1. User is presented with a list of Apple products in their inventory
1. User taps on any Apple product cell
1. User is presented with a view containing the details about the tapped Apple product
1. User taps on the **Edit** bar button
1. User is presented with a modal form containing multiple fields about the product
1. User taps on the **Tags** cell
1. User is presented with the list of tags
1. User taps on a tag cell

Adding a tag will mark the state as dirty, which will toggle on the **Save** and **Cancel** bar buttons.

### Remove tag from Apple product in inventory

1. User starts the App
1. User is presented with the dashboard view
1. User taps on the **Inventory** tab bar item
1. User is presented with a list of Apple products in their inventory
1. User taps on any Apple product cell
1. User is presented with a view containing the details about the tapped Apple product
1. User taps on the **Edit** bar button
1. User is presented with a modal form containing multiple fields about the product
1. User taps on the **Tags** cell
1. User swipes left on the tag to remove

Removing a tag will mark the state as dirty, which will toggle on the **Save** and **Cancel** bar buttons.
