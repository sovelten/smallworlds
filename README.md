# Smallworlds
An interactive fiction framework in Pharo Smalltalk

## Installing

###Pharo 4 and above (Using Gitfiletree)

There is more than one way to install the package. I will detail one possibility.

Smallworlds depends on PetitParser and Spec for the GUI window. Spec comes with Pharo 4.
Make sure the dependencies are met.

* Clone the repository on your machine
* Open Pharo VM
* Install GitFileTree from the Configuration Browser in Pharo
* Open Monticello and choose to add repository
* Choose gitfiletree option and select the folder where you cloned the repository
* Choose the most recent Smallworlds package on the repository and load it

## Starting Cloak of Darkness

To open the cloak of darkness sample, execute the following code:

    (AdventureShell world: (CDGameWorld new)) openWithSpec.


