var twoSum = function(nums, target){
  var saved={}
  var result=[]

  for(var i=0; i< nums.length; i++){
    if(saved.hasOwnProperty(nums[i])){

      result[0] = saved[nums[i]];
      result[1] = i;
    }
    saved[target - nums[i]] = i
  }
  return result;
}

let twoSumAnswer = twoSum([3,2,4],6);
console.log(twoSumAnswer)

//save differences between number and target in another array. 
