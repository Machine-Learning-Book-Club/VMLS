### A Pluto.jl notebook ###
# v0.11.14

using Markdown
using InteractiveUtils

# ╔═╡ e84a40c6-0062-11eb-2dae-c763103dd036
# euclidean_norm(x) is the sqrt of the sum of the squares of a vector
norm(x) = sqrt(x'x)

# ╔═╡ 017cfce4-0063-11eb-236d-5b2fc4140b06
norm([2, 1, -2])

# ╔═╡ 50b7cbe8-0065-11eb-0751-bd7abe776b62
md"""
Other terms for norm are the length of a vector or the magnitude
"""

# ╔═╡ 59a1e5f4-0065-11eb-3a31-6f201fd27ba3
norm(-5), norm(5)

# ╔═╡ 064c6234-0066-11eb-3bbd-ff7a4141e1c1
md"""
## Properties of Norms
1. Non-Negative homogeneity
2. Trianlge Inequality
3. Non-Negativity
4. Definiteness ||x|| = 0 only if x is 0
"""

# ╔═╡ 875816ec-0067-11eb-0f47-df145064950c
rms(x) = norm(x) / sqrt(length(x))

# ╔═╡ a30b86f8-0067-11eb-328e-e1f4cae6dd78
rms([2, 2, 2])

# ╔═╡ f10126a6-0067-11eb-1dc0-5722ec2349c4
# norm of a sum
function norm_of_sum(x, y)
	return sqrt(norm(x)^2 + 2x'y + norm(y)^2)
end

# ╔═╡ 46ab2534-0068-11eb-1cef-59c6b5b89b9a


# ╔═╡ abe56208-0067-11eb-17b8-5181cc034f12


# ╔═╡ c3f68f62-0066-11eb-3b51-5d6164eb4b4f


# ╔═╡ Cell order:
# ╠═e84a40c6-0062-11eb-2dae-c763103dd036
# ╠═017cfce4-0063-11eb-236d-5b2fc4140b06
# ╠═50b7cbe8-0065-11eb-0751-bd7abe776b62
# ╠═59a1e5f4-0065-11eb-3a31-6f201fd27ba3
# ╠═064c6234-0066-11eb-3bbd-ff7a4141e1c1
# ╠═875816ec-0067-11eb-0f47-df145064950c
# ╠═a30b86f8-0067-11eb-328e-e1f4cae6dd78
# ╠═f10126a6-0067-11eb-1dc0-5722ec2349c4
# ╠═46ab2534-0068-11eb-1cef-59c6b5b89b9a
# ╠═abe56208-0067-11eb-17b8-5181cc034f12
# ╠═c3f68f62-0066-11eb-3b51-5d6164eb4b4f
