Module: dylan-user

define library statistics
  use dylan;
  use io;

  export statistics;
end library statistics;

define module statistics
  use dylan;
  use dylan-extensions;
  use format-out;

  export mean;
end module statistics;
