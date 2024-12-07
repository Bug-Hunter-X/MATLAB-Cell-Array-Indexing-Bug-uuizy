function result = myFunctionCorrected(input)
% This function demonstrates the corrected version of the code, solving the MATLAB bug.
  if ~isempty(input) && ~isempty(input{1})
    result = input{1}(1); % Accessing the first element
  else
    result = [];
  end
end