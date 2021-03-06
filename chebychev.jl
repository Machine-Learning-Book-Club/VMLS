### A Pluto.jl notebook ###
# v0.12.15

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : missing
        el
    end
end

# ╔═╡ e2d3d3d8-3f43-11eb-02de-1d42b03957ef
avg(x) = sum(x) / length(x)

# ╔═╡ 8a061a1a-3f46-11eb-16bc-1195129fbe8b
# Norm of a vector is the sqrt of the sum of its members squared
norm(x) = sqrt(x'x)

# ╔═╡ 3cae241a-3f46-11eb-2815-4dd7e638b203
rms(x) = norm(x) / sqrt(length(x))

# ╔═╡ 093ecaf8-3f5f-11eb-07a6-0795f7bb7f4c
std(x) = (norm(x .- avg(x))) / sqrt(length(x))

# ╔═╡ 1d6d61b0-3f5f-11eb-104e-8b6098a3449b
std([1, 1, 1, 11.001])

# ╔═╡ d2cccaec-3f5e-11eb-1c08-c7d7175ba13e
rms([1, 1, 1, 1, 1])

# ╔═╡ d8543a9a-3f5e-11eb-09bb-212f580fcb72
rms(zeros(20))

# ╔═╡ df42635c-3f5e-11eb-0396-016a0e0c5e43
rms([zeros(10); [1, 2, 3]])

# ╔═╡ f033cd4c-3f5e-11eb-000b-b397d7b6a5e5
avg([zeros(10); [1, 2, 3]])

# ╔═╡ f4130004-3f5e-11eb-0f2c-efa9bc091f16
std([zeros(10); [1, 2, 3]])

# ╔═╡ 6f71a660-3f5f-11eb-3aaa-59c82c1446a4
avg([1, 2, 3]) <= rms([1, 2, 3])

# ╔═╡ 912adb0c-3f5f-11eb-1542-09650e2cc8f2
avg(zeros(10)) <= rms(zeros(10))

# ╔═╡ a5c5ec9e-3f5f-11eb-2e10-87989fa9f511
avg(ones(100)), rms(ones(100))

# ╔═╡ b3fcf7c6-3f5f-11eb-1256-c1a05a53e673
std(ones(100))

# ╔═╡ 331ba3aa-3f50-11eb-3e9c-198a851b584e
function get_cheby(x, a)
	"""
	returns the number of entries of the vector with abs() >= a
	"""
	
	# Define the Chebychev bound function
	
	# number of entries of x with abs(x_i) >= a
	num_entries = sum(abs.(x) .>= a)
	
	return num_entries
end

# ╔═╡ ad673dc4-40cf-11eb-0fa7-dbbfc53f66c2
a = [1, 2, 3, 4, 5, 6, 7]

# ╔═╡ b736b872-40cf-11eb-34a4-59f1fd01fe7c
get_cheby(a, 3)	

# ╔═╡ 7fbf7060-3f50-11eb-0fba-2931fcc14fb3
md"""
# Exercise 3.7 Chebychev indequality
Chebyshev inequality. 
- Suppose x is a 100-vector with rms(x) = 1. 
- What is the maximum number of entries of x that can satisfy |xi| ≥ 3? If your answer is k, explain why no such vector can have k + 1 entries with absolute values at least 3, and give an example of a specific 100-vector that has RMS value 1, with k of its entries larger than 3 in absolute valu
"""

# ╔═╡ 2651d4b6-3f53-11eb-3fa0-eff9f54beaf3
# a = [1, 2, 3, 4, 5, 5, 5, 5, 5, 5, 5, 200]
# Setup a binomial distribution
# setup a normal
# setup a super skewed


# ╔═╡ 9e36d2de-3f52-11eb-0942-4ffd9515bc09
@bind x html"<input type=range>"

# ╔═╡ 9e0ee490-3f52-11eb-2c2b-3b615036074c
get_chebychev(a, x)

# ╔═╡ ef9ef650-3f53-11eb-1fba-23f2eaf92191
x

# ╔═╡ 6dadb310-40d2-11eb-1491-9d699b1914ea


# ╔═╡ 6d992556-40d2-11eb-2127-79898f0d4009


# ╔═╡ 6d7da0ec-40d2-11eb-3138-b525bface9a5
# chebyshev  inequality to get number of entries <= a
function number_of_entries_greater_than_equal_to(x, a)
	"""
	returns the number of entries of the vector with abs() >= a
	"""
		
	# number of entries of x with abs(x_i) >= a
	num_entries = sum(abs.(x) .>= a)
	
	return num_entries
end

# ╔═╡ 6d61a1d0-40d2-11eb-0329-ddda546a2e19
number_of_entries_greater_than_equal_to([0, 0, 0, 0, 5], 3.5)

# ╔═╡ 6d17cc68-40d2-11eb-2f28-c306f46a1dbe
number_of_entries_greater_than_equal_to([1, 2, 3, 4, 5], 0)

# ╔═╡ 21b7f530-40d3-11eb-07c9-d70dd92c224b
floor(norm([0, 0, 0, 0, 5])^2/3.5)

# ╔═╡ f16a5c4c-40cf-11eb-3c49-45ed03ba2b3f
function cheb_bound(x, a) 
	return floor(norm(x)^2/a)
end

# ╔═╡ 1c74c8be-40d3-11eb-114b-693d0807d79e
function cheb_bound(x,a)
	return floor(norm(x)^2/a)
end

# ╔═╡ Cell order:
# ╠═e2d3d3d8-3f43-11eb-02de-1d42b03957ef
# ╠═8a061a1a-3f46-11eb-16bc-1195129fbe8b
# ╠═3cae241a-3f46-11eb-2815-4dd7e638b203
# ╠═093ecaf8-3f5f-11eb-07a6-0795f7bb7f4c
# ╠═1d6d61b0-3f5f-11eb-104e-8b6098a3449b
# ╠═d2cccaec-3f5e-11eb-1c08-c7d7175ba13e
# ╠═d8543a9a-3f5e-11eb-09bb-212f580fcb72
# ╠═df42635c-3f5e-11eb-0396-016a0e0c5e43
# ╠═f033cd4c-3f5e-11eb-000b-b397d7b6a5e5
# ╠═f4130004-3f5e-11eb-0f2c-efa9bc091f16
# ╠═6f71a660-3f5f-11eb-3aaa-59c82c1446a4
# ╠═912adb0c-3f5f-11eb-1542-09650e2cc8f2
# ╠═a5c5ec9e-3f5f-11eb-2e10-87989fa9f511
# ╠═b3fcf7c6-3f5f-11eb-1256-c1a05a53e673
# ╠═f16a5c4c-40cf-11eb-3c49-45ed03ba2b3f
# ╠═331ba3aa-3f50-11eb-3e9c-198a851b584e
# ╠═ad673dc4-40cf-11eb-0fa7-dbbfc53f66c2
# ╠═b736b872-40cf-11eb-34a4-59f1fd01fe7c
# ╠═7fbf7060-3f50-11eb-0fba-2931fcc14fb3
# ╠═2651d4b6-3f53-11eb-3fa0-eff9f54beaf3
# ╠═9e0ee490-3f52-11eb-2c2b-3b615036074c
# ╠═9e36d2de-3f52-11eb-0942-4ffd9515bc09
# ╠═ef9ef650-3f53-11eb-1fba-23f2eaf92191
# ╠═6dadb310-40d2-11eb-1491-9d699b1914ea
# ╠═6d992556-40d2-11eb-2127-79898f0d4009
# ╠═6d7da0ec-40d2-11eb-3138-b525bface9a5
# ╠═6d61a1d0-40d2-11eb-0329-ddda546a2e19
# ╠═6d17cc68-40d2-11eb-2f28-c306f46a1dbe
# ╠═1c74c8be-40d3-11eb-114b-693d0807d79e
# ╠═21b7f530-40d3-11eb-07c9-d70dd92c224b
