class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        l=0
        r=len(nums)-1
        n=sorted(range(len(nums)), key=lambda k: nums[k])
        for i in range(len(n)):
            if nums[n[l]]+nums[n[r]]== target:
                res = [n[l],n[r]]
                res.sort()
                return res
            elif nums[n[l]]+nums[n[r]]>target:
                r-=1
            else:
                l+=1