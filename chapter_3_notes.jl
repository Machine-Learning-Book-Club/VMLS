### A Pluto.jl notebook ###
# v0.12.3

using Markdown
using InteractiveUtils

# ╔═╡ 607a9ade-043d-11eb-1523-0d0426f39f8a
using LinearAlgebra

# ╔═╡ e84a40c6-0062-11eb-2dae-c763103dd036
# euclidean_norm(x) is the sqrt of the sum of the squares of a vector
norm(x) = sqrt(x'x)

# ╔═╡ 017cfce4-0063-11eb-236d-5b2fc4140b06
norm([2, 1, -2])

# ╔═╡ 064c6234-0066-11eb-3bbd-ff7a4141e1c1
md"""
## Properties of Norms
1. Non-Negative homogeneity: $norm(scalar * vector) = abs(scalar) * norm(vector)$
2. Trianlge Inequality: $norm(x + y) <= norm(x) + norm(y)$
3. Non-Negativity: $norm(x) >= 0$
4. Definiteness $||x|| = 0$ only if x is 0
"""

# ╔═╡ c70488e2-0db5-11eb-392e-0badde64e743
md"""
Root-mean-square value (RMS) is $||x|| ÷ √n$
"""

# ╔═╡ 875816ec-0067-11eb-0f47-df145064950c
rms(x) = norm(x) / sqrt(length(x))

# ╔═╡ a30b86f8-0067-11eb-328e-e1f4cae6dd78
rms([1, 1, 1, 1, 1])

# ╔═╡ fbae8af2-0db5-11eb-101f-b555c7cbe6cd
rms([0, 1])

# ╔═╡ ff92d61e-0db5-11eb-2218-df1d800def1d
rms([0, 0, 0])

# ╔═╡ f10126a6-0067-11eb-1dc0-5722ec2349c4
# # norm of a sum is inner-product FOIL, yo!

# = (x + y)'(x + y)
# = x'x + x'y + y'x + y'y
# = norm(x)^2 + 2x'y + norm(y)^y

norm_of_a_sum(x, y) = (x + y)'(x + y)

# ╔═╡ 95940c20-0db6-11eb-1d78-e11d3b173f51
begin
	a = [1, 2, 3, 4, 5]
	b = [3, 2, 1, 0, 0]
	q = a + b
	
	c = q'q
	
	d = a'a + a'b + b'a + b'b
	
	e = norm(a)^2 + 2(a'b) + norm(b)^2
	
	f = a'a + 2a'b + b'b
	
	c == d == e == f
end

# ╔═╡ 46ab2534-0068-11eb-1cef-59c6b5b89b9a
# Non-negative homogeneity
function non_negative_homogeneity(scalar, vector)
	lhs = norm(scalar * vector)
	rhs = norm(scalar) * norm(vector)
	return lhs ≈ rhs
end

# ╔═╡ abe56208-0067-11eb-17b8-5181cc034f12
# Triangle Inequality

function has_triangle_inequality(x, y)
	lhs = norm(x + y)
	rhs = norm(x) + norm(y)
	return lhs <= rhs
	
end

# ╔═╡ c3f68f62-0066-11eb-3b51-5d6164eb4b4f
# Definiteness
function has_definiteness(x)
	return norm(x) == 0 
end

# ╔═╡ 68791f62-043d-11eb-05f3-eb8c472ab377
norm([1, 2, 3])

# ╔═╡ 7d46f16c-043d-11eb-3125-77d5979e2fa2
dist(x, y) = norm(x - y)

# ╔═╡ 7f5e81dc-0cef-11eb-064f-59af6cb62a16
dist(a, b)

# ╔═╡ 8dbc5852-043d-11eb-066c-73f12b19c041
norm(a - b) == dist(a, b)

# ╔═╡ 7fa75ce4-043d-11eb-3a43-871e2496e992
dist(a, b)

# ╔═╡ 761cab2a-043d-11eb-348c-3504cb6b1682
md"""
# Exercises for Chapter 3
"""

# ╔═╡ 779b9a72-0ce6-11eb-3d10-8b9f02c2d217
md"""
Question: What is the distance between two boolean vectors?

Answer: The square root of the number of differing elements
"""

# ╔═╡ 825fb18a-0ce3-11eb-116c-979a2eadc303
dist([0, 0, 0, 0], [1, 1, 1, 1])

# ╔═╡ 95d2716c-0ce3-11eb-026e-49f9319dd630
norm([1, 1, 1, 1] - [0, 0, 0, 0])

# ╔═╡ 8cecbb02-0ce3-11eb-3ddd-29d592369122
dist([0, 0], [1, 1])

# ╔═╡ Cell order:
# ╠═e84a40c6-0062-11eb-2dae-c763103dd036
# ╠═017cfce4-0063-11eb-236d-5b2fc4140b06
# ╟─064c6234-0066-11eb-3bbd-ff7a4141e1c1
# ╟─c70488e2-0db5-11eb-392e-0badde64e743
# ╠═875816ec-0067-11eb-0f47-df145064950c
# ╠═a30b86f8-0067-11eb-328e-e1f4cae6dd78
# ╠═fbae8af2-0db5-11eb-101f-b555c7cbe6cd
# ╠═ff92d61e-0db5-11eb-2218-df1d800def1d
# ╠═f10126a6-0067-11eb-1dc0-5722ec2349c4
# ╠═95940c20-0db6-11eb-1d78-e11d3b173f51
# ╠═46ab2534-0068-11eb-1cef-59c6b5b89b9a
# ╠═abe56208-0067-11eb-17b8-5181cc034f12
# ╠═c3f68f62-0066-11eb-3b51-5d6164eb4b4f
# ╠═607a9ade-043d-11eb-1523-0d0426f39f8a
# ╠═68791f62-043d-11eb-05f3-eb8c472ab377
# ╠═7f5e81dc-0cef-11eb-064f-59af6cb62a16
# ╠═7d46f16c-043d-11eb-3125-77d5979e2fa2
# ╠═8dbc5852-043d-11eb-066c-73f12b19c041
# ╠═7fa75ce4-043d-11eb-3a43-871e2496e992
# ╟─761cab2a-043d-11eb-348c-3504cb6b1682
# ╟─779b9a72-0ce6-11eb-3d10-8b9f02c2d217
# ╠═825fb18a-0ce3-11eb-116c-979a2eadc303
# ╠═95d2716c-0ce3-11eb-026e-49f9319dd630
# ╠═8cecbb02-0ce3-11eb-3ddd-29d592369122
