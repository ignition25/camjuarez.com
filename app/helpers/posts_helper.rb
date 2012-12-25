module PostsHelper
	def pnext index
		if index > 0
			@posts_hash[index - 1]
		else
			nil
		end
	end

	def pprev index
		if index < @posts_hash.size - 1
			@posts_hash[index + 1]
		else
			nil
		end
	end
end
