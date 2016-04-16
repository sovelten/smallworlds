# Smallworlds
An interactive fiction framework in Pharo Smalltalk.

The Framework is based on the Smallworlds package for Dolphin Smalltalk (http://ftp.sunet.se/pub/lang/smalltalk/Dolphin/SmallWorlds/) from Bob Jarvis. But it has changed to the point of becoming something else entirely.

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

    (AdventureShell world: CDGameWorld default) openWithSpec.

## Development

The development branch is currently at http://smalltalkhub.com/#!/~ericvm/Smallworlds. It is being moved to GitHub as it gets more stable.
