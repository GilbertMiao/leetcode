# https://leetcode.com/problems/best-time-to-buy-and-sell-stock-ii/
# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    profit = 0
    for i in 1..prices.size do
        break if i == prices.size
        gap = prices[i] - prices[i-1].to_i
        if gap > 0
            profit +=gap
        end
    end
    profit
end