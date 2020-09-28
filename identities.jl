### A Pluto.jl notebook ###
# v0.11.14

using Markdown
using InteractiveUtils

# ╔═╡ f96d46f8-fc66-11ea-3668-9b5a98c69713
md"""
# Identities
"""

# ╔═╡ 12aa5cd2-fc67-11ea-11fb-55bc3127e940
# is_commutative(a, b)


# ╔═╡ e2618652-fdb2-11ea-30e9-2f5d20311f20
# has_left_distributivity

# ╔═╡ d374f046-fdb2-11ea-29d5-6b422406b078
# has_homogeneity

# ╔═╡ d4e37382-fdb2-11ea-388b-7f23c0c6ff63
# has_additivityb

# ╔═╡ 37f809be-fdb4-11ea-1729-910ea04a6ba8
### Superposition Equality
#### $f(\alpha x + \beta y) = \alpha f(x) + \beta f(y)$

# ╔═╡ 0d8e717a-fdb4-11ea-3b1e-61fc2bf697b8
function has_homogeneity(f, alpha, x) 
	"""
	returns true if the function satisfies homogeneity
 	based on the input function, the alpha scalar, and x vector
	"""

	lhs = f(alpha * x)
	rhs = alpha * f(x)
	return lhs ≈ rhs
end

# ╔═╡ 80734794-fe9f-11ea-1b86-bdb9bb3ff06d
function has_additivity(f, x, y)
	lhs = f(x + y)
	rhs = f(x) + f(y)
	return lhs ≈ rhs
end

# ╔═╡ e2c1c77c-fe9f-11ea-395a-b181c814c4a0
function satisfies_superposition(f, alpha, beta, x, y)
	lhs = f(alpha*x + beta*y)
	rhs = alpha*f(x) + beta*f(y)
	
	return lhs ≈ rhs
end

# ╔═╡ 4ee8d46e-fe9f-11ea-0b25-ab5e31226043
avg(x) = sum(x) / length(x)

# ╔═╡ 71284186-fe9f-11ea-116e-4f3e5c8c6b83
a = rand(10)

# ╔═╡ 7128847a-fe9f-11ea-0f97-ddaedd4fccd3
alpha = rand(Int)

# ╔═╡ 6e56a6e6-fe9f-11ea-0f30-0bf8a3d15879
has_homogeneity(avg, alpha, a)

# ╔═╡ 55cc0764-fea0-11ea-2865-17078f59deff
satisfies_superposition(avg, 2, 3, rand(3), [2, 2, 2])

# ╔═╡ 2fb65dfa-fea1-11ea-0076-b52c2adeaafb
phi([1, 1, 0])

# ╔═╡ 1072e3da-fea1-11ea-23ef-bdc2efdc06dc
satisfies_superposition(avg, 3, 3, [1, 1, 1], ones(3))	

# ╔═╡ Cell order:
# ╠═f96d46f8-fc66-11ea-3668-9b5a98c69713
# ╠═12aa5cd2-fc67-11ea-11fb-55bc3127e940
# ╠═e2618652-fdb2-11ea-30e9-2f5d20311f20
# ╠═d374f046-fdb2-11ea-29d5-6b422406b078
# ╠═d4e37382-fdb2-11ea-388b-7f23c0c6ff63
# ╠═37f809be-fdb4-11ea-1729-910ea04a6ba8
# ╠═0d8e717a-fdb4-11ea-3b1e-61fc2bf697b8
# ╠═80734794-fe9f-11ea-1b86-bdb9bb3ff06d
# ╠═e2c1c77c-fe9f-11ea-395a-b181c814c4a0
# ╠═4ee8d46e-fe9f-11ea-0b25-ab5e31226043
# ╠═71284186-fe9f-11ea-116e-4f3e5c8c6b83
# ╠═7128847a-fe9f-11ea-0f97-ddaedd4fccd3
# ╠═6e56a6e6-fe9f-11ea-0f30-0bf8a3d15879
# ╠═55cc0764-fea0-11ea-2865-17078f59deff
# ╠═2fb65dfa-fea1-11ea-0076-b52c2adeaafb
# ╠═1072e3da-fea1-11ea-23ef-bdc2efdc06dc
