# EllipsisLoadingView
Simply stylish view to indicate loading activity


## Usage ##

An example of how to setup and use an **_EllipsisLoadingView_** instance is shown below:
 
```objective-c
EllipsesLoadingView *loadingView = [[EllipsesLoadingView alloc] initWithFrame:CGRectMake(0, 0, 100, 50)];
loadingView.center = self.view.center;
[self.view addSubview:loadingView];
[loadingView startLoadingIndicator];
```

When your processing/loading activity is complete, you may dismiss the **_EllipsisLoadingView_** by calling ```[loadingView stopLoadingIndicator]```.

That's it!


## Customization ##

**_EllipsisLoadingView_** is a subclass of UIView and so by definition, has all the customizable properties of a UIView (such as ```backgroundColor```, ```alpha```, ```layer``` etc.).

In addition to these properties, the **_EllipsisLoadingView_** also has the following properties:

```objective-c
/**
 * Boolean value indicating whether the EllipsisLoadingView is currently animating or not.
 */
@property (nonatomic, assign) BOOL isAnimating;


/**
 * A floating point number between 0 and 10 controlling the speed at which the EllipsisLoadingView animates.
 */
@property (nonatomic, assign) float animationSpeed;


/**
 * The EllipsisLoadingView loading animation consists of phases where each dot is in a highlighted state
 * and the remaining two dots are in an un-highlighted state.
 *
 * This property specifies the colour of a dot in the highlighted state.
 */
@property (nonatomic, strong) UIColor *highlightedColour;


/**
 * The EllipsisLoadingView loading animation consists of phases where each dot is in a highlighted state
 * and the remaining two dots are in an un-highlighted state.
 *
 * This property specifies the colour of a dot in the un-highlighted state.
 */
@property (nonatomic, strong) UIColor *unHighlightedColour;
```

## Example ##

Below is an example of how to set up and customize an **_EllipsisLoadingView_** instance:

```objective-c
EllipsesLoadingView *loadingView = [[EllipsesLoadingView alloc] initWithFrame:CGRectMake(0, 0, 100, 50)];
loadingView.center = self.view.center;
loadingView.animationSpeed = 10;
loadingView.layer.cornerRadius = 5.0;
loadingView.backgroundColor = [UIColor darkGrayColor];
loadingView.alpha = 0.4;
[self.view addSubview:loadingView];
[loadingView startLoadingIndicator];
```
