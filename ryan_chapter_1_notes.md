## Vocabulary and definitions
- Vector - ordered finite list of scalars
- Elements (entries, coefficients, components) of a vector are the values in the array
- Size is the number of elements in the array (also called dimension or length)
- A vector of size n is called an n-vector
- n<sub>i</sub> signifies the i-th element of the vector (index starting at 1)
- <b>R</b> means the set of all real numbers
- <b>R</b><sup>2</sup> denotes the set of all real n-vectors
- Indexing in Linear Algebra, by definition, starts at 1
- Zero vector is a vector will all elements `0`. so `0 == [0, 0, 0, 0, 0]`
- Ones vector is a vector containing only 1s. 
- Unit vector - a standard unit vector is a vector with all elements equal to zero except for one element which is equal to one.
- Sparsity - a vector mostly composed of zeros.
- Sparsity pattern is the set of indeces of nonzero entries.

## Fundamental Properties of Vectors
- Vector addition is _commutative_, meaning a + b = b + a
- Vector addition is associative (a + b) + = a + (b + c)
- `a + 0 = 0 + a = a`. Adding the zero vector has no effect.
- `a - a = 0`. Subtracting a vector from itself yields zero.
- Scalar multiplication is commutative. `3 * a = a * 3.`
- Scalar multiplication is associative. If a is a vector then `(3*4)*a = 3(4 * a)`
- Left distributive property of scalar-vector multiplication is `(3 + 4) * a = 3a + 4a`
- Inner products have the following properties:
    - Commutative property `a.dot(b) = b.dot(a)`
    - Associativity with scalar multiplication `(3a).dot(b) = 3(a.dot(b))`
    - Distributivity with vector addition `(a + b).dot(c) = a.dot(c) + b.dot(c)`

    
## Heads up!
The 1-vector `[3.3]` is equivalent to the scalar `3.3`.

## Operations
- Equality of two vectors occurs when both have the same elements at the same index.
- Subvectors a<sub>r:s</sub> = a<sub>r</sub>, ..., a<sub>s</sub>s

## Unit Vectors
- `[1, 0, 1]`, `[1, 0]`, `[0, 0, 0, 0, 1]` are each unit vectors
- (e<sub>i</sub>)<sub>j</sub> = {1: j=i, 0: j!=i}


## Examples of using an n-vector to represent n quantities or values
- An n-vector can be used to represent n quantities or values in an application. 
- Location or position
    - For instance, (latitude, longitude) is a 2-D vector.
    - A 3-Vector is used to representa  location or position of a point in 3-D space
    - The entries of a vector give the coordinates of the position or location
    - `[29.4241, 98.4936]` is San Antonio, where the first element is North latitude and the 2nd element is longitude West.
- Displacement
    - A vector can be used to represent displacement in a plane or 3-D space
    - Displacement is typically drawn with an arrow
    - A vector can be used to represent velocity or acceleration, at a given time of a point that moves in a plane.
- Color 
    - A 3-vector can represent color with entried Red, Gree, Blue
    - [0, 0, 0] is black and [0, 1, 0] is blue, etc...
    - Color could be RGB or Hue Saturation Value or other means
- Quantities
    - an n-vector can represeetn the amounts or quantities of n different resources or products held, produced, or required.
    - negative entries mean an amount owed, consumed, or to be disposed of
    - For example, a "bill of materials" is a vector that gives the amounts of n resources required to create a product or carry out a task.
    - `ingredients = ["avocado", "onion", "jalapeño"]` and `quantities = [4, 1, 1]`
- Portfolio
    - An n-vector named `s` can represent a stock portfolio or investment in n-different assets with n<sub>i</subm> giving the number of shares of asset `i` held.
    - The vector (100, 50, 200) represents a portfolio consisting of 100 shares of asset 1, 50 shares of asset, and 200 shares of asset 3. 
    - Short positions are negative values
    - The entries of the portfolio vector can be denoted in dollars, units, shares, or fractions of dollars.
- Values across a population
    - An n-vector can give the values of some quantity across a population of individuals
    - An n-vector `b` can give the blood pressure of a collection of n amount of patients with b<sub>i</sub> the blood pressure of patient `i`. 
- Proportions
    A vector `w` can be used to give fractions or proportions out of `n` choices, outcomes, or options.
    - w<sub>i</sub> is the fraction with the choice or outcome of `i`.
    - A uniform mixture of 4 outcomes is represented as the 4-vector `(1/4, 1/4, 1/4, 1/4)`
    - The odds of a fair coin would be represented by the 2-vector `(1/2, 1/2)`, etc..
- Time series
    - An n-vector can represent a time series or "signal", that is, the value of some quantity at different times.
    - The entrires in a vector representing time series are sometiems called "samples"
    - An audio signal can be represented as a vector whose entries give the value of acoustic pressure at equally spaced times.
    - A vector could give hourly rainfall, or temperature, or barometric pressure at some location over some time period
- Daily Return
    - A vector can represent the daily return of a stock, its fractionali increase/decrease in value over the day
    - The vector (-0.02, +0.01, +0.05) means a stock went down 2% on the first day, up one percent on the 2nd day, and then up another 5% on the 3rd day.
    - If the example is for a stock market, then non-trading days are empty and not accounted for
    - A vecctor can represent daily, quarterly, hourly, yearly, minute-by-minute values 
    - The vector can measure interest, price, volume, etc...
- Cash Flow
    - A cash flow into and out of an entity (like a company, fund, or account) can be represented by a vector
    - For example, with entries giving cash flow each quarter, the vector (1000, -10, -10, -10, -1010) represents a one year loan of $1000 with 1% interest only payments made each quarter, and the principle and last interest payment at the end.
    - With 31 entries of (10, 10, ... 10), this vector could show inflows of ten dollars a day into an account for a parking lot spot. The payee's vector would be the 31-vector consising of (-10, -10, ... -10)
- Images
    - A monochrome image is the array of length M x N pixels, with M rows and N columns. Each of the MxN pixels has a grayscale or intensity value 0 for black and 1 for white, with greys in-between. 
    - For an 8 by 8 pixel image, the associated 64-vector would be (0.64, 0.05, )
    - The color M x N pixel image is described by a vector of length 3MN with the entries giving the RGB values for each pixel
    - A low-resolution image of chessboard would be the 64-vector (0, 1, 0, 1, 0, 1, etc...), with entries arranged row-wise or column-wise
- Video
    - A monochrome video is a sequence of length K of images with M x N pixels and can be represented by a vector of lengths K*M*N
- Word count and histogram
    - A vector of length n can represent the number of times each word in a dictionary of n words appears in a document.
    - For example, (25, 2, 0) means the first dictionary word shows up 25 times, the second word shows up twice, and the 3rd word in the dictionary doesn't show up in the document at all
    - A variation is to have the entries of the vector give the percentage of times that word shows up in the document.
- Customer purchases
    - An n-vector `p` can be used to record a particular customer's purchases from some business over time, with p<sub>i</sub> the quantity of item `i` the customer has purchased . 
    - In one variation $p_i$ represents the total dollar value of item $i$ the customer has purchased
- Occurence or subsets
    - An n-vector `o` can be used to record whether or not each of `n` different events has occurred, with $o_i = 0$ meaning that event $i$ did not occur and $o_i = 1$ meaning the event did occur. 
    - Such a vector encodes a subset of a collection of $n$ objects, with $o_i = 1$ meaning that the object $i$ is contained in the subset and $o_i = 0$ meaning it's not present.
    - The vectors are called Boolean.
- Features or attributes
    - A vector collects together n different quantities that pertain to a single thing or objects.  The quantities can be measurements or quantities that  an be measured or derived from the object
    - This is called a "feature vector" and its entries are the features or attributes. 
    - The 6-vector `f` could give the age, height, weight, blood, pressure, temperature, and gender of a hospital patient. In this example, the quantities represented by the entries of the vector are quite different w/ different physical units.
- Vector Entry Labels
    - It's common to keep a separate list of labels or tags that explain or annotate the meaning of vector entires.
    - For example, we may take the portfolio vector (100, 20, 300) with the ticker symbols (AAPL, INTC, AMZN) so we know that assets 1, 2, and 3, are Apple, Intel, and Amazon


