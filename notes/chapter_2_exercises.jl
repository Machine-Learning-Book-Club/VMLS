### A Pluto.jl notebook ###
# v0.11.14

using Markdown
using InteractiveUtils

# ╔═╡ c36f8caa-feb9-11ea-3a89-3304fab1eb63
# Exercise 2.2
md"""
10_a1 + 10_a2 + 10_a3 + b = 30

100_a1 + 10_a2 + 10_a3 + b = 60

10_a1 + 100_a2 + 10_a3 + b = 70

10_a1 + 10_a2 + 100_a3 + b = 65
"""

# ╔═╡ 07a076e6-feba-11ea-2f8a-7bf6714c68d1


# ╔═╡ 994b41c0-fea1-11ea-355b-b3c7665fe78a
function has_homogeneity(f, alpha, x) 
	"""
	returns true if the function satisfies homogeneity
 	based on the input function, the alpha scalar, and x vector
	"""

	lhs = f(alpha * x)
	rhs = alpha * f(x)
	return lhs ≈ rhs
end

# ╔═╡ 9744e840-fea1-11ea-06df-4dc17d14bdd7
function has_additivity(f, x, y)
	lhs = f(x + y)
	rhs = f(x) + f(y)
	return lhs ≈ rhs
end

# ╔═╡ 94045602-fea1-11ea-206d-8166b71c443d
function satisfies_superposition(f, alpha, beta, x, y)
	lhs = f(alpha*x + beta*y)
	rhs = alpha*f(x) + beta*f(y)
	
	return lhs ≈ rhs
end

# ╔═╡ 6773b5d2-feb6-11ea-3ea4-0df09377746f
# Median of an n-vector where we assume n = 2k + 1
begin
	using Statistics

	# Linear or not
	h(x) = median(x)
	satisfies_superposition(h, rand(), rand(), rand(20), rand(20))

end

# ╔═╡ df245e66-feb5-11ea-042c-319023aee022
avg(x) = sum(x) / length(x)

# ╔═╡ d9ea5b8a-feb5-11ea-1d0e-1fedead9e6f8
satisfies_superposition(avg, rand(), rand(), rand(20), rand(20))

# ╔═╡ 91f290b8-feb5-11ea-1d8a-094e56811102
begin
	# Linear or Not
	# f(x) = max(x) - min(x)

	f(x) = maximum(x) - minimum(x)
	satisfies_superposition(f, rand(), rand(), rand(20), rand(20))
end

# ╔═╡ 082b7aa6-feb6-11ea-272a-6da564d3a27d
begin
	# Linear or not
	# g(x) = g_n - g_1
	g(x) = last(x) - x[1]
	satisfies_superposition(g, rand(), rand(), rand(20), rand(20))
end

# ╔═╡ f95d8c84-feb6-11ea-050c-e99352de8404


# ╔═╡ 61c0365a-fe9e-11ea-1a14-f7da69a4d5a8
begin
	a = [1, 2, 3, 4]
	2 ∈ a
end

# ╔═╡ 63e32a6a-fec5-11ea-31c1-9f6df59d2fa9
π * 2

# ╔═╡ 68374c68-fec5-11ea-337e-8f9ac686ce07
[1, 2] ⊆ [1, 2, 3]

# ╔═╡ Cell order:
# ╠═c36f8caa-feb9-11ea-3a89-3304fab1eb63
# ╠═07a076e6-feba-11ea-2f8a-7bf6714c68d1
# ╠═994b41c0-fea1-11ea-355b-b3c7665fe78a
# ╠═9744e840-fea1-11ea-06df-4dc17d14bdd7
# ╠═94045602-fea1-11ea-206d-8166b71c443d
# ╠═df245e66-feb5-11ea-042c-319023aee022
# ╠═d9ea5b8a-feb5-11ea-1d0e-1fedead9e6f8
# ╠═91f290b8-feb5-11ea-1d8a-094e56811102
# ╠═082b7aa6-feb6-11ea-272a-6da564d3a27d
# ╠═6773b5d2-feb6-11ea-3ea4-0df09377746f
# ╠═f95d8c84-feb6-11ea-050c-e99352de8404
# ╠═61c0365a-fe9e-11ea-1a14-f7da69a4d5a8
# ╠═63e32a6a-fec5-11ea-31c1-9f6df59d2fa9
# ╠═68374c68-fec5-11ea-337e-8f9ac686ce07
