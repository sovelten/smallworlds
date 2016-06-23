# Smallworlds
An interactive fiction framework in Pharo Smalltalk.

The Framework is based on the Smallworlds package for Dolphin Smalltalk (http://ftp.sunet.se/pub/lang/smalltalk/Dolphin/SmallWorlds/) from Bob Jarvis. But it has changed to the point of becoming something else entirely.

## Installing

There is more than one way to install the package. The easier way is using Metacello.

### Using Metacello

Open the Playground and execute the following command:

    Metacello new
	    repository: 'github://ericvm/smallworlds';
	    baseline: 'Smallworlds';
	    load.

### Using Gitfiletree (For development)

Smallworlds depends on PetitParser and Spec for the GUI window. Spec comes with Pharo 4 and above.
Make sure the dependencies are met.

* Clone the repository on your machine
* Open Pharo VM
* Install PetitParser from the Catalog Browser
* Install GitFileTree from the Catalog Browser
* Open Monticello and choose to add repository
* Choose gitfiletree option and select the folder where you cloned the repository
* Choose the most recent Smallworlds package on the repository and load it

## Starting Cloak of Darkness

To open the cloak of darkness sample, execute the following code:

    (AdventureShell world: CDGameWorld new) openWithSpec.

## Development

The development branch is currently at ```http://smalltalkhub.com/#!/~ericvm/Smallworlds```. I don't recommend using it, though, it is often unstable. I commit to GitHub when it gets stable enough.
