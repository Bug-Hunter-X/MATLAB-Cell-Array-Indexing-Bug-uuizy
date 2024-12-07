function result = myFunction(input)
% This function demonstrates an uncommon MATLAB bug related to incorrect use of logical indexing with cell arrays.
  if ~isempty(input)
    % Attempting to access the first element of an empty cell array will result in an error
      if isempty(input{1})
          result = [];
      else
          result = input{1}(1); % Accessing the first element
      end
  else
    result = [];
  end
end