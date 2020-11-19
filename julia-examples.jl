### A Pluto.jl notebook ###
# v0.12.10

using Markdown
using InteractiveUtils

# ╔═╡ b09f6422-29fe-11eb-331d-dbc99330ca83
using LinearAlgebra, SparseArrays, Plots

# ╔═╡ 8a92c2de-29fd-11eb-062d-055b727db6bf
md"""
Vectors are equal if they are the same length and have the same entries at the same indices
"""

# ╔═╡ 284113d0-29fe-11eb-1690-87980e340771
# separating elements with semicolon concatenates vectors
# or vcat does the same work
[[1, 2, 3]; [4, 5, 6]] == vcat([1, 2, 3], [4, 5, 6])

# ╔═╡ 6ac676cc-29ff-11eb-2bf4-b329f3f34084
# nnz appears to only be defined on sparse vectors
nnz(sparsevec( [1, 2], [ 1.0, -1.0 ], 10^6 ))

# ╔═╡ c960d29c-29ff-11eb-16d2-c526f2d42d34
# histogram([0, 1, 2, 2, 3, 3, 3, 4, 4, 4, 4])

# ╔═╡ 91dbf22e-2a05-11eb-0c70-71b2689687e0
# Sum up all the elements of the vector x
sum(x) = ones(length(x))'x

# ╔═╡ 930b4a94-2a05-11eb-08bd-31bf7c6f34e9
average(x) = (ones(length(x))/length(x))'x

# ╔═╡ 96616522-2a05-11eb-048f-d98d6967bdc7
sum_of_squares(x) = x'x

# ╔═╡ b6956cee-2a05-11eb-0f96-e55faa5b00a4
# some_score = weights'features

# ╔═╡ ce91e486-2a04-11eb-31ce-456cbc7ed561
md"""
## Identity and Property Functions
- commutative
- associative
- homogeneity
- additivity
"""

# ╔═╡ f558cc96-2a00-11eb-1330-5fddb8d08919
is_commutative(a, b) = a + b ≈ b + a

# ╔═╡ 11fa5e3c-2a01-11eb-3dd7-1955bc1ff059
is_associative(a, b, c) = (a + b) + c ≈ a + (b + c)

# ╔═╡ 4fe5dbc6-2a02-11eb-0a5a-27744f3312be
function has_homogeneity(func, scalar, vector) 
	lhs = func(scalar * vector)
	rhs = scalar * func(vector)
	return lhs ≈ rhs
end

# ╔═╡ 4fcc1074-2a02-11eb-38ad-5df83179fded
function has_additivity(func, x, y)
	"""
	x and y are vectors of the same length
	"""
	lhs = func(x + y)
	rhs = func(x) + func(y)
	return lhs ≈ rhs
end

# ╔═╡ 445aee46-2a06-11eb-3665-6ffafc54ae40
function has_superposition(func, alpha, beta, x, y)
	lhs = func(alpha * x + beta * y)
	rhs = alpha * func(x) + beta * func(y)
	return lhs ≈ rhs
end

# ╔═╡ 86860044-2a06-11eb-37e1-eb8548cdd10e
function is_linear(func, alpha, x, y)
	# is_linear is true if the function satisfies superposition
	# x and y are vectors, alpha is a scalar
	return has_homogeneity(func, alpha, x) && has_additivity(func, x, y)
end

# ╔═╡ 396855f2-2a13-11eb-1bc8-350b15cd04c5


# ╔═╡ Cell order:
# ╠═b09f6422-29fe-11eb-331d-dbc99330ca83
# ╠═8a92c2de-29fd-11eb-062d-055b727db6bf
# ╠═284113d0-29fe-11eb-1690-87980e340771
# ╠═6ac676cc-29ff-11eb-2bf4-b329f3f34084
# ╠═c960d29c-29ff-11eb-16d2-c526f2d42d34
# ╠═91dbf22e-2a05-11eb-0c70-71b2689687e0
# ╠═930b4a94-2a05-11eb-08bd-31bf7c6f34e9
# ╠═96616522-2a05-11eb-048f-d98d6967bdc7
# ╠═b6956cee-2a05-11eb-0f96-e55faa5b00a4
# ╠═ce91e486-2a04-11eb-31ce-456cbc7ed561
# ╠═f558cc96-2a00-11eb-1330-5fddb8d08919
# ╠═11fa5e3c-2a01-11eb-3dd7-1955bc1ff059
# ╠═4fe5dbc6-2a02-11eb-0a5a-27744f3312be
# ╠═4fcc1074-2a02-11eb-38ad-5df83179fded
# ╠═445aee46-2a06-11eb-3665-6ffafc54ae40
# ╠═86860044-2a06-11eb-37e1-eb8548cdd10e
# ╠═396855f2-2a13-11eb-1bc8-350b15cd04c5
