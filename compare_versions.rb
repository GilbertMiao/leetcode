# https://leetcode.com/problems/compare-version-numbers/
# @param {String} version1
# @param {String} version2
# @return {Integer}
def compare_version(version1, version2)
    v1 = version1.split('.').collect(&:to_i)
    v2 = version2.split('.').collect(&:to_i)
    while v1.length < v2.length
        v1.push(0)
    end
    while v2.length < v1.length
        v2.push(0)
    end
    for pair in v1.zip(v2)
        diff = pair[0] <=> pair[1]
        return diff if diff != 0
    end
    return 0
end